using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class UI_TeacherFunc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Id;
        Id = Session["Id"].ToString();
        string strcon = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;//从web.config文件中读取连接字符串
        SqlConnection con2 = new SqlConnection(strcon);//定义连接对象
        SqlCommand cmd2 = new SqlCommand();//创建命令对象
        cmd2.Connection = con2;//设置命令对象的数据库连接属性
        cmd2.CommandText = "select  Course from Course  where TId= '" + Id + "'";//把SQL语句赋给命令对象
        con2.Open();//打开数据库连接
                    //Response.Write("连接数据库查询成功");
        SqlDataReader sdr = cmd2.ExecuteReader();//执行SQL命令，并获取查询结果
        GridView1.DataSource = sdr;//将查询结果连接到GridView1中
        GridView1.DataBind();//将结果与GridView1绑定 

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Id;
        Id = Session["Id"].ToString();

        string strcon = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;//从web.config文件中读取连接字符串
        SqlConnection con2 = new SqlConnection(strcon);//定义连接对象
        SqlCommand cmd2 = new SqlCommand();//创建命令对象
        cmd2.Connection = con2;//设置命令对象的数据库连接属性
        cmd2.CommandText = " declare @i int  set i=1 where Course.TId= '" + Id + "' while @i<15 begin insert into  Score(Score) values(@i) set @i=@i+1 end";


        //把SQL语句赋给命令对象
        try
        {
            con2.Open();//打开数据库连接
                        //Response.Write("连接数据库查询成功");
            SqlDataReader sdr = cmd2.ExecuteReader();//执行SQL命令，并获取查询结果
            cmd2.Connection = con2;//设置命令对象的数据库连接属性
            cmd2.CommandText = "select * from Student";//把SQL语句赋给命令对象
            con2.Close();//关闭数据库连接
            con2.Open();//打开数据库连接
                        //Response.Write("连接数据库查询成功");
            sdr = cmd2.ExecuteReader();//执行SQL命令，并获取查询结果
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
            if (con2.State == System.Data.ConnectionState.Open) //判断数据库连接是否关闭
                con2.Close();//关闭数据库连接
        }
   }
      
}