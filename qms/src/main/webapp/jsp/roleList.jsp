<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>角色页面</title>
    <link rel="stylesheet" type="text/css" href="../jeasyui/themes/bootstrap/easyui.css">
    <link rel="stylesheet" type="text/css" href="../jeasyui/themes/icon.css">
    <script type="text/javascript" src="../jeasyui/jquery.min.js"></script>
    <script type="text/javascript" src="../jeasyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../jeasyui/easyui-lang-zh_CN.js"></script>
    <script>
        $(function () {
            $("#btn-add-permission").click(function () {
                let array = $("#dg").datagrid('getSelections');
                if (array.length == 0) {
                    $.messager.alert('我的消息', '请选择要分配权限的角色信息', 'error');
                } else if (array.length > 1) {
                    $.messager.alert('我的消息', '只能选择一条记录进行权限信息', 'error');
                    $("#dg").datagrid('unselectAll');
                } else {
                    $("#add-permission-dialog").dialog({
                        closed: false,
                        buttons: [{
                            text: '保存',
                            iconCls: 'icon-save',
                            handler: function () {
                                $("#add-permission-form").form('submit', {
                                    url: '../permissions/savePermissions?rid=' + array[0].rid,
                                    onSubmit: function () {
                                        return $("#add-permission-form").form('validate');
                                    },
                                    success: function (flag) {
                                        if (flag == -1) {
                                            $.messager.alert('我的消息', '该角色已经分配权限，不能再次分配', 'info');
                                        } else if (flag == 1) {
                                            $.messager.alert('我的消息', '分配权限成功', 'info');
                                            $("#add-permission-dialog").dialog({closed: true});
                                        }
                                    }
                                })

                            }
                        }]
                    })
                }
            })
            $("#btn-remove-permission").click(function () {
                let array = $('#dg').datagrid('getSelections');
                if (array.length == 0) {
                    $.messager.alert('我的消息', '请选择要删除权限的角色', 'error')
                } else {
                    $.post('../permissions/removePermissions',{"rid":array[0].rid},function (flag) {
                        if(flag==-1){
                            alert('该角色没有分配权限');
                        }else if(flag==1){
                            alert('删除权限成功');
                        }
                    })
                }
            })
            $('#dg').datagrid({
                url: '../roles/listPageRoles',
                fit: true,
                singleSelect: true,
                toolbar: '#tb',
                fitColumns: true,
                pagination: true,
                pagePosition: 'both',
                nowrap: false,
                columns: [[
                    {field: 'rid', checkbox: true, width: 100},
                    {field: 'rdesc', title: '角色名称', width: 100},
                    {
                        field: 'rname', title: '角色标记', width: 100,
                        formatter: function (val, rows, index) {
                            if (val == 0) {
                                return '0表示的是管理员'
                            } else if (val == 1) {
                                return '1表示普通用户'
                            }

                        }
                    },
                ]]
            });
        })
    </script>
</head>
<body>
<table id="dg"></table>
<div id="tb">
    <a href="#" id="btn-add-permission" class="easyui-linkbutton"
       plain="true" iconCls="icon-lock">分配权限</a>
    <a href="#" id="btn-remove-permission" class="easyui-linkbutton"
       plain="true" iconCls="icon-remove">删除权限</a>
</div>

<div id="add-permission-dialog" title="添加权限" class="easyui-dialog" model="true" closed="true"
     style="width: auto;height: auto">
    <form method="post" id="add-permission-form">
        <table>
            <tr>
                <td>分配权限</td>
                <td>
                    <input class="easyui-combobox" name="pid" required="true" multiple="true"
                           data-options="valueField:'pid',textField:'pdesc',url:'../permissions/listPermissions'">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
