<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stuinfo_add.aspx.cs" Inherits="StudentInformationManagement.Admin.stuinfo_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../layui/css/layui.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="layui-form" style="margin-left:50px; margin-top:40px;">
         <div class="layui-form-item">
        <label class="layui-form-label">学号</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_stuid" runat="server" CssClass="layui-input" placeholder="请输入学生13位学号"></asp:TextBox>
        </div>
     </div>
         <div class="layui-form-item">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_stuname" runat="server" CssClass="layui-input" placeholder="请输入学生姓名"></asp:TextBox>
        </div>
     </div>
        <div class="layui-form-item">
      <label class="layui-form-label">性别</label>
        <div class="layui-input-block">
            <asp:RadioButton ID="RadioButton_male" runat="server"  Checked="True" GroupName="gender" Text="男"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton_female" runat="server" GroupName="gender" Text="女" />
        </div>
    </div>

        <div class="layui-form-item">
        <label class="layui-form-label">所在班级</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_stuclass" runat="server" CssClass="layui-input" placeholder="请输入学生所在班级"></asp:TextBox>
        </div>
     </div>
        <div class="layui-form-item">
        <label class="layui-form-label">联系电话</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_stuphonenum" runat="server" CssClass="layui-input" placeholder="请输入学生联系电话"></asp:TextBox>
        </div>
     </div>
        <div class="layui-form-item">
        <label class="layui-form-label">邮箱</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_stuemail" runat="server" CssClass="layui-input" placeholder="请输入学生邮箱"></asp:TextBox>
        </div>
     </div>
        <div class="layui-form-item">
        <label class="layui-form-label">QQ</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_stuqq" runat="server" CssClass="layui-input" placeholder="请输入学生QQ号码"></asp:TextBox>
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
<script src="../layui/layui.js"></script>
    <script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg(JSON.stringify(data.field));
    return false;
  });
});
</script>
</html>
