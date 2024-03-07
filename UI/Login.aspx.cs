using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class UI_Login : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Id"] = TextBox2.Text;
    }
    private enum LoginResult
    {
        Success,
        UserNotExist,
        PasswordWrong
    }

    public string connStr = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

    
    protected void Button1_Click(object sender, EventArgs e)
    {


        string UserIdLogin = TextBox2.Text;
        string UserPasswordLogin = TextBox1.Text;
        Session["Id"] = UserIdLogin;
        ;
        SqlConnection conn = new SqlConnection(connStr);

        string sql = "select * from Customer Where [cid]='" + UserIdLogin + "' And  [pwd] ='" + UserPasswordLogin + "'";

        SqlCommand cmd = new SqlCommand(sql, conn);
        //打开conn连接对象
        conn.Open();
        //利用SqlCommand对象，创建SqlDataReader对象，用于判断SQL语句执行的结果
        SqlDataReader dr = cmd.ExecuteReader();
        //如果产生匹配的记录集，则说明用户名和密码相互匹配，可以登录
        if (dr.Read())   //如果有数据，则dr.Read()为Ture
        {

            

            Response.Write("<script>alert('登录成功');</script>");
            if (TextBox2.Text.Trim() == "123456")
            {

                Response.Redirect("~/UI/Admin.aspx");
            }
            else if (TextBox2.Text.Trim().Length <= 3)
            {
                Session["Id"] = UserIdLogin;
                Response.Redirect("~/UI/TeacherFunc.aspx");
            }
            else if (TextBox2.Text.Trim().Length <= 10)
            {
                Session["Id"] = UserIdLogin;
                Response.Redirect("~/UI/StudentFunc.aspx");
            }
        }
        else
        {  //alert()弹窗函数
            Response.Write("<script>alert('用户名或密码错误，请重新输入！');</script>");
        }
    }

}













