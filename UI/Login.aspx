<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="UI_Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" ccontent="width=device-width, initial-scale=1.0" charset=utf-8"/>
    <title></title>
    
</head>
<body>
    <div class="login-wrapper">
        <div class="container">
        </div>
      <form id="Form1" runat="server">
         <div class="form-wrapper">  
             <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 周边平台交易系统</h1>
              <asp:Label ID="Label1" runat="server" Text="用户"></asp:Label>   
              <asp:TextBox ID="TextBox2" runat="server" placeholder="username" class="input-item"></asp:TextBox>
              <br />
              <asp:Label ID="Label2" runat="server" Text="密码"></asp:Label>
              <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"  placeholder="password" class="input-item"></asp:TextBox>  
             </div>   
              <br />    
          <asp:Button ID="Button1" runat="server" Text="登录"   OnClick="Button1_Click"/>
    </form>
    </div> 
</body>
</html>