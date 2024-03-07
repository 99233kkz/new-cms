<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyDeleteFindCourse.aspx.cs" Inherits="UI_ModifyDeleteFindCourse" %>

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
            <h2>课程信息</h2>
                 <asp:Button ID="Button1" runat="server" Text="修改课程"  OnClick="Button1_Click"/>
                 <asp:Button ID="Button2" runat="server" Text="删除课程"  OnClick="Button2_Click"/>
                 <asp:Button ID="Button3" runat="server" Text="查找课程" OnClick="Button3_Click" />
                 <asp:Button ID="Button4" runat="server" Text="排课" OnClick="Button4_Click" />
            </div> 
        </div>
    </form>
</body>
</html>
