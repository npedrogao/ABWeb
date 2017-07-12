using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Odbc;
using System.Data.Common;

namespace ABCatalogue.Delegator
{
    public class Data
    {
        const String connStr = "Dsn=DEV_MST;uid=db2tuser;pwd=12letmein;mode=SHARE;dbalias=DEV_MST";
        OdbcConnection DbConnection = new OdbcConnection(connStr);
        public Data()
        {
            string query = "SELECT PR_TIPO, PR_SUBTIPO, PR_CHAVE, PR_SUBCHAVE, PR_VALOR, PR_SUBVALOR, PR_CONDICAO, PR_OBS, PR_ACTIVO, PR_USER, PR_DATA_ALTERACAO, PR_ORDEM, PR_PRJ_ID FROM DB2PTUSER.PROC_REF_DATA WHERE PR_PRJ_ID IN(0,30) and PR_ACTIVO = 1 and  PR_TIPO in ('SimulationRMFormationFamilies','ddlCustomer_Type','ddlCustomer_Gender','ddlDoc_Type_Ident','ddlSimulation_Operation','ddlSimulation_ProductFamily','ddlSimulation_Suitability','ddlSimulation_State') order by PR_TIPO, PR_ORDEM";
            try
            {
                DbConnection.Open();
            }
            catch (OdbcException ex)
            {
                Console.WriteLine("connection to the DSN '" + connStr + "' failed.");
                Console.WriteLine("The OdbcConnection returned the following message");
                Console.WriteLine(ex.Message);
                return;
            }

            OdbcCommand DbCommand = DbConnection.CreateCommand();

            DbCommand.CommandText = query;
            OdbcDataReader DbReader = null;
            try
            {
                DbReader = DbCommand.ExecuteReader();
                // rest of the code to process the result set
                int fCount = DbReader.FieldCount;
                Console.Write(":");
                for (int i = 0; i < fCount; i++)
                {
                    String fName = DbReader.GetName(i);
                    Console.Write(fName + ":");
                }
                Console.WriteLine();

                while (DbReader.Read())
                {
                    Console.Write(":");
                    for (int i = 0; i < fCount; i++)
                    {
                        String col = "";
                        if (!DbReader.IsDBNull(i))                           
                            col = DbReader.GetString(i);

                        Console.Write(col + ":");
                    }
                    Console.WriteLine();
                }
            }
            catch (OdbcException ex)
            {
                Console.WriteLine("Executing the query '" + query + "' failed.");
                Console.WriteLine("The OdbcCommand returned the following message");
                Console.WriteLine(ex.Message);
                return;
            }
            finally {
                DbReader.Close();
                DbCommand.Dispose();
                DbConnection.Close();
            }
        }
    }
}
