using CommonCURDOperation;
using DTOModelsShared.DTOBrandMaster;
using DTOModelsShared.DTOHomeBanner;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UtilityShared.DStoList;

namespace DataProviderServiceShared.BrandMaster
{
    public class BrandMasterDataFactory
    {
        CurdOperationAPI commop = new CurdOperationAPI();
        public List<DTOBrandMaster> DisplayBrandHome(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("DisplayBrandHome", pname, pvalue).Tables[0].ToList<DTOBrandMaster>();
        }
    }
}
