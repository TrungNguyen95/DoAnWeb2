using ConnectDBShop;
using ShopOnline.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopOnline.Areas.Admin.Controllers
{
    public class NhaSanXuatController : Controller
    {
        [Authorize(Roles ="Admin")]
        // GET: Admin/NhaSanXuat
        public ActionResult Index()
        {
            var ds = HangBUS.DanhSachAll();
            return View(ds);
        }

        // GET: Admin/NhaSanXuat/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/NhaSanXuat/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/NhaSanXuat/Create
        [HttpPost]
        public ActionResult Create( NhaSanXuat nsx)
        {
            try
            {
                // TODO: Add insert logic here
                // HAM THEM
                HangBUS.ThemNSX(nsx);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Admin/NhaSanXuat/Edit/5
        public ActionResult Edit(String id)
        {
            return View(HangBUS.ChiTietAdmin(id));
        }

        // POST: Admin/NhaSanXuat/Edit/5
        [HttpPost]
        public ActionResult Edit(string id, NhaSanXuat nsx)
        {
            try
            {
                // TODO: Add update logic here
                HangBUS.UpdateNSX(id, nsx);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        public ActionResult Xoa(String id)
        {
            return View(HangBUS.ChiTietAdmin(id));
        }

        [HttpPost]
        public ActionResult Xoa(String id, NhaSanXuat nsx)
        {
            try
            {
                // TODO: Add delete logic here
               
                nsx.TinhTrang = "1";
                HangBUS.UpdateNSX(id, nsx);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        // GET: Admin/NhaSanXuat/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Admin/NhaSanXuat/Delete/5
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
