using System;
using System.Collections.Generic;

namespace SportsTournamentManager.Models {
    public class Tournament {
        public int Id { get; set; }
        public string Name { get; set; } = string.Empty;
        public TournamentType Type { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }

        public int DisciplineId { get; set; }
        public Discipline? Discipline { get; set; }

        public int VenueId { get; set; }
        public Venue? Venue { get; set; }

        public ICollection<Match> Matches { get; set; } = new List<Match>();
        public ICollection<TournamentSponsor> TournamentSponsors { get; set; } = new List<TournamentSponsor>();
    }
}