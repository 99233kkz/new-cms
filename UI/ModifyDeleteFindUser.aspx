<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModifyDeleteFindUser.aspx.cs" Inherits="UI_ModifyDeleteFind" %>

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
            <h2>管理信息</h2>
               
            <asp:Button ID="Button1" runat="server" Text="修改学生信息"  OnClick="Button1_Click" />      
            <asp:Button ID="Button3" runat="server" Text="查找学生用户"   OnClick ="Button3_Click" />          
            <asp:Button ID="Button4" runat="server" Text="修改老师信息"  OnClick="Button4_Click" />            
            <asp:Button ID="Button5" runat="server" Text="删除老师信息"   OnClick="Button5_Click"/>             
            <asp:Button ID="Button6" runat="server" Text="查找老师用户"   OnClick="Button6_Click" />                   
            </div> 
        </div>
    </form>
</body>
</html>
