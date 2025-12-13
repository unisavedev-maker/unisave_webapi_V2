using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTOModelsShared.DTOBusinessMaster
{
    public class DTOBusinessMaster
    {
        public object businessidPK { get; set; }
        public object business_name { get; set; }
        public object business_image { get; set; }
        public object description { get; set; }
        public object isActive { get; set; }
        public object isDeleted { get; set; }
        public object isDisabled { get; set; }
        public object createddate { get; set; }
       
    }
}
