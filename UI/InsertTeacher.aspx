<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InsertTeacher.aspx.cs" Inherits="UI_InsertTeacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> <div class="function">
            <h2>添加老师</h2>
              
            <p style="text-indent:2em">
                <asp:Label ID="Label1" runat="server" Text="姓名"></asp:Label>
                <asp:TextBox ID="TextBox1TEAC" runat="server"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="工号"></asp:Label>
                <asp:TextBox ID="TextBox2TEAC" runat="server"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="性别"></asp:Label>
                <asp:TextBox ID="TextBox3TEAC" runat="server"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" Text="系别"></asp:Label>
                <asp:TextBox ID="TextBox4TEAC" runat="server"></asp:TextBox>
            </p>
                <asp:Button ID="ButtonSubitTeacher" runat="server" Text="提交" OnClick="ButtonSubitTeacher_Click" />
       <asp:GridView ID="GridViewTeacher" runat="server"  text-align="center"></asp:GridView>
            </div>
             </div>
    
    </form>
</body>
</html>
