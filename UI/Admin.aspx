<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="UI_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div> <div class="function">
             <p style="text-indent:2em">
            <asp:Button ID="Button1" runat="server" Text="添加老师用户" OnClick="Button1_Click" />
                
            <asp:Button ID="Button2" runat="server" Text="添加学生用户"  OnClick="Button2_Click"/>
                
            <asp:Button ID="Button3" runat="server" Text="修改用户信息"  OnClick="Button3_Click" />

            <asp:Button ID="Button4" runat="server" Text="管理课程信息"  OnClick ="Button4_Click" />
           
            <asp:Button ID="Button5" runat="server" Text="添加课程"   OnClick="Button5_Click" />
                <br />        
              
                 </p>

        </div>
        </div>
    </form>
</body>
</html>
