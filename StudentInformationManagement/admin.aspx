<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="StudentInformationManagement.admin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台登录界面</title>
    <link href="X-admin/css/font.css" rel="stylesheet" />
    <link href="X-admin/css/login.css" rel="stylesheet" />
    <link href="X-admin/css/xadmin.css" rel="stylesheet" />
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-bg">
    <br />
    <br />
    <form id="form1" runat="server">
    <div class="login layui-anim layui-anim-up">
    <div class="message">管理员登录</div>
    <div id="darkbannerwrap"></div>

    <div class="layui-form">
        <asp:TextBox ID="username"  runat="server" CssClass="layui-input" placeholder="用户名" ></asp:TextBox>
        <hr class="hr15">
        <asp:TextBox ID="password" runat="server"  TextMode="Password" CssClass="layui-input" placeholder="密码"></asp:TextBox>
        <hr class="hr15">
        <div id="slider"></div>
        <hr class="hr15">
        <asp:Button ID="login" runat="server" Text="登录" style="width:100%;"  CssClass="layui-btn" OnClick="login_Click"/>
        <hr class="hr20">
    </div>
</div>

  </form>
</body>
</html>
