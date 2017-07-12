using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Threading.Tasks;

namespace CommonLib
{
    public static class Utils
    {
        public static T2 DeepClone<T1, T2>(T1 obj)
        {
            DataContractJsonSerializer serializer = new DataContractJsonSerializer(typeof(T1));
            DataContractJsonSerializer deserializer = new DataContractJsonSerializer(typeof(T2));

            using (var ms = new MemoryStream())
            {
                serializer.WriteObject(ms, obj);
                ms.Position = 0;

                return (T2)deserializer.ReadObject(ms);
            }
        }
    }
}
