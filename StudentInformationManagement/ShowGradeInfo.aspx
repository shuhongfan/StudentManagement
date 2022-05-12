<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowGradeInfo.aspx.cs" Inherits="StudentInformationManagement.gradeInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="layui/css/layui.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <br />
    <div style="width:85%">
        <blockquote class="site-text layui-elem-quote">
          成绩信息  >  成绩信息列表
        </blockquote>
 
  <div class="layui-inline">
    <label class="layui-label">成绩编号</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="gradeID" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox> 
    </div>
 </div>
 <div class="layui-inline">
      <label class="layui-form-label">学生对象</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="gradeStuName" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox>
    </div>
</div>
 <div class="layui-inline">
      <label class="layui-form-label">所学科目</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="gradeCourse" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox>
    </div>
 </div>
 <div class="layui-inline">
     <label class="layui-form-label"></label>
      <asp:Button ID="btnSearch" runat="server"   Text="查询"  CssClass="layui-btn" OnClick="btnSearch_Click"/> 
  </div>
        <asp:GridView CSSClass="layui-table" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="gradeid" HeaderText="成绩编号" />
                <asp:BoundField DataField="gradestuname" HeaderText="学生姓名" />
                <asp:BoundField DataField="gradecourse" HeaderText="所学课程" />
                <asp:BoundField DataField="gradenumber" HeaderText="成绩得分" />
                <asp:BoundField DataField="gradeothers" HeaderText="其它" />
            </Columns>
        </asp:GridView>

        <asp:Button ID="Button1" runat="server" Text="返回" Visible="False" CssClass="layui-btn" OnClick="Button1_Click" />
        <br />


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString2 %>" SelectCommand="SELECT [gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers] FROM [gradeinfo]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [gradeinfo] WHERE [gradeid] = @original_gradeid AND [gradestuname] = @original_gradestuname AND [gradecourse] = @original_gradecourse AND [gradenumber] = @original_gradenumber AND (([gradeothers] = @original_gradeothers) OR ([gradeothers] IS NULL AND @original_gradeothers IS NULL))" InsertCommand="INSERT INTO [gradeinfo] ([gradeid], [gradestuname], [gradecourse], [gradenumber], [gradeothers]) VALUES (@gradeid, @gradestuname, @gradecourse, @gradenumber, @gradeothers)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [gradeinfo] SET [gradestuname] = @gradestuname, [gradecourse] = @gradecourse, [gradenumber] = @gradenumber, [gradeothers] = @gradeothers WHERE [gradeid] = @original_gradeid AND [gradestuname] = @original_gradestuname AND [gradecourse] = @original_gradecourse AND [gradenumber] = @original_gradenumber AND (([gradeothers] = @original_gradeothers) OR ([gradeothers] IS NULL AND @original_gradeothers IS NULL))">
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
