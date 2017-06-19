using ConnectDBShop;
using ShopOnline.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopOnline.Areas.Admin.Controllers
{
    public class KhachHangController : Controller
    {
        // GET: Admin/KhachHanh
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            var db = KhachHangBUS.DanhSachKH();
            return View(db);
        }
        public ActionResult Details(int id)
        {
            return View();
        }
    }
}