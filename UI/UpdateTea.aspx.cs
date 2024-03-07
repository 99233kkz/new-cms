using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class UI_UpdateTea : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;//从web.config文件中读取连接字符串
        SqlConnection con = new SqlConnection(strcon);//定义连接对象
        SqlCommand cmd = new SqlCommand();//创建命令对象
        cmd.Connection = con;//设置命令对象的数据库连接属性
        cmd.CommandText = "select * from Teacher";//把SQL语句赋给命令对象
        con.Open();//打开数据库连接
                   //Response.Write("连接数据库查询成功");
        SqlDataReader sdr = cmd.ExecuteReader();//执行SQL命令，并获取查询结果
        GridView1.DataSource = sdr;//将查询结果连接到GridView1中
        GridView1.DataBind();//将结果与GridView1绑定
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //var name = ConfigXmlDocument.getElementById("number").value;

        var teachername = Request.Form["teachername"].ToString();
        var teacherid = Request.Form["teacherid"].ToString();
        var Dept = Request.Form["gender"].ToString();
        var Class = Request.Form["dept"].ToString();

        //Console.log(number);
        string strcon = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;//从web.config文件中读取连接字符串
        SqlConnection con = new SqlConnection(strcon);//定义连接对象
        SqlCommand cmd = new SqlCommand();//创建命令对象
        cmd.Connection = con;//设置命令对象的数据库连接属性
        cmd.CommandText = "update Teacher set TeacherName='" + teachername + "',TId='" + teacherid
            + "',Gender='" + gender + "',Dept='" + dept + "' where TId= '" + teacherid + "'";//把SQL语句赋给命令对象
        try
        {
            con.Open();//打开数据库连接
                       //Response.Write("连接数据库查询成功");
            SqlDataReader sdr = cmd.ExecuteReader();//执行SQL命令，并获取查询结果
            cmd.Connection = con;//设置命令对象的数据库连接属性
            cmd.CommandText = "select * from Teacher";//把SQL语句赋给命令对象
            con.Close();//关闭数据库连接
            con.Open();//打开数据库连接
                       //Response.Write("连接数据库查询成功");
            sdr = cmd.ExecuteReader();//执行SQL命令，并获取查询结果
            GridView1.DataSource = sdr;//将查询结果连接到GridView1中
            GridView1.DataBind();//将结果与GridView1绑定
                                 //Button1.Attributes.Add("Button1_Click", "{javascript:form1.reset();return   false;}");
        }
        catch (Exception ex)
        {
            Response.Write("连接失败，原因是" + ex.Message);
        }
        finally
        {
            if (con.State == System.Data.ConnectionState.Open) //判断数据库连接是否关闭
                con.Close();//关闭数据库连接
        }

    }

}