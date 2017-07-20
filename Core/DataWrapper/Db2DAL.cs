using Core.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace Core.DataWrapper
{
    public static class Db2DAL
    {
        public static DataTable GetDb2Table(TabelaEnum tabela, OdbcDbConnection dbConnection, params string [] colunas)
        {
            DataTable dataTable = new DataTable();

            if (tabela == TabelaEnum.NULL)
                throw new ArgumentException("Necessário indicar tabela DB2!");

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
            query.Append(tabela);
            dataTable.Load(dbConnection.ExecSql(query.ToString()));

            return dataTable;
        }
    }
}
