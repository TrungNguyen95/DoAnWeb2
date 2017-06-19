using ConnectDBShop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.Identity;

namespace ShopOnline.Models.BUS
{
    public class GioHangBUS
    {
        public static void Them( string masanpham, string mataikhoan, string tensanpham, int soluong, int gia, string hinhchinh)
        {
            using (var db = new ConnectDBShopDB())
            {
                var listx = db.Query<GioHang>("SELECT * FROM GioHang WHERE MaTaiKhoan = '" +mataikhoan+ "' AND MaSanPham = '" +masanpham+ "'").ToList();
                if (listx.Count() > 0)
                {
                    //tolist tao 1 bang,dem trong do neu > 0 thi da có sp. chi update len
                    //Goi ham update so luong
                    int sl = (int)listx.ElementAt(0).SoLuong + soluong;
                    CapNhat(masanpham, mataikhoan, tensanpham, sl, gia, hinhchinh);
                }
                else//<0 thi tạo moi 1 gio hang
                {
                    GioHang giohang = new GioHang()
                    {
                        
                        MaSanPham = masanpham,
                        MaTaiKhoan = mataikhoan,
                        TenSanPham = tensanpham,
                        SoLuong = soluong,
                        Gia = gia,
                        HinhChinh = hinhchinh,
                        TongTien = gia * soluong
                    };
                    db.Insert(giohang);
                }
            }
        }

        public static void CapNhat(string masanpham, string mataikhoan, string tensanpham, int soluong, int gia, string hinhchinh)
        {
            using (var db = new ConnectDBShopDB())
            {
                GioHang giohang = new GioHang()
                {
                    MaSanPham = masanpham,
                    MaTaiKhoan = mataikhoan,
                    TenSanPham = tensanpham,
                    SoLuong = soluong,
                    Gia = gia,
                    HinhChinh = hinhchinh,
                    TongTien = gia * soluong
                };
                var tamp = db.Query<GioHang>("SELECT IDGH FROM GioHang WHERE MaTaiKhoan = '" +mataikhoan+ "' AND MaSanPham = '" +masanpham+ "'").FirstOrDefault();
                db.Update(giohang,tamp.IDGH);
            }
        }

        public static IEnumerable<GioHang> DanhSachGH(String mataikhoan)
        {
            using (var db = new ConnectDBShopDB())
            {
                return db.Query<GioHang>("SELECT * FROM GioHang WHERE MaTaiKhoan = '" + mataikhoan + "'");
            }
        }

        public static int TongTien(string mataikhoan)
        {
            using(var db = new ConnectDBShopDB())
            {
                return db.Query<int>("SELECT sum(TongTien) FROM GioHang WHERE MaTaiKhoan= '" + mataikhoan + "'").FirstOrDefault();
            }
        }

        public static void Xoa(string masanpham, string mataikhoan)
        {
            using (var db = new ConnectDBShopDB())
            {
                var sp = db.Query<GioHang>("SELECT * FROM GioHang WHERE MaTaiKhoan = '" + mataikhoan + "' AND MaSanPham = '" + masanpham + "'").FirstOrDefault();
                db.Delete(sp);
            }
        }

    }
}