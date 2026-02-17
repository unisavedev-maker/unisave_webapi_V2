using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTOModelsShared.DTOParticiepents
{
    using System;

    public class DTOParticiepentsMaster
    {

        public object p_id { get; set; }
        public object request_id { get; set; }
        public object fullname { get; set; }
        public object name { get; set; }
        public object dob { get; set; }
        public object r_id { get; set; }
        public object relationshipname { get; set; }
        public object allocation { get; set; }
        public object total { get; set; }
        public object image_name { get; set; }
        public object countofparticipent { get; set; }
        public object allocation_label { get; set; }
        public object st_id { get; set; }
        public object caption { get; set; }
        public object isActive { get; set; }
        public object requester_id { get; set; }
        public object responded_at { get; set; }
        public object created_at { get; set; }
        public object isDeleted { get; set; }
        public object share_type { get; set; }
        public object share_typeid { get; set; }
        public object share_logo { get; set; }
        public object owner_id { get; set; }
        public object owner_name { get; set; }
        public object requester_user_id { get; set; }
        public object from_user { get; set; }
        public object owner_user { get; set; }
        public object message { get; set; }


    }

    public class OwnerGroupedResponse
    {
        public object OwnerId { get; set; }
        public string OwnerEmail { get; set; }
        public string OwnerName { get; set; }
        public List<DTOParticiepentsMaster> Participants { get; set; }
    }


   public class Groupby_particiepent
    {
        public static List<OwnerGroupedResponse> GroupByOwner(
     List<DTOParticiepentsMaster> data)
        {
            return data?
                .Where(x => x.owner_id != null
                            && int.TryParse(x.owner_id.ToString(), out _))
                .GroupBy(x => int.Parse(x.owner_id.ToString()))
                .Select(g => new OwnerGroupedResponse
                {
                    OwnerId = g.Key,
                    OwnerEmail = g.First().owner_user?.ToString() ?? "",
                    OwnerName = g.First().owner_name?.ToString() ?? "",
                    Participants = g.ToList()
                })
                .ToList()
                ?? new List<OwnerGroupedResponse>();
        }



    }


}
