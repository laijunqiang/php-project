<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人密码修改</title>
    <link rel="stylesheet" href="/Public/css/home/login.css">
</head>
<body>
<div align="center">
    <h3>个人密码修改</h3>
    <table>
        <tr>
            <td>司机账号：</td>
            <td><input type="text" value="<?php echo ($ret["account"]); ?>" name="account" id="account" disabled="disabled"></td>
        </tr>
        <tr>
            <td>司机密码：</td>
            <td><input type="password" id="input" name="password" placeholder="请输入您的密码" /></td>
            <td><img id="img" onclick="login.hideShowPsw()" src="/Public/image/visible.png">  </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <button onclick="personalCenter.update()">修改</button>
                <button onclick="personalCenter.back()">返回</button>
            </td>
        </tr>
    </table>
</div>
<script src="/Public/js/jquery.js"></script>
<script src="/Public/js/dialog/layer.js"></script>
<script src="/Public/js/dialog.js"></script>
<script src="/Public/js/home/personalCenter.js"></script>
<script src="/Public/js/home/login.js"></script>
</body>
</html>