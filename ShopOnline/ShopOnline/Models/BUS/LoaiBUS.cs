using ConnectDBShop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopOnline.Models.BUS
{
    public class LoaiBUS
    {
        public static IEnumerable<LoaiSanPham> DanhSach()
        {
            var db = new ConnectDBShopDB();
            return db.Query<LoaiSanPham>("SELECT * FROM LoaiSanPham WHERE TinhTrang = 0");
        }
        public static IEnumerable<SanPham> Chitiet(String id)
        {
            var db = new ConnectDBShopDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaLoaiSanPham = '" + id + "'"); //cong chuoi
        }
    }
}