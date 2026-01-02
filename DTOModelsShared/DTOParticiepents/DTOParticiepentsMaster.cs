using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTOModelsShared.DTOParticiepents
{
    using System;

    public class DTOParticiepentsMaster
    {
        // Primary Key and Foreign Key
        public int p_id { get; set; }
        public int u_id { get; set; }

        // Joined field from users_profile
        public string fullname { get; set; }

        // Core record fields
        public int relation_id { get; set; }
        public string name { get; set; }

        // Dates (Using DateTime? for safety with generic mappers)
        public DateTime? dob { get; set; }

        // MySQL DECIMAL(5,2) maps to decimal
        public decimal allocation { get; set; }

        public string image_name { get; set; }
        public string status { get; set; }

        // MySQL TINYINT flags
        public bool isActive { get; set; }
        public bool isDisabled { get; set; }
        public bool isDeleted { get; set; }

        // Timestamps
        public DateTime? requested_date { get; set; }
        public DateTime? allocation_date { get; set; }
    }


}
