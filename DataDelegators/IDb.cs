using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataDelegators
{
    interface IDb
    {
        IEnumerable<T> Get<T>(string query, Action<IDbCommand> parameterizer,
                          Func<IDataRecord, T> selector);

        int Add(string query, Action<IDbCommand> parameterizer);

        int Save(string query, Action<IDbCommand> parameterizer);

        int SaveSafely(string query, Action<IDbCommand> parameterizer);
    }
}
