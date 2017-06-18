using ConnectDBShop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopOnline.Models.BUS
{
    public class KhachHangBUS
    {
        public static IEnumerable<AspNetUser> DanhSachKH()
        {
            var db = new ConnectDBShopDB();
            return db.Query<AspNetUser>("SELECT * FROM AspNetUsers");
        }
    }
}