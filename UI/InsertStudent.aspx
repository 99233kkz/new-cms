<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertStudent.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员页面</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="function">
            <h2>添加学生</h2>
             
            <p>
                <asp:Label ID="Label1" runat="server" Text="学号"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="姓名"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="科系"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Text="班级"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </p>             
            <asp:Button ID="ButtonSubmitStudent" runat="server" Text="提交" OnClick="ButtonSubmit_Click"/>                  
        <asp:GridView ID="GridView1" runat="server"  text-align="center"></asp:GridView>
        </div>
 
       </form>
</body>
</html>
