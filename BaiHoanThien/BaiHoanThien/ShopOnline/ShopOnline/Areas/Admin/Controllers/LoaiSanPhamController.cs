using ConnectDBShop;
using ShopOnline.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopOnline.Areas.Admin.Controllers
{
    public class LoaiSanPhamController : Controller
    {
        [Authorize(Roles ="Admin")]
        // GET: Admin/LoaiSanPham
        public ActionResult Index()
        {
            var db = LoaiBUS.DanhSachAll();
            return View(db);
        }

        // GET: Admin/LoaiSanPham/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/LoaiSanPham/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/LoaiSanPham/Create
        [HttpPost]
        public ActionResult Create(LoaiSanPham lsp)
        {
            try
            {
                // TODO: Add insert logic here
                LoaiBUS.ThemLSP(lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/LoaiSanPham/Edit/5
        public ActionResult Edit(String id)
        {
            var db = LoaiBUS.ChiTietAdmin(id);
            return View(db);
        }

        // POST: Admin/LoaiSanPham/Edit/5
        [HttpPost]
        public ActionResult Edit(String id, LoaiSanPham lsp)
        {
            try
            {
                // TODO: Add update logic here
                LoaiBUS.UpdateLSP(id, lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        public ActionResult Xoa(String id)
        {
            return View(LoaiBUS.ChiTietAdmin(id));
        }

        [HttpPost]
        public ActionResult Xoa(String id, LoaiSanPham lsp)
        {
            try
            {
                // TODO: Add delete logic here
                lsp.TinhTrang = "1";
                LoaiBUS.UpdateLSP(id, lsp);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        // GET: Admin/LoaiSanPham/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/LoaiSanPham/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
