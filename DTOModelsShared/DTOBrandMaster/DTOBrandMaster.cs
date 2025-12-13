using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTOModelsShared.DTOBrandMaster
{
    public class DTOBrandMaster
    {
        public object brand_id { get; set; }
        public object brand_name { get; set; }
        public object brand_image { get; set; }
        public object store_id { get; set; }
        public object store_name { get; set; }
        public object store_image { get; set; }
        public object address { get; set; }
        public object longitude { get; set; }
        public object latitude { get; set; }
        public object distance_km { get; set; }

    }
}
