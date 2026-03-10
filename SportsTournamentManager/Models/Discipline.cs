using System.Collections.Generic;

namespace SportsTournamentManager.Models {
    public class Discipline {
        public int Id { get; set; }
        public string Name { get; set; } = string.Empty; 
        public TournamentType Type { get; set; }

        public ICollection<Tournament> Tournaments { get; set; } = new List<Tournament>();
    }
}