<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gradeinfo_select.aspx.cs" Inherits="StudentInformationManagement.Admin.gradeinfo_select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../layui/css/layui.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="gradeid" DataSourceID="SqlDataSource2" CssClass="layui-table" AllowPaging="True" AllowSorting="True">
                <Columns>
                   
                    <asp:BoundField DataField="gradeid" HeaderText="成绩编号" ReadOnly="True" SortExpression="gradeid" />
                    <asp:BoundField DataField="gradestuname" HeaderText="学生姓名" SortExpression="gradestuname" />
                    <asp:BoundField DataField="gradecourse" HeaderText="所学课程" SortExpression="gradecourse" />
                    <asp:BoundField DataField="gradenumber" HeaderText="成绩得分" SortExpression="gradenumber" />
                    <asp:BoundField DataField="gradeothers" HeaderText="其它说明" SortExpression="gradeothers" />
                    <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString2 %>" DeleteCommand="DELETE FROM [gradeinfo] WHERE [gradeid] = @original_gradeid AND [gradestuname] = @original_gradestuname AND [gradecourse] = @original_gradecourse AND [gradenumber] = @original_gradenumber AND (([gradeothers] = @original_gradeothers) OR ([gradeothers] IS NULL AND @original_gradeothers IS NULL))" InsertCommand="INSERT INTO [gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (@gradeid, @gradestuname, @gradecourse, @gradenumber, @gradeothers)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers] FROM [gradeinfo]" UpdateCommand="UPDATE [gradeinfo] SET [gradestuname] = @gradestuname, [gradecourse] = @gradecourse, [gradenumber] = @gradenumber, [gradeothers] = @gradeothers WHERE [gradeid] = @original_gradeid AND [gradestuname] = @original_gradestuname AND [gradecourse] = @original_gradecourse AND [gradenumber] = @original_gradenumber AND (([gradeothers] = @original_gradeothers) OR ([gradeothers] IS NULL AND @original_gradeothers IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_gradeid" Type="String" />
                    <asp:Parameter Name="original_gradestuname" Type="String" />
                    <asp:Parameter Name="original_gradecourse" Type="String" />
                    <asp:Parameter Name="original_gradenumber" Type="String" />
                    <asp:Parameter Name="original_gradeothers" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="gradeid" Type="String" />
                    <asp:Parameter Name="gradestuname" Type="String" />
                    <asp:Parameter Name="gradecourse" Type="String" />
                    <asp:Parameter Name="gradenumber" Type="String" />
                    <asp:Parameter Name="gradeothers" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="gradestuname" Type="String" />
                    <asp:Parameter Name="gradecourse" Type="String" />
                    <asp:Parameter Name="gradenumber" Type="String" />
                    <asp:Parameter Name="gradeothers" Type="String" />
                    <asp:Parameter Name="original_gradeid" Type="String" />
                    <asp:Parameter Name="original_gradestuname" Type="String" />
                    <asp:Parameter Name="original_gradecourse" Type="String" />
                    <asp:Parameter Name="original_gradenumber" Type="String" />
                    <asp:Parameter Name="original_gradeothers" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
