using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class UI_InsertTeacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;//从web.config文件中读取连接字符串
        SqlConnection con1 = new SqlConnection(strcon);//定义连接对象
        SqlCommand cmd1 = new SqlCommand();//创建命令对象
        cmd1.Connection = con1;//设置命令对象的数据库连接属性
        cmd1.CommandText = "select * from Teacher";//把SQL语句赋给命令对象
        con1.Open();//打开数据库连接
                   //Response.Write("连接数据库查询成功");
        SqlDataReader sdr = cmd1.ExecuteReader();//执行SQL命令，并获取查询结果
        GridViewTeacher.DataSource = sdr;//将查询结果连接到GridView1中
        GridViewTeacher.DataBind();//将结果与GridView1绑定
    }

    protected void ButtonSubitTeacher_Click(object sender, EventArgs e)
    {
        string Teachername = TextBox1TEAC.Text;
        string id = TextBox2TEAC.Text;
        string gender = TextBox3TEAC.Text;
        string dept = TextBox4TEAC.Text; string strcon = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;//从web.config文件中读取连接字符串
        SqlConnection con1 = new SqlConnection(strcon);//定义连接对象
        SqlCommand cmd1 = new SqlCommand();//创建命令对象
        cmd1.Connection = con1;//设置命令对象的数据库连接属性
        cmd1.CommandText = "insert into Teacher(TeacherName,TId,Gender,Dept) values('" + Teachername + "','" + id + "','" + gender + "','"
            + dept + "')";//把SQL语句赋给命令对象
        try
        {
            con1.Open();//打开数据库连接
                       //Response.Write("连接数据库查询成功");
            SqlDataReader sdr = cmd1.ExecuteReader();//执行SQL命令，并获取查询结果
            cmd1.Connection = con1;//设置命令对象的数据库连接属性
            cmd1.CommandText = "select * from Teacher";//把SQL语句赋给命令对象
            con1.Close();//关闭数据库连接
            con1.Open();//打开数据库连接
                       //Response.Write("连接数据库查询成功");
            sdr = cmd1.ExecuteReader();//执行SQL命令，并获取查询结果
            GridViewTeacher.DataSource = sdr;//将查询结果连接到GridView1中
            GridViewTeacher.DataBind();//将结果与GridView1绑定
                                 //Button1.Attributes.Add("Button1_Click", "{javascript:form1.reset();return   false;}");
        }
        catch (Exception ex)
        {
            Response.Write("连接失败，原因是" + ex.Message);
        }
        finally
        {
            if (con1.State == System.Data.ConnectionState.Open) //判断数据库连接是否关闭
                con1.Close();//关闭数据库连接
        }
    }
}
