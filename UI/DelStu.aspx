<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DelStu.aspx.cs" Inherits="UI_DelStu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div> <div> <div class="function">
            <h2>删除学生</h2>
            <p>
               <input type="text" name="number" id="number" placeholder="输入学号" runat="server"/> 
                <asp:Button ID="Button1" runat="server" Text="删除" OnClick="Button1_Click1"/>
            </p>
       <asp:GridView ID="GridView1" runat="server"  text-align="center"></asp:GridView>
            </div>
             </div>
        </div>
    </form>
  
</body>
</html>
