<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>录入公告</title>
</head>
<body>
<div align="center">
    <h4>录入公告功能</h4>
    <form>
        <table>
            <tr>
                <td>公告内容：</td>
                <td>
                    <textarea name="content" rows="10" cols="30" placeholder="请输入公告内容"></textarea>
                </td>
            </tr>
            <tr align="center">
                <td colspan="2"><input type="button" value="录入" onclick="notice.add()" /><input type="button" value="返回" onclick="notice.back()"/></td>
            </tr>
        </table>
    </form>
</div>
<script src="/Public/js/jquery.js"></script>
<script src="/Public/js/Admin/notice.js"></script>
<script src="/Public/js/dialog/layer.js"></script>
<script src="/Public/js/dialog.js"></script>
</body>
</html>