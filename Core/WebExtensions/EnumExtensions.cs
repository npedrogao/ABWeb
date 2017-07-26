using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Text;

namespace EnumExtensions
{
    public static class EnumExtensions
    {
        /// <summary>
        /// Gets an attribute on an enum field value
        /// </summary>
        /// <typeparam name="T">The type of the attribute you want to retrieve</typeparam>
        /// <param name="enumVal">The enum value</param>
        /// <returns>The attribute of type T that exists on the enum value</returns>
        /// <example>string desc = myEnumVariable.GetAttributeOfType<DescriptionAttribute>().Description;</example>
        public static T GetAttributeOfType<T>(this Enum enumVal) where T : System.Attribute
        {
            var type = enumVal.GetType();
            var memInfo = type.GetMember(enumVal.ToString());
            var attributes = memInfo[0].GetCustomAttributes(typeof(T), false);
            return (attributes.Length > 0) ? (T)attributes[0] : null;
        }

        public static string GetValue(this Enum enumValue)
        {
            return ((char)enumValue.GetHashCode()).ToString();
        }

        public static string GetDesc(this Enum value)
        {
            FieldInfo fi = value.GetType().GetField(value.ToString());

            DescriptionAttribute[] attributes =
                (DescriptionAttribute[])fi.GetCustomAttributes(
                typeof(DescriptionAttribute),
                false);

            if (attributes != null &&
                attributes.Length > 0)
                return attributes[0].Description;
            else
                return value.ToString();
        }

        public static List<KeyValuePair<string, string>> ConvertEnumToList<T>()
        {
            Dictionary<string, string> myDict = new Dictionary<string, string>();
            
            IEnumerable <T> listaEnums  = Enum.GetValues(typeof(T)).Cast<T>();

            foreach (T meuEnum in listaEnums)
            {
                string key = GetDesc((Enum)(object)meuEnum)?.Trim();
                if (!myDict.ContainsKey(key))
                {
                    myDict.Add(key, meuEnum?.ToString());
                }                
            }
                       
            return myDict.ToList();
        }
    }
}
