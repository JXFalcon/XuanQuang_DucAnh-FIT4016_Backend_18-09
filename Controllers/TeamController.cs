using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Web_BongDa.Data;

namespace Web_BongDa.Controllers

{
    
    public class TeamController : Controller
    {
        private readonly ApplicationDbContext _context;

        public TeamController(ApplicationDbContext context)
        {
            _context = context;
        }

        // Action hiển thị Bảng xếp hạng
        public async Task<IActionResult> Index()
        {
            // Lấy danh sách đội bóng, sắp xếp theo Điểm (giảm dần) 
            // và Hiệu số (nếu cần, ở đây tôi ưu tiên Points)
            var teams = await _context.Teams
                .OrderByDescending(t => t.Points)
                .ToListAsync();

            return View(teams);
        }

        // Action: /Team/Players/{id}
        public async Task<IActionResult> Players(int id)
        {
            var team = await _context.Teams
                .Include(t => t.Players) // Load danh sách cầu thủ đi kèm
                .FirstOrDefaultAsync(t => t.Id == id);

            if (team == null) return NotFound();

            return View(team);
        }
    }
}
