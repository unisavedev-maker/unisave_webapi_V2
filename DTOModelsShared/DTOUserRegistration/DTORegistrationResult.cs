using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTOModelsShared.DTOUserRegistration
{
    public class DTORegistrationResult
    {
        public object result { get; set; }
        public object message { get; set; }
    }

    public class DTOuserlogin
    {
        public object token { get; set; }
        public object isprofile { get; set; }


    }

    public class DTOUserprofile
    {
        public object user_id { get; set; }
        public object email { get; set; }
        public object name { get; set; }
        public object isProfileCompleted { get; set; }
        public object created_at { get; set; }

        public object profileidpk { get; set; }
        public object fullname { get; set; }
        public object contactno { get; set; }
        public object address { get; set; }
        public object city { get; set; }
        public object province { get; set; }
        public object postalcode { get; set; }

        public object max_allocation { get; set; }
        public object allocation { get; set; }
        public object user_image { get; set; }

        public object isDeleted { get; set; }
        public object isActive { get; set; }
    }

}
