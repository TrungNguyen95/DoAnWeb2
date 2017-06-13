using ConnectDBShop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopOnline.Models.BUS
{
    public class HangBUS
    {
        public static IEnumerable<NhaSanXuat> DanhSach()
        {
            var db = new ConnectDBShopDB();
            return db.Query<NhaSanXuat>("SELECT * FROM NhaSanXuat WHERE TinhTrang = '0'");
        }
        public static IEnumerable<SanPham> Chitiet(String id)
        {
            var db = new ConnectDBShopDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaNhaSanXuat = '"+id+"'");
        }
    }
}
