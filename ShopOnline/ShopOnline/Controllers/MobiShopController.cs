using PagedList;
using ShopOnline.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopOnline.Controllers
{
    public class MobiShopController : Controller
    {
        // GET: MobiShop
        public ActionResult Index(int page = 1, int pagesize = 4)
        {
            var db = MobiShopBUS.DanhSachSanPham().ToPagedList(page, pagesize); //su dung topagedlist cua pagelistMVS ms add
            return View(db);
        }

        // GET: MobiShop/Details/5
        public ActionResult Details(String id)
        {
            var db = MobiShopBUS.ChiTietSP(id);
            return View(db);
        }

        // GET: MobiShop/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: MobiShop/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: MobiShop/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: MobiShop/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: MobiShop/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: MobiShop/Delete/5
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
