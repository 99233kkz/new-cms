<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentFunc.aspx.cs" Inherits="UI_StudentFunc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生页面</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="function">
            <h2>学生页</h2> 
            <p>
            <asp:Button ID="Button1" runat="server" Text="查看课程" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="查看成绩"   OnClick ="Button2_Click"/>          
            <asp:Button ID="Button3" runat="server" Text="查看学分"  OnClick ="Button3_Click" />
            </p>
                <asp:GridView ID="GridView3" runat="server"></asp:GridView>

            </div>
     </div>
    </form>
</body>
</html>
