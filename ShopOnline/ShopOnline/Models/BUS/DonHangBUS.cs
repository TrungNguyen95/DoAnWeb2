using ConnectDBShop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopOnline.Models.BUS
{
    public class DonHangBUS
    {
        public static IEnumerable<GioHang> DonDatHang()
        {
            var db = new ConnectDBShopDB();
            return db.Query<GioHang>("SELECT * FROM GioHang");
        }
    }
}