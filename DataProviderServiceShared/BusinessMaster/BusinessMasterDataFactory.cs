using CommonCURDOperation;
using DTOModelsShared.DTOBusinessMaster;

using UtilityShared.DStoList;
namespace DataProviderServiceShared.BusinessMaster
{
    public class BusinessMasterDataFactory
    {
        CurdOperationAPI commop = new CurdOperationAPI();
        public List<DTOBusinessMaster> GetBusinessDetailsById(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("GetBusinessDetailsById", pname, pvalue).Tables[0].ToList<DTOBusinessMaster>();
        }
    }
}
