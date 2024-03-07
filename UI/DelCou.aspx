<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DelCou.aspx.cs" Inherits="UI_DelCou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        
        <div> <div> <div class="function">
            <h2>删除课程</h2>
              
            <p>
               <input type="text" name="number" id="number" placeholder="请输入删除课程号" runat="server"/> 
                <asp:Button ID="Button1" runat="server" Text="删除" OnClick="Button1_Click"/>

            </p> 
       <asp:GridView ID="GridView1" runat="server"  text-align="center"></asp:GridView>
            </div>
             </div>
        </div>
    </form>
</body>
</html>
