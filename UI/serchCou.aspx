<%@ Page Language="C#" AutoEventWireup="true" CodeFile="serchCou.aspx.cs" Inherits="UI_serchiCou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> <div class="function">
            <h2>查找课程</h2>
  
          <p>
                <input type="text" name="name" id="name" placeholder="请输入查询名字" runat="server"/> 
                <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
                <input type="text" name="dept" id="dept" placeholder="请输入查询系课" runat="server"/> 
                <asp:Button ID="Button2" runat="server" Text="查询"  OnClick="Button2_Click" />
            <asp:GridView ID="GridView1" runat="server" text-align="center" ></asp:GridView>
          </div>
     </div>
    </form>
</body>
</html>
