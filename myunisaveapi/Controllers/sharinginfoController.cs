using DataProviderServiceShared.ShareAllocationMaster;
using DataProviderServiceShared.SharingInfoDetail;
using Microsoft.AspNetCore.Mvc;
using myunisaveapi.Enums;
using myunisaveapi.Models;
using myunisaveapi.Models.SharinginfoInputModel;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace myunisaveapi.Controllers
{



    [Route("api/[controller]")]
    [ApiController]
    public class sharinginfoController : ControllerBase
    {
        private readonly SharingInfoDataFactory _SharingInfoDataFactory;
         
        public sharinginfoController(SharingInfoDataFactory sharingInfoDataFactory)
        {
            _SharingInfoDataFactory = sharingInfoDataFactory;
        }

        #region sharinginfo

        [HttpPost("getsharing_detail")]
        public IActionResult getsharing_detail([FromBody] inputgetsharingdetail model)
        {
            try
            {
                if (model.p_from_date == null && model.p_to_date == null)
                {
                    model.p_to_date = DateTime.Today;
                    model.p_from_date = DateTime.Today.AddMonths(-6);
                }
                else if (model.p_from_date == null)
                {
                    model.p_from_date = DateTime.Today.AddMonths(-6);
                }
                else if (model.p_to_date == null)
                {
                    model.p_to_date = DateTime.Today;
                }


                string[] pnames = {
            "p_user_id", "p_from_date","p_to_date", 
        };

                string[] pvalues = {
           model.p_user_id.ToString(),
           model.p_from_date?.ToString("yyyy-MM-dd"),
           model.p_to_date?.ToString("yyyy-MM-dd"),
        };

                var result_summary = _SharingInfoDataFactory.SharingInfoMaster(pnames, pvalues);
                var result_detail_date = _SharingInfoDataFactory.SharingInfoMaster_datewise(pnames, pvalues);
                var result_detail_month = _SharingInfoDataFactory.SharingInfoMaster_month(pnames, pvalues);
                var result_detail_particiepent = _SharingInfoDataFactory.SharingInfoMaster_Particiepent(pnames, pvalues);
                var response = new
                {
                    summary = result_summary,
                    datewise = result_detail_date,
                    monthwise = result_detail_month,
                    participentwise = result_detail_particiepent
                };
                return Ok(response);
            }

            catch (Exception ex)
            {
                return BadRequest(ex);
            }
        }

        #endregion
    }
}
