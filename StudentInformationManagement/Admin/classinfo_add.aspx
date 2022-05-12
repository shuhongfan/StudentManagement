<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="classinfo_add.aspx.cs" Inherits="StudentInformationManagement.classinfo_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../layui/css/layui.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server" class="layui-form" style="margin-left:50px; margin-top:40px;">
         <div class="layui-form-item">
        <label class="layui-form-label">班级编号</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_classid" runat="server" CssClass="layui-input" placeholder="请输入四位数班级编号"></asp:TextBox>
        </div>
     </div>
         <div class="layui-form-item">
        <label class="layui-form-label">班级名称</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_classname" runat="server" CssClass="layui-input" placeholder="请输入班级名称"></asp:TextBox>
        </div>
     </div>
         <div class="layui-form-item">
        <label class="layui-form-label">所属专业</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_classmajor" runat="server" CssClass="layui-input" placeholder="请输入班级所属专业"></asp:TextBox>
        </div>
     </div>
        <div class="layui-form-item">
        <label class="layui-form-label">班级人数</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_classstunum" runat="server" CssClass="layui-input" placeholder="请输入班级人数"></asp:TextBox>
        </div>
     </div>
        <div class="layui-form-item">
    <div class="layui-input-block">
        <asp:Button ID="Button_submint" runat="server" Text="提交" CssClass="layui-btn" OnClick="Button_submint_Click"/>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>

    </form>
</body>
</html>
