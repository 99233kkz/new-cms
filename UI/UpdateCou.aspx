<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateCou.aspx.cs" Inherits="UI_updateCou" %>

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
            <h2>修改课程</h2>
                <p>
                <input type="text" name="course" id="course" placeholder="课程名" runat="server"/> 
                <input type="text" name="CId" id="CId" placeholder="课程号" runat="server"/>     
                <input type="text" name="STime" id="STime" placeholder="学时" runat="server"/> 
                <input type="text" name="SCredits" id="SCredits" placeholder="学分" runat="server"/> 
                <input type="text" name="teachtime" id="teachtime" placeholder="教学时常" runat="server"/>
                <input type="text" name="dept" id="dept" placeholder="科系" runat="server"/>
                <input type="text" name="TId" id="TId" placeholder="教师工号" runat="server"/>
                     <asp:Button ID="Button2" runat="server" Text="提交" OnClick="Button2_Click"/>
               </p>
                  </div>
                 </div>
        </div>
                  <asp:GridView ID="GridView1" runat="server" text-align="center"></asp:GridView> 
    </form>
</body>
</html>
