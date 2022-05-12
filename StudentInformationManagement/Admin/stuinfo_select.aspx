<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stuinfo_select.aspx.cs" Inherits="StudentInformationManagement.Admin.stuinfo_select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../layui/css/layui.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="stuid" DataSourceID="SqlDataSource1"  CssClass="layui-table">
                <Columns>
                    <asp:BoundField DataField="stuid" HeaderText="学号" ReadOnly="True" SortExpression="stuid" />
                    <asp:BoundField DataField="stuname" HeaderText="姓名" SortExpression="stuname" />
                    <asp:BoundField DataField="stugender" HeaderText="性别" SortExpression="stugender" />
                    <asp:BoundField DataField="stuclass" HeaderText="所在班级" SortExpression="stuclass" />
                    <asp:BoundField DataField="stutelephone" HeaderText="联系电话" SortExpression="stutelephone" />
                    <asp:BoundField DataField="stuemail" HeaderText="邮箱" SortExpression="stuemail" />
                    <asp:BoundField DataField="stuQQ" HeaderText="QQ" SortExpression="stuQQ" />
                    <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString2 %>" DeleteCommand="DELETE FROM [stuinfo] WHERE [stuid] = @original_stuid AND [stuname] = @original_stuname AND [stugender] = @original_stugender AND [stuclass] = @original_stuclass AND [stutelephone] = @original_stutelephone AND [stuemail] = @original_stuemail AND [stuQQ] = @original_stuQQ" InsertCommand="INSERT INTO [stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (@stuid, @stuname, @stugender, @stuclass, @stutelephone, @stuemail, @stuQQ)" SelectCommand="SELECT [stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ] FROM [stuinfo]" UpdateCommand="UPDATE [stuinfo] SET [stuname] = @stuname, [stugender] = @stugender, [stuclass] = @stuclass, [stutelephone] = @stutelephone, [stuemail] = @stuemail, [stuQQ] = @stuQQ WHERE [stuid] = @original_stuid AND [stuname] = @original_stuname AND [stugender] = @original_stugender AND [stuclass] = @original_stuclass AND [stutelephone] = @original_stutelephone AND [stuemail] = @original_stuemail AND [stuQQ] = @original_stuQQ" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_stuid" Type="String" />
                    <asp:Parameter Name="original_stuname" Type="String" />
                    <asp:Parameter Name="original_stugender" Type="String" />
                    <asp:Parameter Name="original_stuclass" Type="String" />
                    <asp:Parameter Name="original_stutelephone" Type="String" />
                    <asp:Parameter Name="original_stuemail" Type="String" />
                    <asp:Parameter Name="original_stuQQ" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="stuid" Type="String" />
                    <asp:Parameter Name="stuname" Type="String" />
                    <asp:Parameter Name="stugender" Type="String" />
                    <asp:Parameter Name="stuclass" Type="String" />
                    <asp:Parameter Name="stutelephone" Type="String" />
                    <asp:Parameter Name="stuemail" Type="String" />
                    <asp:Parameter Name="stuQQ" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="stuname" Type="String" />
                    <asp:Parameter Name="stugender" Type="String" />
                    <asp:Parameter Name="stuclass" Type="String" />
                    <asp:Parameter Name="stutelephone" Type="String" />
                    <asp:Parameter Name="stuemail" Type="String" />
                    <asp:Parameter Name="stuQQ" Type="String" />
                    <asp:Parameter Name="original_stuid" Type="String" />
                    <asp:Parameter Name="original_stuname" Type="String" />
                    <asp:Parameter Name="original_stugender" Type="String" />
                    <asp:Parameter Name="original_stuclass" Type="String" />
                    <asp:Parameter Name="original_stutelephone" Type="String" />
                    <asp:Parameter Name="original_stuemail" Type="String" />
                    <asp:Parameter Name="original_stuQQ" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
