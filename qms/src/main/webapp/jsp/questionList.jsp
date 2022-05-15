<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>问题页面</title>
    <link rel="stylesheet" type="text/css" href="../jeasyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../jeasyui/themes/icon.css">
    <script type="text/javascript" src="../jeasyui/jquery.min.js"></script>
    <script type="text/javascript" src="../jeasyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../jeasyui/easyui-lang-zh_CN.js"></script>
    <script>
        $(function () {

            //修改
            $("#btn-edit").click(function () {
                let array = $("#dg").datagrid('getSelections');
                if (array.length == 0) {
                    $.messager.alert('我的消息', '请选择要修改的数据', 'error');
                } else if (array.length > 1) {
                    $.messager.alert('我的消息', '只能选择一条记录进行修改', 'error');
                    $("#dg").datagrid("unselectAll");
                } else {
                    //填充修改表单
                    $("#edit-form").form('load', {
                        title: array[0].title,
                        content: array[0].content,
                        tid: array[0].tid,
                        qid: array[0].qid
                    })
                    //弹出修改的对话框
                    $("#edit-dialog").dialog({
                        closed: false,
                        buttons: [{
                            text: '保存',
                            iconCls: 'icon-save',
                            handler: function () {
                                $("#edit-form").form('submit', {
                                    url: '../question/updateQuestion',
                                    onsubmit: function () {
                                        return $("#edit-form").form('validate');
                                    },
                                    success: function (flag) {
                                        if (flag=="true") {
                                            $("#dg").datagrid('reload');
                                            $.messager.show({
                                                title: '我的消息',
                                                msg: '修改数据成功',
                                                timeout: 500,
                                                showType: 'slide'
                                            });
                                            $("#edit-dialog").dialog({closed: true});
                                        }else{
                                            $("#edit-dialog").form('clear');
                                            $.messager.alert('我的消息','修改失败，只能修改自己的问题！','info');
                                            $("#edit-dialog").dialog({closed: true});//关闭窗口
                                        }
                                    }
                                })
                            }
                        }, {
                            text: '重置',
                            iconCls: 'icon-redo',
                            handler: function () {
                                $("#edit-form").form('clear');
                            }
                        },{
                            text: '取消',
                            iconCls: 'icon-can',
                            handler: function () {
                                $("#edit-form").form('clear');
                                $("#edit-form").dialog({closed: true});//关闭窗口
                            }
                        }]
                    })
                }
            })
            //删除
            $("#btn-remove").click(function () {
                let array = $("#dg").datagrid('getSelections');
                if (array.length == 0) {
                    $.messager.alert('我的消息', '请选择要删除的数据', 'error');
                } else {
                    let ids = [];
                    for (let i in array) {
                        ids.push(array[i].qid);
                    }
                    $.post('../question/removeQuestion', {"ids[]": ids}, function (flag) {
                        if (flag==true) {
                            $.messager.show({
                                title: '我的消息',
                                msg: '删除成功',
                                timeout: 500,
                                showType: 'slide'
                            });
                            $("#dg").datagrid('reload');
                        }else {
                            $.messager.alert('我的消息','删除失败，只能删除自己的问题！','info');
                        }
                    })

                }
            })
            //添加
            $("#btn-add").click(function () {
                $("#add-dialog").dialog({
                    closed: false,
                    buttons: [{
                        text: '保存',
                        iconCls: 'icon-save',
                        handler: function () {
                            $("#add-form").form('submit', {
                                url: '../question/saveQusetion',
                                onsubmit: function () {
                                    return $("#add-form").form('validate');
                                },
                                success: function (flag) {
                                    console.debug(flag)
                                    console.debug(typeof flag)
                                    if (flag=="true") {
                                        $("#add-form").form('clear');//清空
                                        $("#add-dialog").dialog({closed: true});//关闭
                                        $("#dg").datagrid('reload');
                                        $.messager.show({
                                            title: '我的消息',
                                            msg: '添加数据成功。',
                                            timeout: 5000,
                                            showType: 'slide'
                                        });
                                       // $("#add-dialog").dialog({closed: true})
                                    }else{
                                        $("#add-form").form('clear');//清空
                                        $("#add-dialog").dialog({closed: true});//关闭
                                        $.messager.alert('我的消息','添加失败！','info');
                                    }
                                }
                            })
                        }
                    },{
                        text: '重置',
                        iconCls: 'icon-redo',
                        handler: function () {
                            $("#add-form").form('clear');
                        }
                    },{
                        text: '取消',
                        iconCls: 'icon-can',
                        handler: function () {
                            $("#add-form").form('clear');
                            $("#add-dialog").dialog({closed: true});//关闭窗口

                        }
                    }]
                })

            })
            //条件查询
            $("#btn-search").click(function () {
                $("#dg").datagrid('reload', {
                    title: $("#title").val()
                })
            })

            $('#dg').datagrid({
                url: '../question/listQuestion',
                fit: true,
                toolbar: '#tb',
                fitColumns: true,
                pagination: true,
                pagePosition: 'both',
                nowrap: true,
                columns: [[
                    {field: 'qid', checkbox: true, width: 80},
                    {field: 'title', title: '问题标题', width: 80},
                    {field: 'content', title: '问题内容', width: 80},
                    {field: 'tname', title: '分类标签', width: 80},
                    {field: 'ctime', title: '提问时间', width: 80},
                    {field: 'mtime', title: '修改时间', width: 80},
                    {field: 'uname', title: '提问者名称', width: 80},
                    {
                        field: 'xxx', title: '回复', width: 80,
                        formatter: function (val, row, index) {
                            return '<button  onclick="answner(' + row.qid + ')" >回复</button>';
                        }
                    }
                ]]
            });
        })

        function answner(qid) {
            $("#answer-dialog").dialog({
                closed: false,
                buttons: [
                    {
                        text: '回复',
                        handler: function () {
                            $("#answer-form").form('submit', {
                                url: '../answer/saveAnswer?qid=' + qid,
                                onsubmit: function () {
                                    return $("#answer-form").form('validate');
                                },
                                success: function (flag) {
                                    if (flag=="true") {
                                        $.messager.show({
                                            title:'我的消息',
                                            msg:'成功回复。',
                                            timeout:500,
                                            showType:'slide'
                                        });
                                        $("#answer-dialog").dialog({closed:true});
                                    }else {
                                        alert("回复失败");
                                        $("#answer-dialog").dialog({closed:true});
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
            <td>
                <input class="easyui-validatebox" id="title" placeholder="请输入标题查询">
                <a id="btn-search" href="#" plain="true" class="easyui-linkbutton"
                   iconCls="icon-search">查询</a>
            </td>
        </tr>
    </table>
    <a id="btn-add" href="#" plain="true" class="easyui-linkbutton"
       iconCls="icon-add">添加问题</a>
<shiro:hasAnyRoles name="0,1">
    <a id="btn-edit" href="#" class="easyui-linkbutton"
       iconCls="icon-edit" plain="true">修改提问题</a>
</shiro:hasAnyRoles>
<shiro:hasAnyRoles name="0,1">
    <a id="btn-remove" href="#" plain="true" class="easyui-linkbutton"
       iconCls="icon-remove">删除提问</a>
</shiro:hasAnyRoles>
</div>


<%--添加对话框--%>
<div id="add-dialog" class="easyui-dialog" title="添加问题" closed="true" modal="true"
     style="width:400px;height:200px;">
    <form id="add-form" method="post">
        <table>
            <tr>
                <td>选择标签</td>
                <td><input class="easyui-combobox" name="tid" required="true"
                           data-options="valueField:'tid',textField:'tname',url:'../tags/list'"></td>
            </tr>
            <tr>
                <td>问题标题</td>
                <td><input name="title" class="easyui-validatebox"
                           required="true"></td>
            </tr>
            <tr>
                <td>描述</td>
                <td><textarea name="content"></textarea></td>
            </tr>

        </table>
    </form>
</div>

<%--修改对话框--%>
<div id="edit-dialog" class="easyui-dialog" title="修改问题" closed="true" modal="true"
     style="width:400px;height:200px;">
    <form id="edit-form" method="post">
        <table>
            <tr>
                <td>选择标签</td>
                <td><input class="easyui-combobox" name="tid" required="true"
                           data-options="valueField:'tid',textField:'tname',url:'../tags/list'"></td>
            </tr>
            <tr>
                <td>问题标题</td>
                <td><input name="title" class="easyui-validatebox"
                           required="true">
                    <input type="hidden" name="qid">
                </td>
            </tr>
            <tr>
                <td>描述</td>
                <td><textarea name="content"></textarea></td>
            </tr>
        </table>
    </form>
</div>
<%--回复对话框--%>
<div id="answer-dialog" class="easyui-dialog" title="请输入回复信息" style="width:400px;height:200px;"
     closed="true"
     modal="true">
    <form method="post" id="answer-form">
        <textarea name="content" cols="60" rows="30" placeholder="请输入回复内容">  </textarea>
    </form>
</div>

</body>
</html>
