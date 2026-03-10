using System;

namespace SportsTournamentManager.Models {
    public class Match {
        public int Id { get; set; }

        public int TournamentId { get; set; }
        public Tournament? Tournament { get; set; }

        public int TeamAId { get; set; }
        public Team? TeamA { get; set; }

        public int TeamBId { get; set; }
        public Team? TeamB { get; set; }

        public int ScoreA { get; set; }
        public int ScoreB { get; set; }
        public DateTime Date { get; set; }
    }
}