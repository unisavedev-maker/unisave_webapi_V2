using DataProviderServiceShared.BrandMaster;
using DataProviderServiceShared.BusinessMaster;
using DataProviderServiceShared.CategoryMaster;
using DataProviderServiceShared.ShareAllocationMaster;

using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using myunisaveapi.Enums;
using myunisaveapi.Models;

namespace myunisaveapi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class giftsharingController : ControllerBase
    {


        private readonly ParticiepentsDataFactory _ParticiepentsDataFactory;
        

        public giftsharingController(ParticiepentsDataFactory particiepentsDataFactory)
        {
            _ParticiepentsDataFactory= particiepentsDataFactory;
        }

        [HttpPost("add-participent")]
        public IActionResult Addparticipent([FromBody] ParticipentInputModel model)
        {
            try
            {
                if (model == null) return BadRequest("Invalid participant data.");

                
                string[] pnames = {
            "p_action", "p_p_id","p_request_id", "p_u_id","ownerid", "p_relation_id", "p_name",
            "p_dob", "p_allocation", "p_image_name","p_email"
        };

                string[] pvalues = {
            Db_Action.CREATE.ToString(),
            model.p_p_id?.ToString() ?? "0",
             model.request_id.ToString(),
            model.p_u_id.ToString(),

             model.ownerid.ToString(),
            model.p_relation_id?.ToString() ?? "0",
            model.p_name ?? "",
            model.p_dob?.ToString("yyyy-MM-dd") ?? "",
            model.p_allocation.ToString(),
            model.p_image_name ?? "no-image.png",
            model.p_email ?? ""

        };

                var result = _ParticiepentsDataFactory.AddParticiepents(pnames, pvalues);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost("all-participent")]
        public IActionResult allparticipent([FromBody] ParticipentInputModel model)
        {
            try
            {
                if (model == null) return BadRequest("Invalid participant data.");


                string[] pnames = {
            "p_action", "p_p_id","p_request_id", "p_u_id","ownerid", "p_relation_id", "p_name",
            "p_dob", "p_allocation", "p_image_name","p_email"
        };

                string[] pvalues = {
            Db_Action.SELECT_ALL.ToString(),
            model.p_p_id?.ToString() ?? "0",
             model.request_id.ToString(),
            model.p_u_id.ToString(),
           
            model.ownerid.ToString(),
            model.p_relation_id?.ToString() ?? "0",
            model.p_name ?? "",
            model.p_dob?.ToString("yyyy-MM-dd") ?? "",
            model.p_allocation.ToString(),
            model.p_image_name ?? "",
            model.p_email??""

        };

                var result = _ParticiepentsDataFactory.AddParticiepents(pnames, pvalues);
                return Ok(result);
            }
            
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }


        [HttpPost("update-participent")]
        public IActionResult updateparticipent([FromBody] ParticipentInputModel model)
        {
            try
            {
                if (model == null) return BadRequest("Invalid participant data.");


                string[] pnames = {
            "p_action", "p_p_id","p_request_id", "p_u_id","ownerid", "p_relation_id", "p_name",
            "p_dob", "p_allocation", "p_image_name","p_email"
        };

                string[] pvalues = {
            Db_Action.UPDATE.ToString(),
            model.p_p_id?.ToString() ?? "0",
            model.request_id.ToString(),
            model.p_u_id.ToString(),
            
            model.ownerid.ToString(),
            model.p_relation_id?.ToString() ?? "0",
            model.p_name ?? "",
            model.p_dob?.ToString("yyyy-MM-dd") ?? "",
            model.p_allocation.ToString(),
            model.p_image_name ?? "",
            model.p_email??""

        };

                var result = _ParticiepentsDataFactory.AddParticiepents(pnames, pvalues);
                return Ok(result);
            }

            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }


        [HttpPost("getbyid-participent")]
        public IActionResult getbyidarticipent([FromBody] ParticipentInputModel model)
        {
            try
            {
                if (model == null) return BadRequest("Invalid participant data.");


                string[] pnames = {
            "p_action", "p_p_id","p_request_id", "p_u_id","ownerid", "p_relation_id", "p_name",
            "p_dob", "p_allocation", "p_image_name","p_email"
        };

                string[] pvalues = {
            Db_Action.SELECT_BY_ID.ToString(),
            model.p_p_id?.ToString() ?? "0",
             model.request_id.ToString(),
            model.p_u_id.ToString(),
           
            model.ownerid.ToString(),
            model.p_relation_id?.ToString() ?? "0",
            model.p_name ?? "",
            model.p_dob?.ToString("yyyy-MM-dd") ?? "",
            model.p_allocation.ToString(),
            model.p_image_name ?? "",
            model.p_email??"",

        };

                var result = _ParticiepentsDataFactory.AddParticiepents(pnames, pvalues);
                return Ok(result);
            }

            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }


        [HttpPost("contribution-request")]
        public IActionResult contributionrequest([FromBody] ParticipentInputModel model)
        {
            try
            {
                if (model == null) return BadRequest("Invalid participant data.");


                string[] pnames = {
            "p_action", "p_p_id","p_request_id", "p_u_id","ownerid", "p_relation_id", "p_name",
            "p_dob", "p_allocation", "p_image_name","p_email"
        };

                string[] pvalues = {
            Db_Action.EXTERNAL_SHARE.ToString(),
            model.p_p_id?.ToString() ?? "0",
             model.request_id.ToString(),
            model.p_u_id.ToString(),

            model.ownerid.ToString(),
            model.p_relation_id?.ToString() ?? "0",
            model.p_name ?? "",
            model.p_dob?.ToString("yyyy-MM-dd") ?? "",
            model.p_allocation.ToString(),
            model.p_image_name ?? "",
            model.p_email??"",

        };

                var result = _ParticiepentsDataFactory.AddParticiepents(pnames, pvalues);
                return Ok(result);
            }

            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost("accept-contribution")]
        public IActionResult acceptcontribution([FromBody] ParticipentInputModel model)
        {
            try
            {
                if (model == null) return BadRequest("Invalid participant data.");


                string[] pnames = {
            "p_action", "p_p_id","p_request_id", "p_u_id","ownerid", "p_relation_id", "p_name",
            "p_dob", "p_allocation", "p_image_name","p_email"
        };

                string[] pvalues = {
            Db_Action.ACCEPT_EXTERNAL_SHARE.ToString(),
            model.p_p_id?.ToString() ?? "0",
             model.request_id.ToString(),
            model.p_u_id.ToString(),

            model.ownerid.ToString(),
            model.p_relation_id?.ToString() ?? "0",
            model.p_name ?? "",
            model.p_dob?.ToString("yyyy-MM-dd") ?? "",
            model.p_allocation.ToString(),
            model.p_image_name ?? "",
            model.p_email??"",

        };

                var result = _ParticiepentsDataFactory.AddParticiepents(pnames, pvalues);
                return Ok(result);
            }

            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost("reject-contribution")]
        public IActionResult rejectcontribution([FromBody] ParticipentInputModel model)
        {
            try
            {
                if (model == null) return BadRequest("Invalid participant data.");


                string[] pnames = {
            "p_action", "p_p_id","p_request_id", "p_u_id","ownerid", "p_relation_id", "p_name",
            "p_dob", "p_allocation", "p_image_name","p_email"
        };

                string[] pvalues = {
            Db_Action.REJECT_EXTERNAL_SHARE.ToString(),
            model.p_p_id?.ToString() ?? "0",
             model.request_id.ToString(),
            model.p_u_id.ToString(),

            model.ownerid.ToString(),
            model.p_relation_id?.ToString() ?? "0",
            model.p_name ?? "",
            model.p_dob?.ToString("yyyy-MM-dd") ?? "",
            model.p_allocation.ToString(),
            model.p_image_name ?? "",
            model.p_email??"",

        };

                var result = _ParticiepentsDataFactory.AddParticiepents(pnames, pvalues);
                return Ok(result);
            }

            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost("delete-share")]
        public IActionResult deleteshare([FromBody] ParticipentInputModel model)
        {
            try
            {
                if (model == null) return BadRequest("Invalid participant data.");


                string[] pnames = {
            "p_action", "p_p_id","p_request_id", "p_u_id","ownerid", "p_relation_id", "p_name",
            "p_dob", "p_allocation", "p_image_name","p_email"
        };

                string[] pvalues = {
            Db_Action.DELETE_SHARE.ToString(),
            model.p_p_id?.ToString() ?? "0",
             model.request_id.ToString(),
            model.p_u_id.ToString(),

            model.ownerid.ToString(),
            model.p_relation_id?.ToString() ?? "0",
            model.p_name ?? "",
            model.p_dob?.ToString("yyyy-MM-dd") ?? "",
            model.p_allocation.ToString(),
            model.p_image_name ?? "",
            model.p_email??"",

        };

                var result = _ParticiepentsDataFactory.AddParticiepents(pnames, pvalues);
                return Ok(result);
            }

            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [HttpPost("delete-particiepent")]
        public IActionResult deletepartiecipent([FromBody] ParticipentInputModel model)
        {
            try
            {
                if (model == null) return BadRequest("Invalid participant data.");


                string[] pnames = {
            "p_action", "p_p_id","p_request_id", "p_u_id","ownerid", "p_relation_id", "p_name",
            "p_dob", "p_allocation", "p_image_name","p_email"
        };

                string[] pvalues = {
            Db_Action.DELETE_PARTICIEPENT.ToString(),
            model.p_p_id?.ToString() ?? "0",
             model.request_id.ToString(),
            model.p_u_id.ToString(),

            model.ownerid.ToString(),
            model.p_relation_id?.ToString() ?? "0",
            model.p_name ?? "",
            model.p_dob?.ToString("yyyy-MM-dd") ?? "",
            model.p_allocation.ToString(),
            model.p_image_name ?? "",
            model.p_email??"",

        };

                var result = _ParticiepentsDataFactory.AddParticiepents(pnames, pvalues);
                return Ok(result);
            }

            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
        /* [HttpPost("share-requests")]
        public IActionResult SendShareRequest(long p_owner_id, long p_requester_id, decimal p_requested_percent)
        {
            try
            {
                string[] pname = { "p_owner_id", "p_requester_id", "p_requested_percent" };
                string[] pvalue = { p_owner_id.ToString(), p_requester_id.ToString(), p_requested_percent.ToString() };
                return Ok(_DataFactory.ExecuteProc("sp_send_share_request", pname, pvalue));
            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }

        [HttpPost("share-requests/{id}/respond")]
        public IActionResult RespondShareRequest(long p_request_id, long p_owner_id, bool p_accept)
        {
            try
            {
                string[] pname = { "p_request_id", "p_owner_id", "p_accept" };
                string[] pvalue = { p_request_id.ToString(), p_owner_id.ToString(), p_accept ? "1" : "0" };
                return Ok(_DataFactory.ExecuteProc("sp_respond_share_request", pname, pvalue));
            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }
        [HttpPost("wallets/{ownerId}/share")]
        public IActionResult ShareOwnerAmount(long p_owner_id, decimal p_amount_rs, string p_note)
        {
            try
            {
                string[] pname = { "p_owner_id", "p_amount_rs", "p_note" };
                string[] pvalue = { p_owner_id.ToString(), p_amount_rs.ToString(), p_note };
                return Ok(_DataFactory.ExecuteProc("sp_share_owner_amount", pname, pvalue));
            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }
        [HttpGet("owners/{ownerId}/allocations/total")]
        public IActionResult GetTotalPercentForOwner(long p_owner_id)
        {
            try
            {
                string[] pname = { "p_owner_id" };
                string[] pvalue = { p_owner_id.ToString() };
                return Ok(_DataFactory.ExecuteProc("fn_total_percent_for_owner", pname, pvalue));
            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }
       */
        /*
        [HttpPost("share-requests")]
        public IActionResult SendShareRequest([FromBody] SendShareRequestDto dto)
        {
            try
            {
                string[] pname = { "p_owner_id", "p_requester_id", "p_requested_percent" };
                string[] pvalue = { dto.p_owner_id.ToString(), dto.p_requester_id.ToString(), dto.p_requested_percent.ToString() };
                return Ok(_DataFactory.ExecuteProc("sp_send_share_request", pname, pvalue));
            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }


        [HttpPost("share-requests/respond")]
        public IActionResult RespondShareRequest([FromBody] RespondShareRequestDto dto)
        {
            try
            {
                string[] pname = { "p_request_id", "p_owner_id", "p_accept" };
                string[] pvalue = { dto.p_request_id.ToString(), dto.p_owner_id.ToString(), dto.p_accept ? "1" : "0" };
                return Ok(_DataFactory.ExecuteProc("sp_respond_share_request", pname, pvalue));
            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }

        [HttpPost("wallets/share")]
        public IActionResult ShareOwnerAmount([FromBody] ShareOwnerAmountDto dto)
        {
            try
            {
                string[] pname = { "p_owner_id", "p_amount_rs", "p_note" };
                string[] pvalue = { dto.p_owner_id.ToString(), dto.p_amount_rs.ToString(), dto.p_note };
                return Ok(_DataFactory.ExecuteProc("sp_share_owner_amount", pname, pvalue));
            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }

        [HttpPost("owners/allocations/total")]
        public IActionResult GetTotalPercentForOwner([FromBody] TotalPercentRequestDto dto)
        {
            try
            {
                string[] pname = { "p_owner_id" };
                string[] pvalue = { dto.p_owner_id.ToString() };
                return Ok(_DataFactory.ExecuteProc("fn_total_percent_for_owner", pname, pvalue));
            }
            catch (Exception ex)
            {
                return BadRequest(ex.ToString());
            }
        }*/


    }
}
