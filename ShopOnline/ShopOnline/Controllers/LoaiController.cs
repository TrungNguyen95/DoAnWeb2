using PagedList;
using ShopOnline.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShopOnline.Controllers
{
    public class LoaiController : Controller
    {
        // GET: Loai
        public ActionResult Index(String id, int page = 1, int pagesize = 3)
        {
            var dsLSP = LoaiBUS.Chitiet(id).ToPagedList(page, pagesize);
            return View(dsLSP);
        }
    }
}