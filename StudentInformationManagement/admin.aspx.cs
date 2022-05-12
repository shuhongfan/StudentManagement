using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using demon;

namespace StudentInformationManagement
{
    public partial class admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void login_Click(object sender, EventArgs e)
        {
            string user = username.Text.Trim();
            string psd = password.Text.Trim();
             string sqlStr = "select * from admin where admin_user='" + user + "' and admin_password='" +psd + "' ";
            if ("".Equals(user) || "".Equals(psd))
            {
                Response.Write("<script>alert('用户名密码不能为空！');</script>");
            }
            else if (user.Equals(Common.ExecuteCount(sqlStr)))
            {
                Response.Redirect("admin_mainwindow.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户名密码错误！');</script>");
            }
        }

    }
}