<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowClassInfo.aspx.cs" Inherits="StudentInformationManagement.ShowClassInfo" %>

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
          班级信息  >  班级信息列表
        </blockquote>
 
  <div class="layui-inline">
    <label class="layui-label">班级编号</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="classNumber" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox> 
    </div>
 </div>
 <div class="layui-inline">
      <label class="layui-form-label">班级名称</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="className" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox>
    </div>
</div>
 <div class="layui-inline">
      <label class="layui-form-label">所属专业</label>
    <div class="layui-input-inline" style="width: 100px;">
      <asp:TextBox ID="classMajor" runat="server" Width="135px" CssClass="layui-input"></asp:TextBox>
    </div>
 </div>
 <div class="layui-inline">
     <label class="layui-form-label"></label>
      <asp:Button ID="btnSearch" runat="server"   Text="查询"  CssClass="layui-btn" OnClick="btnSearch_Click"/> 
  </div>
        <asp:GridView CSSClass="layui-table" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="classid" HeaderText="班级id" />
                <asp:BoundField DataField="classname" HeaderText="班级名称" />
                <asp:BoundField DataField="classmajor" HeaderText="专业" />
                <asp:BoundField DataField="classcount" HeaderText="人数" />
            </Columns>

        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StuMangementConnectionString2 %>" SelectCommand="SELECT [classid], [classname], [classmajor], [classcount] FROM [classinfo]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [classinfo] WHERE [classid] = @original_classid AND [classname] = @original_classname AND [classmajor] = @original_classmajor AND [classcount] = @original_classcount" InsertCommand="INSERT INTO [classinfo] ([classid], [classname], [classmajor], [classcount]) VALUES (@classid, @classname, @classmajor, @classcount)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [classinfo] SET [classname] = @classname, [classmajor] = @classmajor, [classcount] = @classcount WHERE [classid] = @original_classid AND [classname] = @original_classname AND [classmajor] = @original_classmajor AND [classcount] = @original_classcount">
            <DeleteParameters>
                <asp:Parameter Name="original_classid" Type="String" />
                <asp:Parameter Name="original_classname" Type="String" />
                <asp:Parameter Name="original_classmajor" Type="String" />
                <asp:Parameter Name="original_classcount" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="classid" Type="String" />
                <asp:Parameter Name="classname" Type="String" />
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


        <asp:Button ID="Button1" runat="server" Text="返回" Visible="False" CssClass="layui-btn" OnClick="Button1_Click" />
        <br />


    </div>
    </form>
   
</body>
</html>
