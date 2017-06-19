using ConnectDBShop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopOnline.Models.BUS
{
    public class HangBUS
    {

        // NGƯỜI DÙNG
        public static IEnumerable<NhaSanXuat> DanhSach()
        {
            var db = new ConnectDBShopDB();
            return db.Query<NhaSanXuat>("SELECT * FROM NhaSanXuat WHERE TinhTrang = '0         '");
        }
        public static IEnumerable<SanPham> Chitiet(String id)
        {
            var db = new ConnectDBShopDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaNhaSanXuat = '"+id+ "' AND TinhTrang = '0         '");
        }


        //ADMIN
        public static void ThemNSX(NhaSanXuat nsx)
        {
            var db = new ConnectDBShopDB();
            db.Insert(nsx);
        }
        public static IEnumerable<NhaSanXuat> DanhSachAll()
        {
            var db = new ConnectDBShopDB();
            return db.Query<NhaSanXuat>("SELECT * FROM NhaSanXuat");
        }
        public static NhaSanXuat ChiTietAdmin(String id)
        {
            var db = new ConnectDBShopDB();
            return db.SingleOrDefault<NhaSanXuat>("SELECT * FROM NhaSanXuat WHERE MaNhaSanXuat = '" + id + "'");
        }
        public static void UpdateNSX(string id, NhaSanXuat nsx)
        {
            var db = new ConnectDBShopDB();
            // Lỗi cái chỗ update
            db.Update(nsx, id);
        }
    }
}
