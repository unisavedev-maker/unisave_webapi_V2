using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTOModelsShared.DTOUserRegistration
{
    public class Sharinginfo
    {
        public object user_id { get; set; }
        public object total_earning { get; set; }
        public object internal_earning { get; set; }
        public object external_earning { get; set; }
    }

    public class Sharinginfo_Datewise
    {
       
        public object total_earning { get; set; }
        public object internal_earning { get; set; }
        public object external_earning { get; set; }
        public object earning_date { get; set; }

    }
    public class Sharinginfo_monthwise
    {

        public object total_earning { get; set; }
        public object total_earning_val { get; set; }
        public object internal_earning { get; set; }
        public object internal_earning_val { get; set; }
        public object external_earning { get; set; }
        public object external_earning_val { get; set; }
        public object month_key { get; set; }
        public object month_label { get; set; }

    }
}
