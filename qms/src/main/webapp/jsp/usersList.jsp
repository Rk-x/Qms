<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>用户页面</title>
    <link rel="stylesheet" type="text/css" href="../jeasyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../jeasyui/themes/icon.css">
    <script type="text/javascript" src="../jeasyui/jquery.min.js"></script>
    <script type="text/javascript" src="../jeasyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../jeasyui/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="../jeasyui/ajaxfileupload.js"></script>
    <script>


    $(function () {
            $('#pimage').change(function(e) {
            var img = e.target.files[0];
            var imgSrc = URL.createObjectURL(img);
            $("#imgDiv").empty();  //清空原有数据

            //创建img 标签对象
            var imgObj = $("<img>");
            //给img标签对象追加属性
            imgObj.attr("src",imgSrc);//设置图片路径
            imgObj.attr("width","100px");//设置宽
            imgObj.attr("height","100px");//设置高
            //将图片img标签追加到imgDiv末尾
            $("#imgDiv").append(imgObj);
        });

            $('#pimageEdit').change(function(e) {
            var img = e.target.files[0];
            var imgSrc = URL.createObjectURL(img);
            $("#imgDivEdit").empty();  //清空原有数据
            //创建img 标签对象
            var imgObj = $("<img>");
            //给img标签对象追加属性
            imgObj.attr("src",imgSrc);//设置图片路径
            imgObj.attr("width","100px");//设置宽
            imgObj.attr("height","100px");//设置高
            //将图片img标签追加到imgDiv末尾
            $("#imgDivEdit").append(imgObj);
            //将图片的名称（从服务端返回的JSON中取得）赋值给文件本框
            /*  $.ajaxFileUpload({
                  url: '../users/upload',//用于文件上传的服务器端请求地址
                  fileElementId: 'pimage',
                  success: function(imagename) //服务器成功响应处理函数
                  {
                      $("#imgName").html(imagename);
                      alert(imagename)
                  },
              })*/

        });

            //更改用户状态
            $('#btn-stat').click(function () {
                let array = $("#dg").datagrid('getSelections');
                if (array.length == 0) {
                    $.messager.alert('我的消息', '请选择要更改状态的用户信息', 'error');
                } else if (array.length > 1) {
                    $.messager.alert('我的消息', '只能选择一条记录进行更改', 'error');
                } else {
                    $.post('../users/changeUserStat', {uid: array[0].uid}, function (flag) {
                        if (flag) {
                            $("#dg").datagrid('reload');
                            $.messager.show({
                                title: '我的消息',
                                msg: '成功更改用户状态',
                                timeout: 500,
                                showType: 'slide'
                            });
                        } else {
                            $.messager.alert('我的消息', '该用户是管理员，不能进行状态更改')
                        }
                    })
                }
            });

            //修改用户信息
            $("#btn-edit").click(function () {
                let array=$("#dg").datagrid('getSelections');
                if(array.length==0){
                    $.messager.alert('我的消息','请选择要修改的数据','error');
                }else if(array.length>1){
                    $.messager.alert('我的消息','只能选择一条记录进行修改','error');
                    $("#dg").datagrid('unselectAll');//取消我们选择复选框
                }else{

                    //图片回显
                    $("#imgDivEdit").empty();  //清空原有数据
                    //如果有图片就回显
                    if(array[0].avatar!=null){
                        //创建img 标签对象
                        var imgObj = $("<img>");
                        //给img标签对象追加属性
                        imgObj.attr("src",array[0].avatar);//设置图片路径
                        imgObj.attr("width","100px");//设置宽
                        imgObj.attr("height","100px");//设置高
                        //将图片img标签追加到imgDiv末尾
                        $("#imgDivEdit").append(imgObj);

                        //填充修改表单
                        $("#edit-form").form('load',{
                            uid:array[0].uid,
                            uname:array[0].uname,
                            sex:array[0].sex,
                            nickname:array[0].nickname,
                            password:array[0].password,
                            remark:array[0].remark,
                            image: array[0].avatar,
                        })
                    }

                    //弹出修改对话框
                    $("#edit-dialog").dialog({
                        closed:false,
                        buttons: [{
                            text:'保存',
                            iconCls:'icon-save',
                            handler:function(){
                                $("#edit-form").form('submit',{
                                    url:'../users/updateUsers',
                                    onsubmit:function () {
                                        return $("#edit-form").form('validate');
                                    },
                                    success:function (flag) {
                                        if(flag=="true"){
                                            $("#dg").datagrid('reload');
                                            $("#edit-form").form('clear');
                                            $("#edit-dialog").dialog({closed:true});
                                            $.messager.show({
                                                title:'我的消息',
                                                msg:'修改成功',
                                                timeout:500,
                                                showType:'slide'
                                            });
                                            $("#imgDivEdit").empty();  //清空原有数据
                                        }else{
                                            alert("修改失败!");
                                        }
                                    }
                                })
                            }
                        },{
                            text:'重置',
                            iconCls:'icon-redo',
                            handler:function(){
                                //重置表单数据
                                $("#edit-form").form('clear');

                            }
                        }]
                    })
                }
            })
            $("#btn-remove").click(function () {
                let array=$("#dg").datagrid('getSelections');
                if(array.length==0){
                    alert('请选择要删除的数据')
                }else{
                    let uids = [];//放置选择的标签id
                    for (let i in array) {
                        uids.push(array[i].uid);
                    }
                    $.post('../users/removeUsers', {"uids[]": uids}, function (flag) {
                        if (flag) {
                            $("#dg").datagrid('reload');
                            $.messager.show({
                                title: '我的消息',
                                msg: '删除数据成功。',
                                timeout: 5000,
                                showType: 'slide'
                            });
                        }

                    })
                }
            })
            $("#btn-add").click(function () {
                $("#imgDiv").empty();  //清空原有数据
                $("#add-dialog").dialog({
                    closed:false,
                    buttons:[{
                        text:'保存',
                        iconCls:'icon-save',
                        handler:function () {
                            $("#add-form").form('submit',{
                                url:'../users/saveUsers',
                                onsubmit:function () {
                                    return $("#add-form").form('validate');
                                },
                                success:function (flag) {
                                    if (flag=="true") {
                                        $("#add-form").form('clear');
                                        $("#add-dialog").dialog({closed: true});
                                        $("#dg").datagrid('reload');//重新刷新表格
                                        $.messager.show({
                                            title:'我的消息',
                                            msg:'添加成功',
                                            timeout:500,
                                            showType:'slide'
                                        });

                                    }else{
                                        alert("添加失败!");
                                    }
                                }
                            })
                        }
                    }]
                })
                
            })
            $("#btn-role").click(function () {
            let array = $("#dg").datagrid('getSelections');
            if (array.length == 0) {
                $.messager.alert('我的消息', '请选择要分配角色的用户信息', 'error');
            } else if (array.length > 1) {
                $.messager.alert('我的消息', '只能选择一条记录分配角色信息', 'error');
                $("#dg").datagrid('unselectAll');
            } else {
                //弹出对话框，不需要填充表单
                $("#add-role-dialog").dialog({
                    closed: false,
                    buttons: [{
                        text: '保存',
                        iconCls: 'icon-save',
                        handler: function () {
                            $("#add-role-form").form('submit', {
                                url: '../roles/saveRole?uid=' + array[0].uid,
                                onSubmit: function () {
                                    return $("#add-role-form").form('validate');
                                },
                                success: function (flag) {
                                    if (flag == "false") {
                                        $.messager.alert('我的消息', '该用户已经分配角色不能再次进分配', 'info');
                                    } else if (flag == "true") {
                                        $.messager.alert('我的消息', '分配角色成功', 'info');
                                        $("#add-role-dialog").dialog({closed: true});
                                    }
                                }
                            })
                        }
                    }]
                })
            }
        })
            $('#dg').datagrid({
                url: '../users/listUsers',
                fit: true,
                toolbar: '#tb',
                fitColumns: true,
                pagination: true,
                pagePosition: 'both',
                nowrap: false,
                columns: [[
                    {field: 'uid', checkbox: true},
                    {field: 'uname', title: '用户名称', width: 50},
                    {field: 'password', title: '密码', width: 50},
                    {field: 'nickname', title: '昵称', width: 50},
                    {field: 'sex', title: '性别', width: 100},
                    {
                        field: 'avatar', title: '头像', width: 80, formatter: function (val, rows, index) {
                            return '<img src="' + val + '" style=" width: 50px;height: 50px">'
                        }
                    },
                    {field: 'ctime', title: '创建时间', width: 80},
                    {field: 'mtime', title: '修改时间', width: 80},
                    {field: 'remark', title: '备注', width: 80},
                    {
                        field: 'stat', title: '状态', width: 80, formatter: function (val, rows, index) {
                            if (val == 0) {
                                return '<div style="color: green"><h4>启用</h4></div>'
                            } else if (val == 1) {
                                return '<div style="color: red"><h4>禁用</h4></div>'
                            } else {
                                return '<div style="color: yellowgreen"><h4>未知</h4></div>'
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
<shiro:hasAnyRoles name="0">
    <a href="#" id="btn-add" class="easyui-linkbutton"
       plain="true" iconCls="icon-add">添加用户</a>
</shiro:hasAnyRoles>
<shiro:hasAnyRoles name="0,1">
    <a href="#" id="btn-edit" class="easyui-linkbutton"
       plain="true" iconCls="icon-edit">修改用户</a>
</shiro:hasAnyRoles>
<shiro:hasAnyRoles name="0">
    <a href="#" id="btn-remove" class="easyui-linkbutton"
       plain="true" iconCls="icon-remove">删除用户</a>
</shiro:hasAnyRoles>
<shiro:hasAnyRoles name="0">
    <a href="#" id="btn-stat" class="easyui-linkbutton"
       plain="true" iconCls="icon-lock">更改状态</a>
</shiro:hasAnyRoles>
    <shiro:hasAnyRoles name="0">
        <a href="#" id="btn-role" class="easyui-linkbutton"
           plain="true" iconCls="icon-man">角色分配</a>
    </shiro:hasAnyRoles>
</div>
<%--添加对话框--%>
<div id="add-dialog" class="easyui-dialog" title="添加用户信息" style="width:auto;height:auto"
     modal="true" closed="true">
    <form method="post" enctype="multipart/form-data" id="add-form">
        <table>
            <tr>
                <td>用户名称</td>
                <td><input class="easyui-validatebox" required="true" name="uname"></td>
                <td>用户密码</td>
                <td><input class="easyui-validatebox" required="true" name="password"></td>
            </tr>
            <tr>
                <td>用户昵称</td>
                <td><input class="easyui-validatebox" required="true" name="nickname"></td>
                <td>性别</td>
                <td><select  class="easyui-combobox" required="true" name="sex" style="width:150px;">
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select></td>
            </tr>
            <tr>
                <td>头像</td>
                <td>
                    <div id="imgDiv" style="display:block; width: 100px; height: 80px;"></div>
                    <input style="margin-top: 20px" type="file" id="pimage" name="avatar">
                </td>
                <td>备注</td>
                <td><input class="easyui-validatebox"  name="remark"></td>
            </tr>
        </table>
    </form>
</div>

<%--修改对话框--%>
<div id="edit-dialog" class="easyui-dialog" title="修改用户信息" style="width:auto;height:auto"
     modal="true" closed="true">
    <form method="post" enctype="multipart/form-data" id="edit-form">
        <table>
            <tr>
                <td>用户名称</td>
                <td><input class="easyui-validatebox" required="true" name="uname">
                 <input type="hidden" name="uid"></td>
                <td>用户密码</td>
                <td><input class="easyui-validatebox" required="true" name="password"></td>
            </tr>
            <tr>
                <td>用户昵称</td>
                <td><input class="easyui-validatebox" required="true" name="nickname"></td>
                <td>性别</td>
                <td><select  class="easyui-combobox" required="true" name="sex" style="width:150px;">
                    <option value="男">男</option>
                    <option value="女">女</option>
                </select></td>
            </tr>
            <tr>
                <td>头像</td>
                <td>
                    <div id="imgDivEdit" style="display:block; width: 100px; height: 80px;"></div>
                    <input style="margin-top: 20px" type="file" id="pimageEdit" name="avatar">
                    <span id="imgNameEdit" name="image"></span>
                <br>
                </td>
                <td>备注</td>
                <td><input class="easyui-validatebox"  name="remark"></td>
            </tr>
        </table>
    </form>
</div>
<div id="add-role-dialog" title="添加角色" class="easyui-dialog" model="true" closed="true"
     style="width: auto;height: auto">
    <form method="post" id="add-role-form">
        <table>
            <tr>
                <td>分配角色</td>
                <td>
                    <input class="easyui-combobox" name="rid" required="true"
                           data-options="valueField:'rid',textField:'rdesc',url:'../roles/listRoles'">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
