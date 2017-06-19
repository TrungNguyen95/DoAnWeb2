using ConnectDBShop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShopOnline.Models.BUS
{
    public class LoaiBUS
    {
        // NGƯỜI DÙNG
        public static IEnumerable<LoaiSanPham> DanhSach()
        {
            var db = new ConnectDBShopDB();
            return db.Query<LoaiSanPham>("SELECT * FROM LoaiSanPham WHERE TinhTrang = '0         '");
        }
        public static IEnumerable<SanPham> Chitiet(String id)
        {
            var db = new ConnectDBShopDB();
            return db.Query<SanPham>("SELECT * FROM SanPham WHERE MaLoaiSanPham = '" + id + "' AND TinhTrang = '0         '"); //cong chuoi
        }

        //ADMIN
        public static IEnumerable<LoaiSanPham> DanhSachAll()
        {
            var db = new ConnectDBShopDB();
            return db.Query<LoaiSanPham>("SELECT * FROM LoaiSanPham");
        }
        public static void ThemLSP(LoaiSanPham lsp)
        {
            var db = new ConnectDBShopDB();
            db.Insert(lsp);
        }
        public static LoaiSanPham ChiTietAdmin(String id)
        {
            var db = new ConnectDBShopDB();
            return db.SingleOrDefault<LoaiSanPham>("SELECT * FROM LoaiSanPham WHERE MaLoaiSanPham = '" + id + "'");
        }
        public static void UpdateLSP(string id, LoaiSanPham lsp)
        {
            var db = new ConnectDBShopDB();
            // Lỗi cái chỗ update
            db.Update(lsp, id);
        }
    }
}