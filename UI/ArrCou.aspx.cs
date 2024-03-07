using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class UI_ArrCou : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;//从web.config文件中读取连接字符串
        SqlConnection con2 = new SqlConnection(strcon);//定义连接对象
        SqlCommand cmd2 = new SqlCommand();//创建命令对象
        cmd2.Connection = con2;//设置命令对象的数据库连接属性
        cmd2.CommandText = "select * from TeaClaI";//把SQL语句赋给命令对象
        con2.Open();//打开数据库连接
                    //Response.Write("连接数据库查询成功");
        SqlDataReader sdr = cmd2.ExecuteReader();//执行SQL命令，并获取查询结果
        GridView3.DataSource = sdr;//将查询结果连接到GridView1中
        GridView3.DataBind();//将结果与GridView1绑定


    }

    protected void ButtonSubitCourse_Click(object sender, EventArgs e)
    {
        string Class = TextBox1.Text;
        string CourseId = TextBox2.Text;
        string Teacher = TextBox3.Text;
        string CourseName = TextBox4.Text;

        string strcon = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;//从web.config文件中读取连接字符串
        SqlConnection con2 = new SqlConnection(strcon);//定义连接对象
        SqlCommand cmd2 = new SqlCommand();//创建命令对象
        cmd2.Connection = con2;//设置命令对象的数据库连接属性
        cmd2.CommandText = "insert into TeaClaI(Class,CId,Teacher,CourseName) values('"
                + Class + "','" + CourseId + "','" + Teacher + "','" + CourseName + "')";
        //把SQL语句赋给命令对象
        try
        {
            con2.Open();//打开数据库连接
                        //Response.Write("连接数据库查询成功");
            SqlDataReader sdr = cmd2.ExecuteReader();//执行SQL命令，并获取查询结果
            cmd2.Connection = con2;//设置命令对象的数据库连接属性
            cmd2.CommandText = "select * from TeaClaI";//把SQL语句赋给命令对象
            con2.Close();//关闭数据库连接
            con2.Open();//打开数据库连接
                        //Response.Write("连接数据库查询成功");
            sdr = cmd2.ExecuteReader();//执行SQL命令，并获取查询结果
            GridView3.DataSource = sdr;//将查询结果连接到GridView1中
            GridView3.DataBind();//将结果与GridView1绑定
                                 //Button1.Attributes.Add("Button1_Click", "{javascript:form1.reset();return   false;}");
        }
        catch (Exception ex)
        {
            Response.Write("连接失败，原因是" + ex.Message);
        }
        finally
        {
            if (con2.State == System.Data.ConnectionState.Open) //判断数据库连接是否关闭
                con2.Close();//关闭数据库连接
        }
    }
}