using CommonCURDOperation;
using DTOModelsShared.DTOUserRegistration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UtilityShared.DStoList;
namespace DataProviderServiceShared.UserAuthentication
{
    public class usermanagement
    {
        CurdOperationAPI commop = new CurdOperationAPI();
        public List<DTORegistrationResult> UserRegistrationEmail(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("register_user", pname, pvalue).Tables[0].ToList<DTORegistrationResult>();
        }


        public List<DTOuserlogin> userlogin(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("login_user", pname, pvalue).Tables[0].ToList<DTOuserlogin>();
        }

        public List<DTOuserlogin> registersocialuser(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("register_or_login_user_with_provider", pname, pvalue).Tables[0].ToList<DTOuserlogin>();
        }


        public List<DTOUserprofile> sp_manage_users_profile(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("sp_manage_users_profile", pname, pvalue).Tables[0].ToList<DTOUserprofile>();
        }


    }
}
