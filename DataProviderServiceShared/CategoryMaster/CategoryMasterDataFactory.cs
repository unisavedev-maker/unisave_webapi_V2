using CommonCURDOperation;
using DTOModelsShared.DTOCategoryMaster;


using UtilityShared.DStoList;
namespace DataProviderServiceShared.CategoryMaster
{
    public class CategoryMasterDataFactory
    {
        CurdOperationAPI commop = new CurdOperationAPI();
        public List<DTOCategoryMaster> Displaycategoryhomepage(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("Displaycategoryhomepage", pname, pvalue).Tables[0].ToList<DTOCategoryMaster>();
        }
    }
}
