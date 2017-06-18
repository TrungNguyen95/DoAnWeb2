using ShopOnlineConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAnGK_Shop.Models.BUS
{
    public class ShopOnlineBUS
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("select * from SanPham Where TinhTrang = 0");
        }
        public static SanPham ChiTiet(string a)
        {
            var db = new ShopOnlineConnectionDB();
            return db.SingleOrDefault<SanPham>("select * from SanPham Where MaSanPham = @0",a);
        }
        public static IEnumerable<SanPham> Top4New()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("select Top 4 * from SanPham Where GhiChu = N'New'");
        }
        public static IEnumerable<SanPham> TopHot()
        {
            var db = new ShopOnlineConnectionDB();
            return db.Query<SanPham>("select Top 4 * from SanPham Where LuotView > 0");
        }
    }
}