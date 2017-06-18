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
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE TinhTrang = '0         '");
        }
        public static SanPham ChiTietSP(String a)
        {
            var db = new ConnectDBShopDB();
            return db.SingleOrDefault<SanPham> ("SELECT * FROM SanPham WHERE MaSanPham = @0",a);
        }
        public static IEnumerable<SanPham> SanPhamMoi()
        {
            var db = new ConnectDBShopDB();
            return db.Query<SanPham>("SELECT Top 4 * FROM SanPham WHERE LuotView < 50 AND TinhTrang = '0         '");
        }
        public static IEnumerable<SanPham> SanPhamHot()
        {
            var db = new ConnectDBShopDB();
            return db.Query<SanPham>("SELECT Top 4 * FROM SanPham WHERE SoLuongDaBan > 0 AND TinhTrang = '0         '");
        }

        ////Them san pham moi
        public static IEnumerable<SanPham> DanhSachSP()
        {
            var db = new ConnectDBShopDB();
            return db.Query<SanPham>("SELECT * FROM SanPham");
        }
        public static void InsertSP(SanPham sp)
        {
            var db = new ConnectDBShopDB();
            db.Insert(sp);
        }
        public static void UpdateSP(String id, SanPham sp)
        {
            var db = new ConnectDBShopDB();
            db.Update(sp, id);
        }
    }
}