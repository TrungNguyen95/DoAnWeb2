using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnGK_Shop.Models.BUS
{
    public class LoaiSanPhamBUS
    {
        public static IEnumerable<LoaiSanPham> DanhSach()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<LoaiSanPham>("select * from LoaiSanPham Where TinhTrang = 0");
        }
        public static IEnumerable<SanPham> ChiTiet(String id)
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("select * from SanPham Where MaLoaiSanPham = '"+id+ "'");
        }
    }
}