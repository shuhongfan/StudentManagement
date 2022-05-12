<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowStuInfo.aspx.cs" Inherits="StudentInformationManagement.ShowStuInfo" %>

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
          学生信息  >  学生信息列表
        </blockquote>
 
  <div class="layui-inline">
    <label class="layui-label">学号</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="stuID" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox> 
    </div>
 </div>
 <div class="layui-inline">
      <label class="layui-form-label">姓名</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="stuName" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox>
    </div>
</div>
 <div class="layui-inline">
      <label class="layui-form-label">班级</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="stuClass" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox>
    </div>
 </div>
 <div class="layui-inline">
     <label class="layui-form-label"></label>
      <asp:Button ID="btnSearch" runat="server"   Text="查询"  CssClass="layui-btn" OnClick="btnSearch_Click"/> 
  </div>
        <asp:GridView CSSClass="layui-table" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="stuid" HeaderText="学号" />
                <asp:BoundField DataField="stuname" HeaderText="姓名" />
                <asp:BoundField DataField="stugender" HeaderText="性别" />
                <asp:BoundField DataField="stuclass" HeaderText="所在班级" />
                <asp:BoundField DataField="stutelephone" HeaderText="联系电话" />
                <asp:BoundField DataField="stuemail" HeaderText="邮箱" />
                <asp:BoundField DataField="stuQQ" HeaderText="QQ" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="返回" Visible="False" CssClass="layui-btn" OnClick="Button1_Click" />
        <br />


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString2 %>" SelectCommand="SELECT [stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ] FROM [stuinfo]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [stuinfo] WHERE [stuid] = @original_stuid AND [stuname] = @original_stuname AND [stugender] = @original_stugender AND [stuclass] = @original_stuclass AND [stutelephone] = @original_stutelephone AND [stuemail] = @original_stuemail AND [stuQQ] = @original_stuQQ" InsertCommand="INSERT INTO [stuinfo] ([stuid], [stuname], [stugender], [stuclass], [stutelephone], [stuemail], [stuQQ]) VALUES (@stuid, @stuname, @stugender, @stuclass, @stutelephone, @stuemail, @stuQQ)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [stuinfo] SET [stuname] = @stuname, [stugender] = @stugender, [stuclass] = @stuclass, [stutelephone] = @stutelephone, [stuemail] = @stuemail, [stuQQ] = @stuQQ WHERE [stuid] = @original_stuid AND [stuname] = @original_stuname AND [stugender] = @original_stugender AND [stuclass] = @original_stuclass AND [stutelephone] = @original_stutelephone AND [stuemail] = @original_stuemail AND [stuQQ] = @original_stuQQ">
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
