using DataProviderServiceShared.UserAuthentication;
using DTOModelsShared.DTOUserRegistration;
using Google.Protobuf.WellKnownTypes;
using Microsoft.AspNetCore.Mvc;

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

        [HttpGet("GetRegisterUser")]
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


        }


        [HttpGet("userlogin")]
        public ActionResult<List<DTOuserlogin>> Getuserlogin(string email, string pwd)
        {
            try
            {
                string[] pname = { "p_email", "p_password" };
                string[] pvalue = { email, pwd };
                return Ok(usrmgmt.userlogin(pname, pvalue));
            }
            catch (Exception)
            {

                return BadRequest("Invalid request");
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
