<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateStu.aspx.cs" Inherits="UI_UpdateStu" %>

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
            <h2>修改学生用户</h2>
                <p>
                <input type="text" name="studentid" id="SId" placeholder="SId" runat="server"/> 
                <input type="text" name="Name" id="Name" placeholder="Name" runat="server"/> 
                <input type="text" name="Dept" id="Dept" placeholder="Dept" runat="server"/>
                <input type="text" name="Class" id="Class" placeholder="Class" runat="server"/>
                <asp:Button ID="Button2" runat="server" Text="提交" OnClick="Button2_Click1"/>
               </p>
                  </div>
                 </div>
        </div>
                  <asp:GridView ID="GridView1" runat="server" text-align="center"></asp:GridView>
    </form>
</body>
</html>
