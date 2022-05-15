<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>评论页面</title>
    <link rel="stylesheet" type="text/css" href="../jeasyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../jeasyui/themes/icon.css">
    <script type="text/javascript" src="../jeasyui/jquery.min.js"></script>
    <script type="text/javascript" src="../jeasyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../jeasyui/easyui-lang-zh_CN.js"></script>
    <script>
        $(function () {
            //删除
            $("#btn-remove").click(function () {
                let comment=$("#dg").datagrid('getSelected');
                if(comment==null){
                    $.messager.alert('我的消息','请选择要删除的评论','error');
                }else{
                    $.post('../comment/removeComment',{"cid":comment.cid},
                        function (flag) {
                        console.log(flag);
                        console.log(typeof flag);
                        if(flag){
                            $("#dg").datagrid('reload');
                            $.messager.show({
                                title:'我的消息',
                                msg:'删除评论成功',
                                timeout:500,
                                showType:'slide'
                            });
                        }else {
                            $.messager.alert('我的消息','删除失败，只能删除自己的评论！','info');
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
                url:'../comment/listComment',
                fit:true,
                singleSelect:true,
                toolbar:'#tb',
                fitColumns:true,
                pagination:true,
                pagePosition:'both',
                nowrap:false,
                columns:[[
                    {field:'content',title:'评论内容',width:100},
                    {field:'uname',title:'评论人',width:100},
                    {field:'ctime',title:'评论时间',width:100},
                    {field:'reply',title:'回复标题',width:100},
                ]]
            });
        })
    </script>
</head>
<body>
<table id="dg"></table>
<div id="tb">
    <table>
        <tr>
            <td><input id="ctime" placeholder="请输入评论时间查询" editable="false"
                       class="easyui-datebox">
                <a href="#" id="btn-search" class="easyui-linkbutton"
                   iconCls="icon-search" plain="true">查询</a>
            </td>
        </tr>
    </table>
    <shiro:hasAnyRoles name="0,1">
    <a href="#" id="btn-remove" class="easyui-linkbutton"
       plain="true" iconCls="icon-remove">删除评论</a>
    </shiro:hasAnyRoles>
</div>


</body>
</html>
