namespace myunisaveapi.Models
{
    public class SendShareRequestDto
    {
        public long p_owner_id { get; set; }
        public long p_requester_id { get; set; }
        public decimal p_requested_percent { get; set; }
    }

    public class RespondShareRequestDto
    {
        public long p_request_id { get; set; }
        public long p_owner_id { get; set; }
        public bool p_accept { get; set; }
    }

    public class ShareOwnerAmountDto
    {
        public long p_owner_id { get; set; }
        public decimal p_amount_rs { get; set; }
        public string p_note { get; set; }
    }

    public class TotalPercentRequestDto
    {
        public long p_owner_id { get; set; }
    }

}
