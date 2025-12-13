using DataProviderServiceShared.BrandMaster;
using DataProviderServiceShared.BusinessMaster;
using DataProviderServiceShared.CategoryMaster;
using DataProviderServiceShared.StoreFinder;
using DTOModelsShared.DTOBusinessMaster;
using DTOModelsShared.DTOCategoryMaster;
using DTOModelsShared.DTOUserRegistration;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace myunisaveapi.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class commonitemController : ControllerBase
    {
        private readonly BusinessMasterDataFactory _BusinessMasterDataFactory;
        private readonly CategoryMasterDataFactory _CategoryMasterDataFactory;
        private readonly BrandMasterDataFactory _BrandMasterDataFactory;

        public commonitemController(BusinessMasterDataFactory businessMasterDataFactory, CategoryMasterDataFactory categoryMasterDataFactory, BrandMasterDataFactory brandMasterDataFactory)
        {
            _BusinessMasterDataFactory = businessMasterDataFactory;
            _CategoryMasterDataFactory = categoryMasterDataFactory;
            _BrandMasterDataFactory = brandMasterDataFactory;
        }

        [HttpGet("businessbyid")]
        public ActionResult<List<DTOBusinessMaster>> businessbyid(string p_business_id)
        {
            try
            {
                string[] pname = { "p_business_id" };
                string[] pvalue = { p_business_id };
                return Ok(_BusinessMasterDataFactory.GetBusinessDetailsById(pname, pvalue));
            }
            catch (Exception ex)
            {

                return BadRequest(ex.ToString());
            }


        }


        [HttpGet("categorybylatlong")]
        public ActionResult<List<DTOCategoryMaster>> categorybylatlong(string p_user_lat, string p_user_lng)
        {
            try
            {
                string[] pname = { "p_user_lat", "p_user_lng" };
                string[] pvalue = { p_user_lat, p_user_lng };
                return Ok(_CategoryMasterDataFactory.Displaycategoryhomepage(pname, pvalue));
            }
            catch (Exception ex)
            {

                return BadRequest(ex.ToString());
            }


        }


        [HttpGet("brandsforhome")]
        public ActionResult<List<DTOCategoryMaster>> brandsforhome(string p_user_lat, string p_user_lng)
        {
            try
            {
                string[] pname = { "p_user_lat", "p_user_lng" };
                string[] pvalue = { p_user_lat, p_user_lng };
                return Ok(_BrandMasterDataFactory.DisplayBrandHome(pname, pvalue));
            }
            catch (Exception ex)
            {

                return BadRequest(ex.ToString());
            }


        }

    }



}
