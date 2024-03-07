using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Class1 的摘要说明
/// </summary>

public class sql
{
    public sql()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

/*************连接********/
    public static SqlConnection con()
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "这里写数据库的连接字符串";
        conn.Open();
        return conn;
    }
    /**********执行**********/
    public static SqlCommand comd(string sql)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con();
        cmd.CommandText = sql;//传入的sql语句
        return cmd;
    }
}
