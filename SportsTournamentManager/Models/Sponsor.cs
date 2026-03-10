using System.Collections.Generic;

namespace SportsTournamentManager.Models {
    public class Sponsor {
        public int Id { get; set; }
        public string Name { get; set; } = string.Empty;
        public string Industry { get; set; } = string.Empty;

        public ICollection<TournamentSponsor> TournamentSponsors { get; set; } = new List<TournamentSponsor>();
    }

    public class TournamentSponsor {
        public int TournamentId { get; set; }
        public Tournament? Tournament { get; set; }

        public int SponsorId { get; set; }
        public Sponsor? Sponsor { get; set; }
    }
}