using CommonCURDOperation;
using DTOModelsShared.DTOStorefinderresult;
using DTOModelsShared.DTOUserRegistration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UtilityShared.DStoList;
namespace DataProviderServiceShared.StoreFinder
{
    public class findmystore
    {
        CurdOperationAPI commop = new CurdOperationAPI();
        public List<DTOStoreFind> SearchStoresByTag(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("SearchStoresByTag", pname, pvalue).Tables[0].ToList<DTOStoreFind>();
        }


      
    }
}
