<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="classinfo_select.aspx.cs" Inherits="StudentInformationManagement.classinfo_select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../layui/css/layui.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="classid" DataSourceID="SqlDataSource2" CSSClass="layui-table">   
                <Columns >
                    <asp:BoundField DataField="classname" HeaderText="班级名称" SortExpression="classname">
                    </asp:BoundField>
                    <asp:BoundField DataField="classid" HeaderText="班级编号" SortExpression="classid" ReadOnly="True" />
                    <asp:BoundField DataField="classmajor" HeaderText="所属专业" SortExpression="classmajor" />
                    <asp:BoundField DataField="classcount" HeaderText="人数" SortExpression="classcount" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="操作" />
                </Columns>
                    
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString2 %>" DeleteCommand="DELETE FROM [classinfo] WHERE [classid] = @original_classid AND [classname] = @original_classname AND [classmajor] = @original_classmajor AND [classcount] = @original_classcount" InsertCommand="INSERT INTO [classinfo] ([classname], [classid], [classmajor], [classcount]) VALUES (@classname, @classid, @classmajor, @classcount)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [classname], [classid], [classmajor], [classcount] FROM [classinfo]" UpdateCommand="UPDATE [classinfo] SET [classname] = @classname, [classmajor] = @classmajor, [classcount] = @classcount WHERE [classid] = @original_classid AND [classname] = @original_classname AND [classmajor] = @original_classmajor AND [classcount] = @original_classcount">
                <DeleteParameters>
                    <asp:Parameter Name="original_classid" Type="String" />
                    <asp:Parameter Name="original_classname" Type="String" />
                    <asp:Parameter Name="original_classmajor" Type="String" />
                    <asp:Parameter Name="original_classcount" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="classname" Type="String" />
                    <asp:Parameter Name="classid" Type="String" />
                    <asp:Parameter Name="classmajor" Type="String" />
                    <asp:Parameter Name="classcount" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="classname" Type="String" />
                    <asp:Parameter Name="classmajor" Type="String" />
                    <asp:Parameter Name="classcount" Type="String" />
                    <asp:Parameter Name="original_classid" Type="String" />
                    <asp:Parameter Name="original_classname" Type="String" />
                    <asp:Parameter Name="original_classmajor" Type="String" />
                    <asp:Parameter Name="original_classcount" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
  
        </div>
    </form>
</body>
</html>