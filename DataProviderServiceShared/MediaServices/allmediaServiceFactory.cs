using CommonCURDOperation;
using DTOModelsShared.DTOImageUploadresult;
using DTOModelsShared.DTOParticiepents;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UtilityShared.DStoList;
namespace DataProviderServiceShared.MediaServices
{
    public class AllmediaServiceFactory
    {
        CurdOperationAPI commop = new CurdOperationAPI();
        public List<DTOOperationResult> add_images(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("sp_update_image_by_type", pname, pvalue).Tables[0].ToList<DTOOperationResult>(); ;
        }
    }
}
