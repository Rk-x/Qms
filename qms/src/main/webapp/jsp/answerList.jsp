<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>

<html>
<head>
    <title>回复页面</title>
    <link rel="stylesheet" type="text/css" href="../jeasyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../jeasyui/themes/icon.css">
    <script type="text/javascript" src="../jeasyui/jquery.min.js"></script>
    <script type="text/javascript" src="../jeasyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../jeasyui/easyui-lang-zh_CN.js"></script>
    <script>
        $(function () {
            $("#btn-remove").click(function () {
                let answer = $("#dg").datagrid('getSelected');
                if (answer == null) {
                    $.messager.alert('我的消息', '请选择要删除的评论', 'error');
                } else {
                    $.post('../answer/removeAnswer', {"aid": answer.aid},
                        function (flag) {
                        console.log(flag);
                        console.log(typeof flag);
                        if (flag) {
                            $("#dg").datagrid('reload');
                            $.messager.show({
                                title: '我的消息',
                                msg: '评论删除成功',
                                timeout: 500,
                                showType: 'slide'
                            });
                        }else {
                            $.messager.alert('我的消息','删除失败，只能删除自己的回复！','info');
                        }
                    })
                }
            })

            $("#btn-search").click(function () {
                $("#dg").datagrid('reload',{
                    ctime:$("#ctime").val()
                })
            })
            $('#dg').datagrid({
                url: '../answer/listAnswer',
                fit: true,
                toolbar: '#tb',
                nowrap: false,
                singleSelect: true,
                fitColumns: true,
                pagination: true,
                pagePosition: 'both',
                columns: [[
                    {field: 'aid', checkbox: true, width: 80},
                    {field: 'content', title: '回复内容', width: 80},
                    {field: 'uname', title: '回复人', width: 80},
                    {field: 'title', title: '提问问题', width: 80},
                    {field: 'ctime', title: '回复时间', width: 80},
                    {field: 'xxx', title: '评论', width: 80, formatter: function (val, rows, index) {
                            return '<button  onclick="comment(' + rows.aid + ')" >评论</button>';
                        }
                    }
                ]]
            });
        })

        function comment(aid){
            $("#comment-dialog").dialog({
                closed: false,
                buttons: [
                    {
                        text: '评论',
                        handler: function () {
                            $("#comment-form").form('submit', {
                                url: '../comment/saveComment?aid=' + aid,
                                onsubmit: function () {
                                    return $("#comment-form").form('validate');
                                },
                                success: function (flag) {
                                    if (flag) {
                                        $.messager.show({
                                            title:'我的消息',
                                            msg:'成功回复。',
                                            timeout:500,
                                            showType:'slide'
                                        });
                                        $("#comment-dialog").dialog({closed:true});
                                    }
                                }
                            })

                        }
                    }
                ]
            })
        }
    </script>
</head>
<body>
<table id="dg"></table>
<div id="tb">
    <table>
        <tr>
            <td><input id="ctime" placeholder="请输入回复时间查询" editable="false"
                       class="easyui-datebox">
                <a href="#" id="btn-search" class="easyui-linkbutton"
                   iconCls="icon-search" plain="true">查询</a>
            </td>
        </tr>
    </table>
<shiro:hasAnyRoles name="0,1">
    <a href="#" id="btn-remove" class="easyui-linkbutton" plain="true" iconCls="icon-remove">删除评论</a>
</shiro:hasAnyRoles>
</div>


<div id="comment-dialog" class="easyui-dialog" title="请输入评论信息" style="width:400px;height:200px;"
     closed="true"
     modal="true">
    <form method="post" id="comment-form">
        <textarea name="content" cols="60" rows="30" >  </textarea>
    </form>
</div>
</body>
</html>
