using PagedList;


using ConnectDBShop;
using ShopOnline.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopOnline.Areas.Admin.Controllers
{
    public class SanPhamController : Controller
    {
        [Authorize(Roles ="Admin")]
        // GET: Admin/Admin
        public ActionResult Index(int page = 1, int pagesize = 4)
        {
            var db = MobiShopBUS.DanhSachSP().ToPagedList(page, pagesize);
            //return View(MobiShopBUS.DanhSachSP());
            return View(db);
        }

        // GET: Admin/Admin/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Admin/Create
        public ActionResult Create()
        {
            ViewBag.MaNhaSanXuat = new SelectList(HangBUS.DanhSach(), "MaNhaSanXuat", "TenNhaSanXuat");
            ViewBag.MaLoaiSanPham = new SelectList(LoaiBUS.DanhSach(), "MaLoaiSanPham", "TenLoaiSanPham");
            return View();
        }

        // POST: Admin/Admin/Create
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(SanPham sp)
        {
            // try
            //  {
            //Luu hinh chinh
            if (Request.Files.Count > 0)
            {
                var hpf = Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSanPham;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + ".png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.HinhChinh = sp.MaSanPham + ".png";
                }
            }



            //luu cac hinh phu
            //H = HttpContext.Request.Files[1];
            //if (H.ContentLength > 0)
            //{
            //    string fileName = sp.MaSanPham;
            //    string fullPathWithFileName = "~/Asset/img/" + fileName + "_1.png";
            //    H.SaveAs(Server.MapPath(fullPathWithFileName));
            //    sp.Hinh1 = sp.MaSanPham + "_1.png";
            //}
            //H = HttpContext.Request.Files[2];
            //if (H.ContentLength > 0)
            //{
            //    string fileName = sp.MaSanPham;
            //    string fullPathWithFileName = "~/Asset/img/" + fileName + "_2.png";
            //    H.SaveAs(Server.MapPath(fullPathWithFileName));
            //    sp.Hinh2 = sp.MaSanPham + "_2.png";
            //}
            if (Request.Files.Count > 0)
            {
                var hpf = Request.Files[1];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSanPham;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_1.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh1 = sp.MaSanPham + "_1.png";
                }
            }

            if (Request.Files.Count > 0)
            {
                var hpf = Request.Files[2];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSanPham;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_2.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh2 = sp.MaSanPham + "_2.png";
                }
            }

            if (Request.Files.Count > 0)
            {
                var hpf = Request.Files[3];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSanPham;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_3.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh3 = sp.MaSanPham + "_3.png";
                }
            }

            if (Request.Files.Count > 0)
            {
                var hpf = Request.Files[4];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSanPham;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_4.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh4 = sp.MaSanPham + "_4.png";
                }
            }

                sp.TinhTrang = "0";
                sp.SoLuongDaBan = 0;
                sp.LuotView = 0;
                // TODO: Add insert logic here
                MobiShopBUS.InsertSP(sp);
                return RedirectToAction("Index");
           // }B
           // catch
          //  {
            //    return View();
           // }
        }

        // GET: Admin/Admin/Edit/5
        public ActionResult Edit(String id)
        {
            ViewBag.MaNhaSanXuat = new SelectList(HangBUS.DanhSach(), "MaNhaSanXuat", "TenNhaSanXuat", MobiShopBUS.ChiTietSP(id).MaNhaSanXuat );
            ViewBag.MaLoaiSanPham = new SelectList(LoaiBUS.DanhSach(), "MaLoaiSanPham", "TenLoaiSanPham", MobiShopBUS.ChiTietSP(id).MaLoaiSanPham );
            return View(MobiShopBUS.ChiTietSP(id));
        }

        // POST: Admin/Admin/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(String id, SanPham sp)
        {
            var tam = MobiShopBUS.ChiTietSP(id);
            //try
            //{
            // TODO: Add update logic here
            if (Request.Files.Count > 0)
            {
                var hpf = Request.Files[0];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSanPham;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + ".png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.HinhChinh = sp.MaSanPham + ".png";
                }
                else { sp.HinhChinh = tam.HinhChinh; }
            }
           



            //luu cac hinh phu
            if (Request.Files.Count > 0)
            {
                var hpf = Request.Files[1];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSanPham;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_1.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh1 = sp.MaSanPham + "_1.png";
                }
                else { sp.Hinh1 = tam.Hinh1; }
            }
           

            if (Request.Files.Count > 0)
            {
                var hpf = Request.Files[2];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSanPham;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_2.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh2 = sp.MaSanPham + "_2.png";
                }
                else { sp.Hinh2 = tam.Hinh2; }
            }
            

            if (Request.Files.Count > 0)
            {
                var hpf = Request.Files[3];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSanPham;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_3.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh3 = sp.MaSanPham + "_3.png";
                }
                else { sp.Hinh3 = tam.Hinh3; }
            }
            

            if (Request.Files.Count > 0)
            {
                var hpf = Request.Files[4];
                if (hpf.ContentLength > 0)
                {
                    string fileName = sp.MaSanPham;
                    string fullPathWithFileName = "~/Asset/img/" + fileName + "_4.png";
                    hpf.SaveAs(Server.MapPath(fullPathWithFileName));
                    sp.Hinh4 = sp.MaSanPham + "_4.png";
                }
                else { sp.Hinh4 = tam.Hinh4; }
            }
            
            // TODO: Add insert logic here
            if (sp.SoLuongDaBan > 1000){sp.SoLuongDaBan = 0; } else { sp.SoLuongDaBan = tam.SoLuongDaBan; }
            if(sp.LuotView > 100000){sp.LuotView = 0;} else { sp.LuotView = tam.LuotView; }
            sp.TinhTrang = tam.TinhTrang;
            MobiShopBUS.UpdateSP(id, sp);
            return RedirectToAction("Index");
            //}
           // catch
            //{
                //return View();
            //}
        }

        // GET: Admin/Admin/Delete/5
        public ActionResult Delete(String id)
        {
            return View(MobiShopBUS.ChiTietSP(id));
        }

        // POST: Admin/Admin/Delete/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Delete(String id, SanPham sp)
        {
            var tam = MobiShopBUS.ChiTietSP(id);
            try
            {
                // TODO: Add insert logic here
                sp.HinhChinh = tam.HinhChinh;
                sp.Hinh1 = tam.Hinh1;
                sp.Hinh2 = tam.Hinh2;
                sp.Hinh3 = tam.Hinh3;
                sp.Hinh4 = tam.Hinh4;
                sp.MaLoaiSanPham = tam.MaLoaiSanPham;
                sp.MaNhaSanXuat = tam.MaNhaSanXuat;
                sp.CauHinh = tam.CauHinh;
                sp.ChiTietCauHinh = tam.ChiTietCauHinh;
                if (sp.SoLuongDaBan > 1000) { sp.SoLuongDaBan = 0; } else { sp.SoLuongDaBan = tam.SoLuongDaBan; }
                if (sp.LuotView > 100000) { sp.LuotView = 0; } else { sp.LuotView = tam.LuotView; }
                if (tam.TinhTrang == "1         ") { tam.TinhTrang = "0         "; } else { tam.TinhTrang = "1         "; }

                MobiShopBUS.UpdateSP(id, tam);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
