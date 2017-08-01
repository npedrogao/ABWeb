using Core.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using EnumExtensions;

namespace Core.DataWrapper
{
    public static class Db2DAL
    {
        public static DataTable GetDb2Table(TabelaEnum tabela, OdbcDbConnection dbConnection, params string [] colunas)
        {
            DataTable dataTable = new DataTable();

            if (tabela == TabelaEnum.NULL)
                throw new ArgumentException("Necessário indicar tabela DB2!");
            
            dataTable.Load(dbConnection.ExecSql(SelectFromTable(tabela, colunas)));

            return dataTable;
        }
        /// <summary>
        /// Gets a list of Key-Values for a given column name and description.
        /// </summary>
        /// <param name="tabela">from Table</param>
        /// <param name="dbConnection">server instance</param>
        /// <param name="idColName">name</param>
        /// <param name="idColDesc">description</param>
        /// <returns></returns>
        public static List<KeyValuePair<string, string>> GetDb2Lst(TabelaEnum tabela, OdbcDbConnection dbConnection, string idColName, string idColDesc)
        {
            List<KeyValuePair<string, string>> lst = new List<KeyValuePair<string, string>>();

            if (tabela == TabelaEnum.NULL)
                throw new ArgumentException("Necessário indicar tabela DB2!");

            if (string.IsNullOrWhiteSpace(idColName))
                throw new ArgumentException("Necessário indicar idColName!");

            if (string.IsNullOrWhiteSpace(idColName))
                throw new ArgumentException("Necessário indicar idColDesc!");

           
            string [] lista = { idColName?.ToString(), idColDesc?.ToString() };
            
            var reader = dbConnection.ExecSql(SelectFromTable(tabela, lista));

            while (reader.Read())
            {
                lst.Add(new KeyValuePair<string, string>(reader[idColName].ToString(), reader[idColDesc].ToString()));
            }
            
            return lst.OrderBy(l => l.Value).ToList();
        }

        public static List<ErrorCodeModel> GetErrorCodeByHelpId(OdbcDbConnection dbConnection, string filter)
        {
            if (string.IsNullOrWhiteSpace(filter))
                throw new ArgumentException("Necessário indicar COPCAO!");

            List<ErrorCodeModel> lst = new List<ErrorCodeModel>();

            StringBuilder query = new StringBuilder();
            query.Append("SELECT ");
            query.Append("CODERRO").Append(", ").Append("MENSAGEM").Append(", ").Append("COPCAO");
            query.Append(" FROM ");
            query.Append("DB2PTUSER.");
            query.Append(TabelaEnum.AB_WEB_CORE_ERRORCODES.GetDesc());
            query.Append(" WHERE ").Append("COPCAO").Append( "=").Append("'").Append(filter).Append("'");

            var reader = dbConnection.ExecSql(query.ToString());

            while (reader.Read())
            {
                ErrorCodeModel erro = new ErrorCodeModel();
                erro.CodigoErro = (int)reader["CODERRO"];
                erro.Mensagem = reader["MENSAGEM"]?.ToString();
                erro.Help = reader["COPCAO"]?.ToString();

                lst.Add(erro);
            }

            return lst;
        }

        private static string SelectFromTable (TabelaEnum tabela, params string[] colunas)
        {
            StringBuilder query = new StringBuilder();
            query.Append("SELECT ");

            if (colunas?.Length > 0)
            {
                foreach (string coluna in colunas)
                {
                    query.Append(coluna.Trim());
                    query.Append(", ");
                }
                query.Remove(query.Length - 2, 2);
            }
            else
            {
                query.Append(" * ");
            }

            query.Append(" FROM ");
            query.Append("DB2PTUSER.");
            query.Append(tabela.GetDesc());

            return query.ToString();
        }

        private static string SelectFromTableWithOrderBy(TabelaEnum tabela, string orderBy, params string[] colunas)
        {
            if (string.IsNullOrWhiteSpace(orderBy))
                throw new ArgumentNullException(orderBy);

            StringBuilder query = new StringBuilder();
            query.Append("SELECT ");

            if (colunas?.Length > 0)
            {
                foreach (string coluna in colunas)
                {
                    query.Append(coluna.Trim());
                    query.Append(", ");
                }
                query.Remove(query.Length - 2, 2);
            }
            else
            {
                query.Append(" * ");
            }

            query.Append(" FROM ");
            query.Append("DB2PTUSER.");
            query.Append(tabela.GetDesc());
            query.Append(" ORDER BY ");
            query.Append(orderBy);

            return query.ToString();
        }
    }
}
