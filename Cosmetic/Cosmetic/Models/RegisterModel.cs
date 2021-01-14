using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Cosmetic.Models
{
    public class RegisterModel
    {

        [Display(Name = "Tên Đăng Nhập:")]
        [Required(ErrorMessage = "Yêu cầu nhập tên đăng nhập!")]
        public string UserName { set; get; }

        [Display(Name = "Mật Khẩu")]
        [Required(ErrorMessage = "Yêu cầu nhập password!")]
        [StringLength(50, MinimumLength = 6, ErrorMessage = "Độ dài mật khẩu tối thiểu là 6 kí tự!!")]
        public string PassWord { set; get; }
        [Display(Name = "Giới tính")]
        public bool? GioiTinh { get; set; }

        [Display(Name = "Họ và tên:")]
        [Required(ErrorMessage = "Yêu cầu nhập họ tên!")]
        public string Name { set; get; }
        [Display(Name = "Địa chỉ:")]
        public string Diachi { set; get; }
        [Display(Name = "Ngày sinh:")]
        public DateTime NgaySinh { set; get; }
        [Display(Name = "Email:")]
        public string Email { set; get; }
        [Display(Name = "Số điện thoại:")]
        public string Phonenumer { set; get; }
        //public bool PhoneNumberConfirmed { set; get; }

    }
}
