using CommonCURDOperation;
using DTOModelsShared.DTOParticiepents;
using DTOModelsShared.DTOUserRegistration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UtilityShared.DStoList;
namespace DataProviderServiceShared.SharingInfoDetail
{
    public class SharingInfoDataFactory
    {
        CurdOperationAPI commop = new CurdOperationAPI();
        public List<Sharinginfo> SharingInfoMaster(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("sp_user_earning_summary_range_v2", pname, pvalue).Tables[0].ToList<Sharinginfo>();
        }

        public List<Sharinginfo_Datewise> SharingInfoMaster_datewise(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("sp_user_earning_summary_datewise", pname, pvalue).Tables[0].ToList<Sharinginfo_Datewise>();
        }

        public List<Sharinginfo_monthwise> SharingInfoMaster_month(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("sp_user_earning_summary_monthwise", pname, pvalue).Tables[0].ToList<Sharinginfo_monthwise>();
        }

        public List<ParticipantEarningPartiecipent> SharingInfoMaster_Particiepent(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("sp_user_earning_summary_participantwise", pname, pvalue).Tables[0].ToList<ParticipantEarningPartiecipent>();
        }

        
    }
}
