<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gradeinfo_add.aspx.cs" Inherits="StudentInformationManagement.Admin.gradeinfo_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link href="../layui/css/layui.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server" class="layui-form" style="margin-left:50px; margin-top:40px;">
         <div class="layui-form-item">
        <label class="layui-form-label">成绩编号</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_gradeid" runat="server" CssClass="layui-input" placeholder="请输入四位数成绩编号"></asp:TextBox>
        </div>
     </div>
         <div class="layui-form-item">
        <label class="layui-form-label">学生姓名</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_gradestuname" runat="server" CssClass="layui-input" placeholder="请输入学生姓名"></asp:TextBox>
        </div>
     </div>
         <div class="layui-form-item">
        <label class="layui-form-label">所学课程</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_gradecourse" runat="server" CssClass="layui-input" placeholder="请输入该学生所学课程"></asp:TextBox>
        </div>
     </div>
        <div class="layui-form-item">
        <label class="layui-form-label">成绩得分</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_grade" runat="server" CssClass="layui-input" placeholder="请输入课程得分"></asp:TextBox>
        </div>
     </div>
        <div class="layui-form-item">
        <label class="layui-form-label">其它说明</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox_gradeothers" runat="server" CssClass="layui-input" placeholder="若无不用填写"></asp:TextBox>
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
