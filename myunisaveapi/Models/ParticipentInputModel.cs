namespace myunisaveapi.Models
{
    public class ParticipentInputModel
    {
        //public Enums.Db_Action p_action { get; set; }

        public long? p_p_id { get; set; }
        public long p_u_id { get; set; }
        public int? p_relation_id { get; set; }
        
        public string p_name { get; set; }
        public DateTime? p_dob { get; set; }
        public decimal p_allocation { get; set; }
        public string p_image_name { get; set; }
        public string p_status { get; set; }
        public bool p_isActive { get; set; } = true;
        public bool p_isDisabled { get; set; } = false;
    }
}
