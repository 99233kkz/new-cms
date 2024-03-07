using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Linq;
using System.Configuration;



public partial class UI_StudentFunc : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string Id;
        Id = Session["Id"].ToString();
        string strcon = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;//从web.config文件中读取连接字符串
        SqlConnection con2 = new SqlConnection(strcon);//定义连接对象
        SqlCommand cmd2 = new SqlCommand();//创建命令对象
        cmd2.Connection = con2;//设置命令对象的数据库连接属性
        cmd2.CommandText = "select * from Student where SId= '" + Id + "'";//把SQL语句赋给命令对象
        con2.Open();//打开数据库连接
                    //Response.Write("连接数据库查询成功");
        SqlDataReader sdr = cmd2.ExecuteReader();//执行SQL命令，并获取查询结果
        GridView3.DataSource = sdr;//将查询结果连接到GridView1中
        GridView3.DataBind();//将结果与GridView1绑定

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string Id;
        Id = Session["Id"].ToString();
        int Canshu = Convert.ToInt32(Id);


        CourseManagementSystemDataContext db = new CourseManagementSystemDataContext();
        var result = from a in db.Score
                     join b in db.Course on a.CId equals b.CId
                     where a.SId == Canshu
                     select new
                     {
                         b.Course1,
                     };
        GridView3.DataSource = result;//将查询结果连接到GridView1中
        GridView3.DataBind();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string Id;
        Id = Session["Id"].ToString();
        int Canshu = Convert.ToInt32(Id);


        CourseManagementSystemDataContext db = new CourseManagementSystemDataContext();
        var result = from a in db.Score
                     join b in db.Course on a.CId equals b.CId
                     where a.SId == Canshu
                     select new
                     {
                         b.Course1,
                         a.Score1

                     };
        GridView3.DataSource = result;//将查询结果连接到GridView1中
        GridView3.DataBind();

    }


    /************************学分****************/
    protected void Button3_Click(object sender, EventArgs e)
    {
        string Id;
        Id = Session["Id"].ToString();
        int Canshu = Convert.ToInt32(Id);
        
        CourseManagementSystemDataContext db = new CourseManagementSystemDataContext();


       
        var result = from r in db.Score
                     join c in db.Course on r.CId equals c.CId
                     where r.SId == Canshu
                     
                     select new
                     {
                        c.SCredits,
                        
                     };
                    
        GridView3.DataSource = result;//将查询结果连接到GridView1中
        GridView3.DataBind();
    }
}

