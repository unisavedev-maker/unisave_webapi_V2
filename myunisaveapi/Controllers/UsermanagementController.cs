using DataProviderServiceShared.UserAuthentication;
using DTOModelsShared.DTOUserRegistration;
using Google.Protobuf.WellKnownTypes;
using Microsoft.AspNetCore.Mvc;
using myunisaveapi.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace myunisaveapi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UsermanagementController : ControllerBase
    {
        private readonly usermanagement usrmgmt;

        public UsermanagementController(usermanagement userManagementService)
        {
            usrmgmt = userManagementService;
        }

       /* [HttpGet("GetRegisterUser")]
        public ActionResult<List<DTORegistrationResult>> GetRegisterUser(string email, string name, string pwd)
        {
            try
            {
                string[] pname = { "p_email", "p_name", "p_password" };
                string[] pvalue = { email, name, pwd };
                return Ok(usrmgmt.UserRegistrationEmail(pname, pvalue));
            }
            catch (Exception)
            {

                return BadRequest("Invalid request");
            }


        }*/

        [HttpPost("GetRegisterUser")]
        public ActionResult<List<DTORegistrationResult>> GetRegisterUser([FromBody] RegisterUserRequest request)
        {
            try
            {
                string[] pname = { "p_email", "p_name", "p_password" };
                string[] pvalue = { request.Email, request.Name, request.Pwd };
                return Ok(usrmgmt.UserRegistrationEmail(pname, pvalue));
            }
            catch (Exception)
            {
                return BadRequest("Invalid request");
            }
        }


        [HttpPost("userlogin")]
        public ActionResult<List<DTOuserlogin>> Getuserlogin([FromBody] userinput model)
        {
            try
            {
                if (model == null) return BadRequest("User detail must be provide");
                string[] pname = { "p_email", "p_password" };
                string[] pvalue = { model.email.ToString(), model.pwd.ToString() };
                return Ok(usrmgmt.userlogin(pname, pvalue));
            }
            catch (Exception ex)
            {

                return BadRequest(ex.Message);
            }


        }

        [HttpPost("manage_users_profile")]
        public ActionResult<List<DTOUserprofile>> manage_users_profile([FromBody] inputProfileModel model)
        {
            try
            {
                if (model == null)
                    return BadRequest("User detail must be provided");

                string[] pname =
                {
    "p_action",
    "p_profileidpk",
    "p_usersidpkfk",
    "p_fullname",
    "p_contactno",
    "p_address",
    "p_city",
    "p_province",
    "p_postalcode",
    "p_max_allocation",
    "p_allocation",
    "p_isActive",
    "p_isDisabled"
};

                string[] pvalue =
                {
    model.p_action?.ToString(),

    model.p_profileidpk?.ToString(),
    model.p_usersidpkfk?.ToString(),

    model.p_fullname?.ToString(),
    model.p_contactno?.ToString(),
    model.p_address?.ToString(),
    model.p_city?.ToString(),
    model.p_province?.ToString(),
    model.p_postalcode?.ToString(),

    model.p_max_allocation?.ToString(),
    model.p_allocation?.ToString(),

   model.p_isActive.HasValue
        ? (model.p_isActive.Value ? "1" : "0")
        : null,

    model.p_isDisabled.HasValue
        ? (model.p_isDisabled.Value ? "1" : "0")
        : null
};

                return Ok(usrmgmt.sp_manage_users_profile(pname, pvalue));
            }
            catch (Exception ex)
            {
                var res = ex.Message;

                return BadRequest("Something seems wrong please try after some time ");
            }


        }


        [HttpGet("socialusersignup")]
        public ActionResult<List<DTOuserlogin>> Getsocialusersignup(string email, string name, string provider_name, string provider_user_id, string providerresponce, string provideruniqueid)
        {
            try
            {
                string[] pname = { "p_email", "p_name", "p_provider_name", "p_provider_user_id", "P_providerresponce", "P_provideruniqueid" };
                string[] pvalue = { email, name, provider_name, provider_user_id, providerresponce, provideruniqueid };
                return Ok(usrmgmt.registersocialuser(pname, pvalue));
            }
            catch (Exception ex)
            {
                return BadRequest("Invalid request");
            }


        }


        [HttpPost(Name = "RegisterUserpost")]
        public ActionResult<List<DTORegistrationResult>> PostRegisterUserpost([FromBody] RegistrationDTO registration)
        {
            if (registration == null)
            {
                return BadRequest("Invalid registration data.");
            }

            string[] pname = { "p_email", "p_name", "p_password" };
            string[] pvalue = { registration.Email, registration.Name, registration.Password };

            var result = usrmgmt.UserRegistrationEmail(pname, pvalue);
            return Ok(result);
        }


    }
}
