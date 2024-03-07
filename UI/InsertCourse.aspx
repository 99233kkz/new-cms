<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertCourse.aspx.cs" Inherits="UI_InsertCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
          <div> <div class="function">
            <h2>添加新课程</h2>
             
            <p>
                <asp:Label ID="Label1" runat="server" Text="课程名"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"  onclick=""></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="课程编号"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="学时"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Text="学分"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" Text="开课时间"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 <asp:Label ID="Label6" runat="server" Text="系别"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </p>
              <asp:Button ID="ButtonSubitCourse" runat="server" Text="提交" OnClick="ButtonSubitCourse_Click" />
              <asp:GridView ID="GridView3" runat="server"   text-align="center"></asp:GridView>
          <p>
              &nbsp;</p>
          <p>
              &nbsp;</p>
    </form>
</body>
</html>
