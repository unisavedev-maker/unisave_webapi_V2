using DataProviderServiceShared.UserAuthentication;
using DTOModelsShared.DTOUserRegistration;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace myunisave.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class usermanagementController : ControllerBase
    {
        private readonly usermanagement usrmgmt;

        public usermanagementController(usermanagement userManagementService)
        {
            usrmgmt = userManagementService;
        }

        
        [HttpGet(Name = "RegisterUser")]
        public ActionResult<List<DTORegistrationResult>> RegisterUser(string email, string name, string pwd)
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


        [HttpGet(Name = "userlogin")]
        public ActionResult<List<DTOuserlogin>> userlogin(string email, string pwd)
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


        [HttpGet(Name = "socialusersignup")]
        public ActionResult<List<DTOuserlogin>> socialusersignup(string email, string pwd, string provider_name, string provider_user_id, string providerresponce, string provideruniqueid)
        {
            try
            {
                string[] pname = { "p_email", "p_password", "p_provider_name", "p_provider_user_id", "P_providerresponce", "P_provideruniqueid" };
                string[] pvalue = { email, pwd, provider_name, provider_user_id, providerresponce, provideruniqueid };
                return Ok(usrmgmt.registersocialuser(pname, pvalue));
            }
            catch (Exception)
            {
                return BadRequest("Invalid request");
            }


        }


        [HttpPost(Name = "RegisterUserpost")]

        public ActionResult<List<DTORegistrationResult>> RegisterUserpost([FromBody] RegistrationDTO registration)
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
