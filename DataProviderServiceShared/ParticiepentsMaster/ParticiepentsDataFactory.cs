using CommonCURDOperation;
using DTOModelsShared.DTOBrandMaster;
using DTOModelsShared.DTOParticiepents;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UtilityShared.DStoList;

namespace DataProviderServiceShared.ShareAllocationMaster
{
    public class ParticiepentsDataFactory
    {
      
            CurdOperationAPI commop = new CurdOperationAPI();
            public List<DTOParticiepentsMaster> AddParticiepents(string[] pname, string[] pvalue)
            {
                return commop.Addoperation("sp_ManageRecepients", pname, pvalue).Tables[0].ToList<DTOParticiepentsMaster>();
            }
        
    }
}
