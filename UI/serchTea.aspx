<%@ Page Language="C#" AutoEventWireup="true" CodeFile="serchTea.aspx.cs" Inherits="UI_serchTea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
             <div> <div class="function">
            <h2>查找老师</h2>
                  
          <p>
                <input type="text" name="number" id="number" placeholder="请输入工号" runat="server"/> 
                <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
         </p>
          <p>
                <input type="text" name="name" id="name" placeholder="请输入姓名" runat="server"/> 
                <asp:Button ID="Button2" runat="server" Text="查询" OnClick="Button2_Click" />
         </p>
                  <p>
                <input type="text" name="dept" id="dept" placeholder="请输入系" runat="server"/> 
                <asp:Button ID="Button3" runat="server" Text="查询" OnClick="Button3_Click" />
         </p>
            <asp:GridView ID="GridView1" runat="server" text-align="center"></asp:GridView>
          </div>
     </div>
     
    </form>
</body>
</html>
