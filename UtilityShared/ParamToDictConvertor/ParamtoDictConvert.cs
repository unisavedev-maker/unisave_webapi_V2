using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UtilityShared.ParamToDictConvertor
{
    public static class ParamtoDictConvert
    {
        public static IDictionary<string, string[]> ToDictionary(
                                  this NameValueCollection source)
        {
            return source.AllKeys.ToDictionary(k => k, k => source.GetValues(k));
        }
    }
}
