using CommonCURDOperation;
using DTOModelsShared.DTOParticiepents;
using DTOModelsShared.DTORelationshipManagement;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UtilityShared.DStoList;

namespace DataProviderServiceShared.RelationManagement
{
    public class RelationshipDataFactory
    {
        CurdOperationAPI commop = new CurdOperationAPI();
        public List<DTORelation> relationship_management(string[] pname, string[] pvalue)
        {
            return commop.Addoperation("relationship_management", pname, pvalue).Tables[0].ToList<DTORelation>();
        }
    }
}
