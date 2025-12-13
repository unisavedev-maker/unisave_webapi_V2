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
        
    }
}
