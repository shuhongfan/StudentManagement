using demon;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentInformationManagement
{
    public partial class ShowStuInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlStr = "select * from stuinfo ";
            DataSet myds = Common.dataSet(sqlStr);
            GridView1.DataSource = myds;
            GridView1.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string text1 = stuID.Text.Trim();
            string text2 = stuName.Text.Trim();
            string text3 = stuClass.Text.Trim();
            if ("".Equals(text1) && "".Equals(text2) && "".Equals(text3))
            {
                Response.Write("<script>alert('请至少输入一条信息吧！');</script>");
            }
            else
            {
                string sqlStr = "select * from stuinfo ";
                sqlStr += "where stuid = '" + text1 + "' ";
                sqlStr += "or stuname = '" + text2 + "' ";
                sqlStr += "or stuclass =  '" + text3 + "' ";

                DataSet myds = Common.dataSet(sqlStr);

                if (myds.Tables.Count == 1 && myds.Tables[0].Rows.Count == 0)
                {
                    Response.Write("<script>alert('未查询到相关信息！');</script>");
                }
                else
                {
                    GridView1.DataSource = myds;
                    GridView1.DataBind();
                    Button1.Visible = true;
                }


            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            stuID.Text="";
            stuName.Text="";
            stuClass.Text="";
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            string sqlStr = "select * from stuinfo ";
            DataSet myds = Common.dataSet(sqlStr);
            GridView1.DataSource = myds;
            GridView1.DataBind();
        }
    }
}