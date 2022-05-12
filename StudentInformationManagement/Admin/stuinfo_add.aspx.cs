using demon;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentInformationManagement.Admin
{
    public partial class stuinfo_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_submint_Click(object sender, EventArgs e)
        {
            string text1 = TextBox_stuid.Text.Trim();
            string text2 = TextBox_stuname.Text.Trim();
            string text3;
            if (RadioButton_male.Checked)
            {
                text3 = "男"; 
            }
            else
            {
                text3 = "女";
            }

            string text4 = TextBox_stuclass.Text.Trim();
            string text5 = TextBox_stuphonenum.Text.Trim();
            string text6 = TextBox_stuemail.Text.Trim();
            string text7 = TextBox_stuqq.Text.Trim();

            if ("".Equals(text1) || !Common.CheckStuId(text1) || "".Equals(text2) || "".Equals(text4)|| "".Equals(text5)|| "".Equals(text6)|| "".Equals(text7)|| !Common.IsPhoneNum(text5)|| !Common.IsEmail(text6)|| !Common.IsQQNum(text7))
            {
                Response.Write("<script>alert('输入信息不规范！');</script>");
            }
            else
            {
                string sqlStr = "select count(*) from stuinfo where stuid='" + text1 + "'";
                if (Common.ExecuteNum(sqlStr) == 1)
                {
                    Response.Write("<script>alert('该学生已存在！');</script>");
                }
                else
                {
                    string sqlStr2 = "Insert into stuinfo(stuid,stuname,stugender,stuclass,stutelephone,stuemail,stuQQ) Values ('" + text1 + "','" + text2 + "','" + text3 + "','" + text4 + "','" + text5 + "','" + text6 + "','" + text7 + "')";
                    Common.ExecuteSql(sqlStr2);
                    Response.Write("<script>alert('学生信息添加成功！');</script>");
                }
            }




        }
    }
}