using Microsoft.AspNetCore.Mvc; // Thêm dòng này để hết lỗi IActionResult

namespace Web_BongDa.Controllers // Đảm bảo namespace khớp với thư mục của bạn
{
    public class AccountController : Controller // Sửa 'Controllers' thành 'Controller'
    {
        public IActionResult Login() => View();

        public IActionResult Register() => View();
    }
}