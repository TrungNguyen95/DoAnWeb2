using ShopOnline.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;


namespace ShopOnline.Controllers
{
    [Authorize] //check xem da dang nhap chua
    public class GioHangController : Controller
    {
        // GET: GioHang
        public ActionResult Index()
        {
            ViewBag.TongTien = GioHangBUS.TongTien(User.Identity.GetUserId());
            return View(GioHangBUS.DanhSachGH(User.Identity.GetUserId()));
        }
        [HttpPost]
        public ActionResult Them(string masanpham,string tensanpham, int soluong, int gia, string hinhchinh)
        {
            try
            {
                GioHangBUS.Them(masanpham, User.Identity.GetUserId(),tensanpham, soluong, gia, hinhchinh);
                return RedirectToAction("Index"); //them thanh cong
            }
            catch
            {
                return RedirectToAction("../MobiShop/Index"); //them ko thanh cong
            }
            
        }

        [HttpPost]
        public ActionResult CapNhat(string masanpham, string tensanpham, int soluong, int gia, string hinhchinh)
        {
            try
            {
                GioHangBUS.CapNhat(masanpham, User.Identity.GetUserId(), tensanpham, soluong, gia, hinhchinh);
                return RedirectToAction("Index"); //them thanh cong
            }
            catch
            {
                return RedirectToAction("../MobiShop/Index"); //them ko thanh cong
            }

        }

        [HttpGet]
        public ActionResult Xoa(string masanpham)
        {
            try
            {
                GioHangBUS.Xoa(masanpham, User.Identity.GetUserId());
                return RedirectToAction("Index"); //them thanh cong
            }
            catch
            {
                return RedirectToAction("../MobiShop/Index"); //them ko thanh cong
            }

        }
    }
}