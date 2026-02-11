namespace myunisaveapi.Models
{
    public class inputProfileModel
    {
        public string p_action { get; set; }

        public int? p_profileidpk { get; set; }
        public int? p_usersidpkfk { get; set; }

        public string? p_fullname { get; set; }
        public string? p_contactno { get; set; }
        public string? p_address { get; set; }
        public string? p_city { get; set; }
        public string? p_province { get; set; }
        public string? p_postalcode { get; set; }

        public int? p_max_allocation { get; set; }
        public int? p_allocation { get; set; }

        public bool? p_isActive { get; set; }
        public bool? p_isDisabled { get; set; }
    }
}
