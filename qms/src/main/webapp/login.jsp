<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录界面</title>
    <%--    引入样式--%>
    <link rel="stylesheet" type="text/css" href="jeasyui/themes/default/easyui.css">
    <%--    引入样式图片--%>
    <link rel="stylesheet" type="text/css" href="jeasyui/themes/icon.css">
    <%--    引入jquery--%>
    <script type="text/javascript" src="jeasyui/jquery.min.js"></script>
    <%--    引入easyui基于jqueryd的js--%>
    <script type="text/javascript" src="jeasyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="jeasyui/easyui-lang-zh_CN.js"></script>
    <%--    编写自己的js 进行测试--%>
    <script>
        $(function () {
            $("#login-dialog").dialog({
                buttons: [{
                    text: '登录',
                    iconCls: 'icon-man',
                    handler: function () {
                        $("#login-form").form('submit', {
                            url: 'users/login',
                            onsubmit: function () {
                                return $("#login-form").form('validate');
                            },
                            success: function (data) {
                                var jsonstr=JSON.parse(data);
                                if (jsonstr.flag ==1) {
                                    window.location.href = "index.jsp";
                                } else if (jsonstr.flag == 0) {
                                    $.messager.alert('消息',jsonstr.errorMsg, 'error');
                                }
                            }
                        })
                    }
                }]
            })
        })
    </script>
</head>
<body>
<div id="login-dialog" class="easyui-dialog" title="登录" style="width:280px;height:200px;"
     modal="true">
    <form method="post" id="login-form">
        <table>
            <tr>
                <td><input name="username"  class="easyui-textbox" iconCls="icon-man"
                           required="true" id="uname"></td>
            </tr>
            <tr>
                <td><input name="password" placeholder="123" class="easyui-passwordbox" iconCls="icon-lock"
                           required="true" id="password"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
