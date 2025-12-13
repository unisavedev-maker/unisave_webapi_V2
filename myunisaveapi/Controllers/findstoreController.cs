using DataProviderServiceShared.StoreFinder;
using DataProviderServiceShared.UserAuthentication;
using DTOModelsShared.DTOUserRegistration;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace myunisaveapi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class findstoreController : ControllerBase
    {
        private readonly findmystore _mystore;

        public findstoreController(findmystore mystore)
        {
            _mystore = mystore;
        }


        [HttpGet("searchstore")]
        public ActionResult<List<DTORegistrationResult>> searchstore(string lat, string lang, string prompt)
        {
            try
            {
                string[] pname = { "p_user_lat", "p_user_lng", "p_search_term" };
                string[] pvalue = { lat, lang, prompt };
                return Ok(_mystore.SearchStoresByTag(pname, pvalue));
            }
            catch (Exception ex)
            {
               
                return BadRequest(ex.ToString());
            }


        }
    }
}
