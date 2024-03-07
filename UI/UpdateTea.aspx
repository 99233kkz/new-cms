<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateTea.aspx.cs" Inherits="UI_UpdateTea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="div1">
            <div class="div2">
             <div class="function">
            <h2>修改老师用户</h2>
                <p>
           
                <input type="text" name="teachername" id="teachername" placeholder="teachername" runat="server"/> 
                <input type="text" name="teacherid" id="teacherid" placeholder="teacherid" runat="server"/> 
                <input type="text" name="gender" id="gender" placeholder="sex" runat="server"/>
                <input type="text" name="dept" id="dept" placeholder="dept" runat="server"/>
                <asp:Button ID="Button2" runat="server" Text="提交" OnClick="Button2_Click"/>
               </p>
                  </div>
                 </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" text-align="center"></asp:GridView>   
    </form>
</body>
</html>
