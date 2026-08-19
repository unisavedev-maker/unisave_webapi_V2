namespace myunisaveapi.Models
{
    public class userinput
    {
        public string email { get; set; }
        public string pwd { get; set; }
    }

    public class RegisterUserRequest
    {
        public string Email { get; set; }
        public string Name { get; set; }
        public string Pwd { get; set; }
    }
}
