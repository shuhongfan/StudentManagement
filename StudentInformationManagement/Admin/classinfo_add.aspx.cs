using demon;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentInformationManagement
{
    public partial class classinfo_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_submint_Click(object sender, EventArgs e)
        {
            string text1 = TextBox_classid.Text.Trim();
            string text2 = TextBox_classname.Text.Trim();
            string text3 = TextBox_classmajor.Text.Trim();
            string text4 = TextBox_classstunum.Text.Trim();
            if("".Equals(text1) ||  !Common.Checknum(text1) ||"".Equals(text2) || "".Equals(text3) || !Common.Checknum(text4))
            {
               Response.Write("<script>alert('输入信息不规范！');</script>");
                   
            }
            else
            {
                string sqlStr = "select count(*) from classinfo where classid='" + text1 + "'";
                if (Common.ExecuteNum(sqlStr) == 1)
                {
                    Response.Write("<script>alert('该班级编号已被占用！');</script>");
                }
                else
                {
                    string sqlStr2 = "Insert into classinfo(classid,classname,classmajor,classcount) Values ('" + text1 + "','" + text2 + "','" + text3 + "','" + text4 + "')";
                    Common.ExecuteSql(sqlStr2);
                    Response.Write("<script>alert('班级信息添加成功！');</script>");
                    Response.Redirect("classinfo_select.aspx");
                }
            }


        }
    }
}