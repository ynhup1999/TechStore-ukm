using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Cosmetic.Helper;
using Cosmetic.Models;
using Microsoft.AspNetCore.Mvc;
using Cosmetic.Services.OnePay;
using Microsoft.Extensions.Configuration;
using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
//using Microsoft.AspNetCore.Http;
using AutoMapper;
using PayPalHttp;
using PayPal.v1.Payments;
using PayPal.Core;

namespace Cosmetic.Controllers
{
    public class GioHangController : Controller
    {
        private readonly MyPhamContext db;
        //private readonly IMapper _mapper;
        private readonly string _clientId;
        private readonly string _secretKey;

        public double TyGiaUSD = 23300;
        public GioHangController(MyPhamContext context, IConfiguration config)
        {
            db = context;

            _clientId = config["PaypalSetting:ClientID"];
            _secretKey = config["PaypalSetting:SecretKey"];
        }

        [Route("gio-hang")]
        public IActionResult Index()
        {
            return View(Carts);
        }

        public List<CartItem> Carts
        {
            get
            {
                List<CartItem> myCart = HttpContext.Session.Get<List<CartItem>>("GioHang");
                if (myCart == default(List<CartItem>))
                {
                    myCart = new List<CartItem>();
                }

                return myCart;
            }
        }

        public Payer Payer { get; private set; }

        [Route("[controller]/[action]")]
        public IActionResult AddToCart(int mahh, int sl)
        {
            List<CartItem> gioHang = Carts;
            //tìm xem có chưa
            CartItem item = gioHang.SingleOrDefault(p => p.MaHh == mahh);
            if (item != null) //có rồi
            {
                item.SoLuong++;
            }
            else
            {
                SanPham hh = db.SanPham.SingleOrDefault(p => p.MaSp == mahh);
                item = new CartItem
                {
                    MaHh = hh.MaSp,
                    TenHh = hh.TenSp,
                    Hinh = hh.Hinh,
                    SoLuong = sl,
                    GiaBan = hh.DonGia.Value,
                };
                gioHang.Add(item);
            }
            //lưu session
            HttpContext.Session.Set("GioHang", gioHang);
            return RedirectToAction("Index");
        }
        [Route("[controller]/[action]")]
        public IActionResult Update(int masua, int sl)
        {
            List<CartItem> giohang = Carts;
            CartItem hh = giohang.SingleOrDefault(p => p.MaHh == masua);
            hh.SoLuong = sl;
            HttpContext.Session.Set("GioHang", giohang);
            return RedirectToAction("Index");
        }
        [Route("[controller]/[action]")]
        public IActionResult Remove(int maxoa)
        {
            List<CartItem> giohang = Carts;
            CartItem hh = giohang.SingleOrDefault(p => p.MaHh == maxoa);
            giohang.Remove(hh);
            HttpContext.Session.Set("GioHang", giohang);
            return RedirectToAction("Index");
        }

        [Route("[controller]/[action]")]
        public IActionResult Delete()
        {
            List<CartItem> giohang = Carts;
            HttpContext.Session.Remove("GioHang");
            return RedirectToAction("Index");
        }



        [Route("[controller]/[action]")]
        public async System.Threading.Tasks.Task<IActionResult> PaypalCheckout()
        {
            var environment = new SandboxEnvironment(_clientId, _secretKey);
            var client = new PayPalHttpClient(environment);

            #region Create Paypal Order
            var itemList = new ItemList()
            {
                Items = new List<Item>()
            };
            var total = Math.Round(Carts.Sum(p => p.ThanhTien) / TyGiaUSD, 2);
            foreach (var item in Carts)
            {
                itemList.Items.Add(new Item()
                {
                    Name = item.TenHh,
                    Currency = "USD",
                    Price = Math.Round(item.GiaBan / TyGiaUSD, 2).ToString(),
                    Quantity = item.SoLuong.ToString(),
                    Sku = "sku",
                    Tax = "0"
                });
            }
            #endregion

            var paypalOrderId = DateTime.Now.Ticks;
            var hostname = $"{HttpContext.Request.Scheme}://{HttpContext.Request.Host}";
            var payment = new Payment()
            {
                Intent = "sale",
                Transactions = new List<Transaction>()
                {
                    new Transaction()
                    {
                        Amount = new Amount()
                        {
                            Total = total.ToString(),
                            Currency = "USD",
                            Details = new AmountDetails
                            {
                                Tax = "0",
                                Shipping = "0",
                                Subtotal = total.ToString()
                            }
                        },
                        ItemList = itemList,
                        Description = $"Invoice #{paypalOrderId}",
                        InvoiceNumber = paypalOrderId.ToString()
                    }
                },
                RedirectUrls = new RedirectUrls()
                {
                    CancelUrl = $"{hostname}/GioHang/CheckoutFail",
                    ReturnUrl = $"{hostname}/GioHang/CheckoutSuccess"
                },
                Payer = new Payer()
                {
                    PaymentMethod = "paypal"
                }
            };

            PaymentCreateRequest request = new PaymentCreateRequest();
            request.RequestBody(payment);

            try
            {
                var response = await client.Execute(request);
                var statusCode = response.StatusCode;
                Payment result = response.Result<Payment>();

                var links = result.Links.GetEnumerator();
                string paypalRedirectUrl = null;
                while (links.MoveNext())
                {
                    LinkDescriptionObject lnk = links.Current;
                    if (lnk.Rel.ToLower().Trim().Equals("approval_url"))
                    {
                        //saving the payapalredirect URL to which user will be redirected for payment  
                        paypalRedirectUrl = lnk.Href;
                    }
                }

                return Redirect(paypalRedirectUrl);
            }
            catch (HttpException httpException)
            {
                var statusCode = httpException.StatusCode;
                var debugId = httpException.Headers.GetValues("PayPal-Debug-Id").FirstOrDefault();

                //Process when Checkout with Paypal fails
                return RedirectToAction("/CheckoutFail");
            }
        }

        [Route("[controller]/[action]")]
        public IActionResult CheckoutFail()
        {
            //Tạo đơn hàng trong database với trạng thái thanh toán là "Chưa thanh toán"
            //Xóa session
            HttpContext.Session.Remove("GioHang");


            return View();
        }
        [Route("[controller]/[action]")]
        public IActionResult CheckoutSuccess()
        {
            double tong = 0;
            //Tạo đơn hàng trong database với trạng thái thanh toán là "Paypal" và thành công
            //Xóa session
           
            List<CartItem> giohang = Carts;
            foreach (var item in giohang)
            {
                tong = tong + item.ThanhTien;
            }
            HttpContext.Session.Set("GioHang", giohang);
            KhachHang kh = HttpContext.Session.Get<KhachHang>("TaiKhoan");
            HoaDon hd = new HoaDon
            {
                MaKh = kh.MaKh,
                HoTen = kh.HoTen,
                DiaChi = "TPHCM",
                MaOnline = "IM"+Math.Round(tong*3, 5).ToString(),
                DienThoai = kh.DienThoai,
                TenNgNhan = kh.HoTen,
                DtngNhan = kh.DienThoai,
                DiaChiNgNhan = kh.DiaChi,
                NgayDat = DateTime.Now,
                CachThanhToan = "Online",
                MaTrangThai = 1,
                PhiVanChuyen = 0,
                TongTien = tong
            };
            db.HoaDon.Add(hd);
            //  db.SaveChanges();
            foreach (var item in Carts)
            {
                SanPham hh = db.SanPham.SingleOrDefault(p => p.MaSp == item.MaHh);
                //Lưu chi tiết hóa đơn
                ChiTietHd cthd = new ChiTietHd
                {
                    MaHd = hd.MaHd,
                    MaSp = item.MaHh,
                    DonGia = hh.DonGia,
                    SoLuong = item.SoLuong,
                };
                db.ChiTietHd.Add(cthd);
                db.SaveChanges();



            }
            //HttpContext.Session.Remove("GioHang");
            return View();
        }
    }
}