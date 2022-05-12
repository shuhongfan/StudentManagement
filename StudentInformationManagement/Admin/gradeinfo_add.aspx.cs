using demon;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentInformationManagement.Admin
{
    public partial class gradeinfo_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_submint_Click(object sender, EventArgs e)
        {
            string text1 = TextBox_gradeid.Text.Trim();
            string text2 = TextBox_gradestuname.Text.Trim();
            string text3 = TextBox_gradecourse.Text.Trim();
            string text4 = TextBox_grade.Text.Trim();
            string text5 = TextBox_gradeothers.Text.Trim();
            if ("".Equals(text5))
            {
                text5 = "无";
            }
            if ("".Equals(text1) || !Common.Checknum(text1) || "".Equals(text2) || "".Equals(text3) || "".Equals(text4) )
            {
                Response.Write("<script>alert('输入信息不规范！');</script>");
            }
            else
            {
                string sqlStr = "select count(*) from gradeinfo where gradeid='" + text1 + "'";
                if (Common.ExecuteNum(sqlStr) == 1)
                {
                    Response.Write("<script>alert('该成绩编号已存在！');</script>");
                }
                else
                {
                    string sqlStr2 = "Insert into gradeinfo(gradeid,gradestuname,gradecourse,gradenumber,gradeothers) Values ('" + text1 + "','" + text2 + "','" + text3 + "','" + text4 + "','" + text5 + "')";
                    Common.ExecuteSql(sqlStr2);
                    Response.Write("<script>alert('成绩信息添加成功！');</script>");
                    Response.Redirect("~/Admin/gradeinfo_select.aspx");
                }
            }
        }
    }
}