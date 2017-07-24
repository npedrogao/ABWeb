using Core.Logging;
using Core.Models;
using DbExtensions;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace Core.DataWrapper
{
    public static class DataManager
    {
        public static List<ModelField> ModelDb2(string ecra)
        {
            try
            {
                LogUtils.Enter();

                using (SqlDbConnection dbCon = new SqlDbConnection(Properties.Settings.Default.ConnectionStringCatalogue))
                {
                  return CatalogueDAL.GetModelDb2(ecra, dbCon);                   
                }
            }
            catch (Exception ex)
            {
                LogUtils.Error(ex);
                throw;
            }
            finally
            {
                LogUtils.Leave();
            }            
        }
    }
}
