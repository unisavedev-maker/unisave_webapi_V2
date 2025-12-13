using DataProviderServiceShared.BusinessMaster;
using DataProviderServiceShared.CategoryMaster;
using DataProviderServiceShared.HomeBannerAdd;
using DTOModelsShared.DTOBusinessMaster;
using DTOModelsShared.DTOHomeBanner;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace myunisaveapi.Controllers
{
    [Route("[controller]")]
    [ApiController]


    public class homepageController : ControllerBase
    {
        private readonly HomeBannerDataFactory _HomeBannerDataFactory;
        public homepageController(HomeBannerDataFactory homeBannerDataFactory)
        {
            _HomeBannerDataFactory = homeBannerDataFactory;
            
        }


        [HttpGet("displayhomebanner")]
        public ActionResult<List<DTOBannerSlider>> displayhomebanner()
        {
            try
            {
                string[] pname = { "operation" };
                string[] pvalue = { "0" };
                return Ok(_HomeBannerDataFactory.DisplayHomeBanner(pname, pvalue));
            }
            catch (Exception ex)
            {

                return BadRequest(ex.ToString());
            }


        }

    }
}
