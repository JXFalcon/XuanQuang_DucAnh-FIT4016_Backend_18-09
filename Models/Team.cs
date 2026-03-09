namespace Web_BongDa.Models
{
    public class Team
    {
        public int Id { get; set; }
        public string? Name { get; set; } // Thêm dấu ? để cho phép nullable
        public string? Logo { get; set; } // Thêm dấu ? để cho phép nullable
        public int Played { get; set; }
        public int Won { get; set; }
        public int Drawn { get; set; }
        public int Lost { get; set; }
        public int Points { get; set; }
        public int YellowCards { get; set; }
        public int RedCards { get; set; }

        // Navigation property
        public ICollection<Player>? Players { get; set; }
    }
}