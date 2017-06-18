using ConnectDBShop;
using ShopOnline.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopOnline.Areas.Admin.Controllers
{
    public class DonDatHangController : Controller
    {
        // GET: Admin/DonDatHang
        [Authorize(Roles = "Admin")]
        public ActionResult Index()
        {
            var db = DonHangBUS.DonDatHang();
            return View(db);
        }
        public ActionResult Details(int id)
        {
            return View();
        }
    }
}