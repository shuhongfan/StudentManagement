using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace demon
{
  public  class Common
    {
        private static SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["StuMangementConnectionString2"].ToString());
        private static SqlCommand cmd = new SqlCommand();
        /// <summary>
            /// 执行一条sql语句
            /// </summary>
            /// <param name="sqlStr">sql语句</param>
        public static void ExecuteSql(string sqlStr)
            {
                try
                {       
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlStr;
                cmd.Connection = conn;
                conn.Open();
                cmd.ExecuteNonQuery();
              }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
                finally
                {
                    conn.Close();
                }
            }
        /// <summary>
            /// 返回一个数据集
            /// </summary>
            /// <param name="sqlStr">sql语句</param>
            /// <returns></returns>
        public static DataSet dataSet(string sqlStr)
            {
               SqlDataAdapter da = new SqlDataAdapter(cmd);
               DataSet ds = new DataSet();
            try
            {                          
                conn.Open();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlStr;
                cmd.Connection = conn;
                da.SelectCommand = cmd;
                da.Fill(ds);
               }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
                finally
                {
                  conn.Close();
                }
                return ds;
            }
        /// <summary>
            /// 返回一个数据视图
            /// </summary>
            /// <param name="sqlStr">sql语句</param>
            /// <returns></returns>
        public static DataView dataView(string sqlStr)
            {
               SqlDataAdapter da = new SqlDataAdapter(cmd);          
               DataSet ds = new DataSet();
               DataView dv = new DataView();
            try
                {            
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = sqlStr;
                    cmd.Connection = conn;
                    conn.Open();
                    da.SelectCommand = cmd;
                    da.Fill(ds);
                    dv = ds.Tables[0].DefaultView;
                }
                catch (Exception e)
                {
                    throw new Exception(e.Message);
                }
                finally
                {
                    conn.Close();
                }
                return dv;
            }
        /// <summary>
        /// 统计是否已存在该学生
        /// </summary>
        /// <param name="sqlStr"></param>
        /// <returns></returns>
        public static string ExecuteCount(string sqlStr)
        {
            try
            {
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlStr;
                cmd.Connection = conn;
                conn.Open();
                return (string)cmd.ExecuteScalar();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                conn.Close();
            }
        }
        public static int ExecuteNum(string sqlStr)
        {
            try
            {
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sqlStr;
                cmd.Connection = conn;
                conn.Open();
                return (int)cmd.ExecuteScalar();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            finally
            {
                conn.Close();
            }
        }
        public static bool Checknum(string str)
        {
            Regex r = new Regex("^[0-9]+$");
            if (r.IsMatch(str))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool CheckStuId(string str)
        {
            Regex r = new Regex("^[0-9]{13}$");
            if (r.IsMatch(str))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool IsEmail(string str)
        {
            // 定义邮箱正则表达式
            Regex r = new Regex(@"[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?");
            if (r.IsMatch(str))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool IsPhoneNum(string str)
        {
            Regex r = new Regex(@"^1[3456789]\d{9}$");
            if (r.IsMatch(str))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool IsQQNum(string str)
        {
            Regex r = new Regex(@"^[1-9][0-9]{4,}$");
            if (r.IsMatch(str))
            {
                return true;
            }
            else
            {
                return false;
            }
        }


    }

}

