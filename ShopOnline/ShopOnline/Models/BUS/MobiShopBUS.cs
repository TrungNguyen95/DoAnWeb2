using ConnectDBShop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopOnline.Models.BUS
{
    public class MobiShopBUS
    {
        public static IEnumerable<SanPham> DanhSachSanPham()
        {
            var db = new ConnectDBShopDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE TinhTrang = 0");
        }
        public static SanPham ChiTietSP(String a)
        {
            var db = new ConnectDBShopDB();
            return db.SingleOrDefault<SanPham> ("SELECT * FROM SanPham WHERE MaSanPham = @0",a);
        }
        public static IEnumerable<SanPham> SanPhamMoi()
        {
            var db = new ConnectDBShopDB();
            return db.Query<SanPham>("SELECT Top 4 * FROM SanPham WHERE GhiChu = N'New'");
        }
        public static IEnumerable<SanPham> SanPhamHot()
        {
            var db = new ConnectDBShopDB();
            return db.Query<SanPham>("SELECT Top 4 * FROM SanPham WHERE LuotView > 0");
        }
    }
}