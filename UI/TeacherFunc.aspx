<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherFunc.aspx.cs" Inherits="UI_TeacherFunc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="function">
            <h2>教师页</h2>
               
            <p>       
            <asp:Button ID="Button1" runat="server" Text="修改成绩"  OnClick ="Button1_Click" />      
                 </p>
            </div>
                <asp:GridView ID="GridView1" runat="server"  text-align="center"></asp:GridView>
                </div>
    </form>
</body>
</html>
