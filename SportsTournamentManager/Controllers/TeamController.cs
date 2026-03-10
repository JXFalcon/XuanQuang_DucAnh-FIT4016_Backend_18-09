using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SportsTournamentManager.Data;
using SportsTournamentManager.Models;

namespace SportsTournamentManager.Controllers {
    [Route("api/[controller]")]
    [ApiController]
    public class TeamController : ControllerBase {
        private readonly ApplicationDbContext _context;

        public TeamController(ApplicationDbContext context) {
            _context = context;
        }

        // GET: api/Team
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Team>>> GetTeams() {
            return await _context.Teams
                .Include(t => t.Players)
                .ToListAsync();
        }

        // GET: api/Team/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Team>> GetTeam(int id) {
            var team = await _context.Teams
                .Include(t => t.Players)
                .FirstOrDefaultAsync(t => t.Id == id);

            if (team == null) return NotFound();
            return team;
        }

        // POST: api/Team
        [HttpPost]
        public async Task<ActionResult<Team>> CreateTeam(Team team) {
            _context.Teams.Add(team);
            await _context.SaveChangesAsync();
            return CreatedAtAction(nameof(GetTeam), new { id = team.Id }, team);
        }

        // PUT: api/Team/5
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateTeam(int id, Team team) {
            if (id != team.Id) return BadRequest();

            _context.Entry(team).State = EntityState.Modified;
            await _context.SaveChangesAsync();

            return NoContent();
        }

        // DELETE: api/Team/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTeam(int id) {
            var team = await _context.Teams.FindAsync(id);
            if (team == null) return NotFound();

            // Xóa các trận đấu liên quan
            var matches = _context.Matches
                .Where(m => m.TeamAId == id || m.TeamBId == id)
                .ToList();
            _context.Matches.RemoveRange(matches);

            _context.Teams.Remove(team);
            await _context.SaveChangesAsync();

            return NoContent();
        }
    }
}