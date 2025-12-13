using CommonCURDOperation;
using DTOModelsShared.DTOCategoryMaster;
using DTOModelsShared.DTOHomeBanner;
using UtilityShared.DStoList;

namespace DataProviderServiceShared.HomeBannerAdd
{
    public class HomeBannerDataFactory
    {
        CurdOperationAPI commop = new CurdOperationAPI();
        public List<DTOBannerSlider> DisplayHomeBanner(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("DisplayHomeBanner", pname, pvalue).Tables[0].ToList<DTOBannerSlider>();
        }
    }
}
