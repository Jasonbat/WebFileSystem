<%@ page import="entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
    <title>主页</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
</head>

<body>
    <div id="container">
        <div id="header">
            <div id="text">JSP网盘的简单实现</div>
            <div id="info">
                用户名：${user.userName}
                <div id="btn">
                    <button id="log_off">注销</button>
                </div>
            </div>
        </div>
        <div id="navi">
            <ul>
                <li id="info_change" class="firstLi">资料修改</li>
                <li id="file_upload" class="normalLi">文件上传</li>
                <li id="file_download" class="normalLi">文件下载</li>
                <%
                User user = (User) session.getAttribute("user");
                //获取用户类型
                //在js文件中使用userType实现权限控制
                if ("管理员".equals(user.getType())) {
            %>
                    <li id="user_manage" class="normalLi">用户管理</li>
                    <%
                }
            %>
                        <li id="about_us" class="normalLi">关于我们</li>
            </ul>
            </ul>
        </div>
        <div id="content">
            <iframe id="content_info" src="aboutus.html"></iframe>
        </div>
        <div id="footer">
            ©2017 CHD
            <a href="#">移动平台</a>|
            <a href="#">服务协议</a>|
            <a href="#">权责声明</a>|
            <a href="#">帮助中心</a>|
            <a href="#">版权投诉</a>
        </div>
    </div>
</body>

</html>