using System.Text.Json.Serialization;
using UtilityShared.CustomeUtility;

namespace myunisaveapi.Models.SharinginfoInputModel
{
    public class inputgetsharingdetail
    {
        public long p_user_id { get; set; }
        [JsonConverter(typeof(CustomDateConverter))]
        public DateTime? p_from_date { get; set; }
        [JsonConverter(typeof(CustomDateConverter))]
        public DateTime? p_to_date { get; set; }
    }

   
}
