<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>出车管理系统</title>
</head>
<body>
<div align="center">
    <h1>出车管理系统</h1>
    <!--输出$_SESSION['adminUser']变量-->
    <?php if($_SESSION['adminUser']['account']!= null): ?><p>欢迎，<?php echo ($_SESSION['adminUser']['account']); ?>！</p>
<!--    　1、用a标签的target属性。
    2、跳转是用a标签的href传递参数，在含有iframe页面中用jquery接收判断传递过来的参数，然后获取iframe的id，根据参数设置iframe的src,显示指定的页面。-->
    <nav>
        <button><a href="/admin.php/Order" target="iframe">订单信息管理</a></button>
        <button><a href="/admin.php/Driver" target="iframe">用户信息管理</a></button>
        <button><a href="/admin.php/Car" target="iframe" >车辆信息管理</a></button>
        <button><a href="/admin.php/Role" target="iframe">角色/用户权限管理</a></button>
        <button><a href="/admin.php/Log" target="iframe">操作日志管理</a></button>
        <button><a href="/admin.php/Admin" target="iframe">修改密码</a></button>
        <button><a href="/admin.php/Login/loginout">退出登陆</a></button>
    </nav>
    <?php else: ?>
        <p>欢迎，<?php echo ($_SESSION['adminUser']['driver_name']); ?>！</p>
        <!--<?php if(is_array($_SESSION['adminUser'])): foreach($_SESSION['adminUser'] as $key=>$vo): echo ($key); ?>|<?php echo ($vo); ?><br><?php endforeach; endif; ?>-->
        <nav>
            <button><a href="/admin.php/Order" target="iframe">订单信息管理</a></button>
            <?php if(($_SESSION['adminUser']['driver_manage']) == "1"): ?><button><a href="/admin.php/Driver" target="iframe">用户信息管理</a></button><?php endif; ?>
            <?php if(($_SESSION['adminUser']['car_manage']) == "1"): ?><button><a href="/admin.php/Car" target="iframe" >车辆信息管理</a></button><?php endif; ?>
            <?php if(($_SESSION['adminUser']['role_manage']) == "1"): ?><button><a href="/admin.php/Role" target="iframe">角色/用户权限管理</a></button><?php endif; ?>
            <?php if(($_SESSION['adminUser']['log_manage']) == "1"): ?><button><a href="/admin.php/Log" target="iframe">操作日志管理</a></button><?php endif; ?>
            <button><a href="/admin.php/Login/loginout">退出登陆</a></button>
        </nav><?php endif; ?>
</div>
<iframe src="/admin.php/Order" scrolling="no" name="iframe" frameborder="0" width="100%" height="600">
</iframe>
</body>
</html>