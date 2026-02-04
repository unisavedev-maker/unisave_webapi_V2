using DataProviderServiceShared.BrandMaster;
using DataProviderServiceShared.BusinessMaster;
using DataProviderServiceShared.CategoryMaster;
using DataProviderServiceShared.RelationManagement;
using DataProviderServiceShared.StoreFinder;
using DTOModelsShared.DTOBusinessMaster;
using DTOModelsShared.DTOCategoryMaster;
using DTOModelsShared.DTORelationshipManagement;
using DTOModelsShared.DTOUserRegistration;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Xml.Linq;

namespace myunisaveapi.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class commonitemController : ControllerBase
    {
        private readonly BusinessMasterDataFactory _BusinessMasterDataFactory;
        private readonly CategoryMasterDataFactory _CategoryMasterDataFactory;
        private readonly BrandMasterDataFactory _BrandMasterDataFactory;
        private readonly RelationshipDataFactory _RelationshipDataFactory;
        public commonitemController(BusinessMasterDataFactory businessMasterDataFactory, CategoryMasterDataFactory categoryMasterDataFactory, BrandMasterDataFactory brandMasterDataFactory, RelationshipDataFactory relationshipDataFactory)
        {
            _BusinessMasterDataFactory = businessMasterDataFactory;
            _CategoryMasterDataFactory = categoryMasterDataFactory;
            _BrandMasterDataFactory = brandMasterDataFactory;
            _RelationshipDataFactory = relationshipDataFactory;
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

        [HttpGet("getrelationship")]
        public ActionResult<List<DTORelation>> get_relationship(string action, string P_r_id, string r_name)
        {
            try
            {
                string[] pname = { "action", "P_r_id", "r_name" };
                string[] pvalue = { action, P_r_id, r_name };
                return Ok(_RelationshipDataFactory.relationship_management(pname, pvalue));
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
