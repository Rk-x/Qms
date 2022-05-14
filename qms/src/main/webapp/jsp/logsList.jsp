<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>日志页面</title>
    <link rel="stylesheet" type="text/css" href="../jeasyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../jeasyui/themes/icon.css">
    <script type="text/javascript" src="../jeasyui/jquery.min.js"></script>
    <script type="text/javascript" src="../jeasyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../jeasyui/easyui-lang-zh_CN.js"></script>
    <script>
        $(function (){
            $("#btn-search").click(function () {
                $("#dg").datagrid('reload',{
                    opername:$("#opername").val()
                })
            })
            $('#dg').datagrid({
                url: '../logs/listLogs',
                fit: true,
                singleSelect: true,
                toolbar: '#tb',
                fitColumns: true,
                pagination: true,
                pagePosition: 'both',
                nowrap: false,
                columns: [[
                    {field: 'operid', checkbox: true},
                    {field: 'opername', title: '操作人', width: 60},
                    {field: 'ip', title: '访问IP', width: 60},
                    {field: 'opertime', title: '操作时间', width: 60},
                    {field: 'methods', title: '操作方法', width: 100},
                    {field: 'ddesc', title: '方法描述', width: 80},
                ]]
            });
        })
    </script>
</head>
<body>
<table id="dg"></table>
<div  id="tb">
    <table>
        <tr>
            <td><input id="opername" class="easyui-validatebox">
                <a href="#" id="btn-search" class="easyui-linkbutton" iconCls="icon-search" plain="true">查询</a>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
