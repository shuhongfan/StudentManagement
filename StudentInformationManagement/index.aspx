<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="StudentInformationManagement.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>学生信息管理系统</title>
    <link href="layui/css/layui.css" rel="stylesheet" />
</head>
<body class="layui-layout-body">
    <form id="form1" runat="server">
       <div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo " >学生信息管理系统</div>
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item layui-this"><a href="home.aspx" target="MainWin">首页</a></li>
      <li class="layui-nav-item"><a href="ShowClassInfo.aspx" target="MainWin">班级信息</a></li>
      <li class="layui-nav-item"><a href="ShowStuInfo.aspx" target="MainWin">学生信息</a></li>
      <li class="layui-nav-item"><a href="ShowGradeInfo.aspx" target="MainWin">成绩信息</a></li>
    </ul>
  </div>

  <div class="layui-body">
    <!-- 内容主体区域 -->
       <iframe id="frame1" src="home.aspx" name="MainWin" width="100%" height="100%" scrolling="yes" marginwidth=0 marginheight=0 frameborder=0 vspace=0 hspace=0 >
	 </iframe>
  </div>

</div>
  </form>
    <script src="layui/layui.js"></script>
    <script>
        layui.use('element', function () {
            var element = layui.element;

            //…
        });
</script>
</body>
</html>
