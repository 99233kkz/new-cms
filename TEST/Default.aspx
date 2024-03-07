<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="TEST_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
                <Columns>
                    <asp:BoundField DataField="Course1" HeaderText="Course1" SortExpression="Course1" />
                    <asp:BoundField DataField="CourseId" HeaderText="CourseId" SortExpression="CourseId" />
                    <asp:BoundField DataField="StuTime" HeaderText="StuTime" SortExpression="StuTime" />
                    <asp:BoundField DataField="StuCredits" HeaderText="StuCredits" SortExpression="StuCredits" />
                    <asp:BoundField DataField="TeachTime" HeaderText="TeachTime" SortExpression="TeachTime" />
                    <asp:BoundField DataField="Dept" HeaderText="Dept" SortExpression="Dept" />
                    <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" SortExpression="TeacherId" />
                </Columns>
            </asp:GridView>
            <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="CourseManagementSystemDataContext" EntityTypeName="" TableName="Course"></asp:LinqDataSource>
        </div>
    </form>
</body>
</html>
