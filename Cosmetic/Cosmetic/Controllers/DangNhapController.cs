using System;
using System.Net;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Cosmetic.Models;
using Microsoft.AspNetCore.Mvc;
using System.Text.RegularExpressions;
using Cosmetic.Encrytions;
using Newtonsoft.Json;
using EC.SecurityService.Common;
using Cosmetic.Services;
using EC.SecurityService.Services;

namespace Cosmetic.Controllers
{
    public class DangNhapController : Controller
    {

        private readonly MyPhamContext db;
        private static string phonenum;
        //private string key = "Cyg-X1"; //key to encrypt and decrypt
        PasswordHasher passwordHasher = new PasswordHasher();
        //Encrytion ecr = new Encrytion(); // Encrypt HoTen, DiaChi, DienThoai, Email 
        public DangNhapController(MyPhamContext context)// IAuthy auth, ISmsService smsService)
        {
            //  _authy = auth;
            db = context;
            // _smsService = smsService;
        }
        public IActionResult Index()
        {
            return View();
        }
        [Route("[controller]/[action]")]
        //  public async Task<IActionResult> DangNhap(LoginViewModel model)
        public ActionResult DangNhap(LoginViewModel model)
        {
            if (ModelState.IsValid)
            {
                KhachHang kh = db.KhachHang.SingleOrDefault(p => p.MaKh == model.MaKh && /*p.MatKhau==model.MatKhau);*/
                passwordHasher.VerifyHashedPassword(p.MatKhau, model.MatKhau) == PasswordVerificationResult.Success);
                if (kh == null)
                {
                    ModelState.AddModelError("Loi", "Thông tin tài khoản hoặc mật khẩu không hợp lệ.");
                    return View("Index");
                }
                else
                {
                    HttpContext.Session.Set("TaiKhoan", kh);
                    return RedirectToAction("Index", "Home");

                    #region try catch
                    /*try


                    {
                        //HttpContext.Session.Set("TaiKhoan", kh);
                        //return RedirectToAction("Index", "Home");
                        if (kh != null && !string.IsNullOrEmpty(kh.AuthyId))
                        {
                            phonenum = kh.DienThoai;
                            var sendSMSResponse = await _authy.SendSmsAsync(kh.AuthyId).ConfigureAwait(false);

                            if (sendSMSResponse.StatusCode == HttpStatusCode.OK)
                            {
                                var smsVerificationSucceedObject = JsonConvert.DeserializeObject<AccessCodeVerifyResult>(await sendSMSResponse.Content.ReadAsStringAsync());
                                if (smsVerificationSucceedObject.Success)
                                {
                                    //Send SMS success
                                    return View("XacMinhDangNhap");
                                    throw new UserDefException($"Gửi token thành công tới {phonenum}");

                                }
                                else
                                {
                                    //Fail
                                    throw new UserDefException($"Có lỗi gửi tin nhắn tới {phonenum}");
                                }
                            }
                        }
                        else
                            throw new UserDefException($"Không có khách hàng nào có điện thoại: {phonenum}");
                    }
                    catch (UserDefException e)
                    {
                        ViewBag.Result = e.Message;
                    }
                    catch (Exception e)
                    {
                         ViewBag.Result = e.Message;
                    }*/
                    #endregion
                }

            }
            return View("Index");
        }
        [HttpGet]
        [Route("[controller]/[action]")]
        public IActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        [Route("[controller]/[action]")]
        public async Task<IActionResult> DangKy(RegisterModel model)
        {
            var temp = 0;
            if (ModelState.IsValid)
            {


                if (!Regex.IsMatch(model.Email, @"\A(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?)\Z", RegexOptions.IgnoreCase))
                {
                    throw new UserDefException("Email không hợp lệ!");
                }
                else
                {
                    var user = new KhachHang();
                    user.MaKh = model.UserName;
                    user.MatKhau = passwordHasher.HashPassword(model.PassWord);
                    //  user.MatKhau = model.PassWord;
                    user.HoTen = model.Name;
                    user.GioiTinh = model.GioiTinh;
                    user.NgaySinh = model.NgaySinh;
                    user.DiaChi = model.Diachi;
                    user.PhoneNumber = model.Phonenumer;
                    db.Add(user);
                    await db.SaveChangesAsync();
                    temp = 1;
                }
                if (temp > 0)
                {
                    ViewBag.Success = "Đăng ký thành công!!";
                    temp = 0;
                }
            }
            // return View(model);
            return View("DangKy");
        }


        [Route("[controller]/[action]")]
        public IActionResult DangXuat()
        {
            //xóa session
            HttpContext.Session.Remove("TaiKhoan");
            return RedirectToAction("Index", "Home");
        }


    }
}