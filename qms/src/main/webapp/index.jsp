<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" type="text/css" href="jeasyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="jeasyui/themes/icon.css">
    <script type="text/javascript" src="jeasyui/jquery.min.js"></script>
    <script src="jeasyui/echarts.min.js"></script>
    <script type="text/javascript" src="jeasyui/jquery.easyui.min.js"></script>
    <script>

        //图标
        $(function () {
            let myChart = echarts.init(document.getElementById('main1'));
            $.post('logs/countTimes', function (data) {

                // 指定图表的配置项和数据
                let option = {
                    title: {
                        text: '系统访问数据分析图'
                    },
                    tooltip: {},
                    legend: {
                        data: ['登录次数统计']
                    },
                    xAxis: {
                        data: data.names
                    },
                    yAxis: {},
                    series: [
                        {
                            name: '登录次数',
                            type: 'bar',
                            data: data.times
                        }
                    ]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            })

            let myChart2 = echarts.init(document.getElementById('main2'));
            $.post('tags/countTimesTags', function (data) {
                // 指定图表的配置项和数据
                option = {
                    title: {
                        text: '标签下的问题统计分析图'
                    },
                    tooltip: {
                        trigger: 'item'
                    },
                    legend: {
                        top: '5%',
                        left: 'center'
                    },
                    series: [
                        {
                            name: '类别下问题数',
                            type: 'pie',
                            radius: ['40%', '70%'],
                            avoidLabelOverlap: false,
                            itemStyle: {
                                borderRadius: 10,
                                borderColor: '#fff',
                                borderWidth: 2
                            },
                            label: {
                                show: false,
                                position: 'center'
                            },
                            emphasis: {
                                label: {
                                    show: true,
                                    fontSize: '40',
                                    fontWeight: 'bold'
                                }
                            },
                            labelLine: {
                                show: false
                            },
                            data: data
                        }
                    ]
                };
                // 使用刚指定的配置项和数据显示图表。
                myChart2.setOption(option);
            })

        })

        function openTabs(url, text) {
            if ($("#tabs").tabs('exists', text)) {
                $("#tabs").tabs('select', text);
            } else {
                let myContext = "<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src=" + url + "></iframe>";
                $("#tabs").tabs('add', {
                    title: text,
                    closable: true,
                    content: myContext
                })
            }
        }
    </script>
</head>
<body class="easyui-layout">
<div data-options="region:'north',title:'问答管理系统',split:true" style="height:100px;">
    <div align="right" style="color: blue"><h4>当前登录人:[<shiro:principal/>] <a href="/zhuxiao">注销</a></h4></div>

</div>
<div data-options="region:'west',title:'导航菜单',split:true" style="width:200px">
    <div class="easyui-accordion" style="width: 100%;height: 100%">
        <div title="提问信息管理">
            <shiro:hasAnyRoles name="0">
                <a href="#" onclick="openTabs('jsp/tagsList.jsp','标签管理')" class="easyui-linkbutton" plain="true"
                   style="width: 100%">标签管理</a>
            </shiro:hasAnyRoles>
            <shiro:hasAnyRoles name="0,1">
                <a href="#" onclick="openTabs('jsp/questionList.jsp','提问管理')" class="easyui-linkbutton"
                   plain="true" style="width: 100%">提问管理</a>
            </shiro:hasAnyRoles>
            <shiro:hasAnyRoles name="0,1">
                <a href="#" onclick="openTabs('jsp/answerList.jsp','回复管理')" class="easyui-linkbutton" plain="true"
                   style="width: 100%">回复管理</a>
            </shiro:hasAnyRoles>
        </div>
        <shiro:hasAnyRoles name="0,1">
            <div title="评论信息管理">
                <a href="#" onclick="openTabs('jsp/commentList.jsp','评论管理')" class="easyui-linkbutton" plain="true"
                   style="width: 100%">评论管理</a>
            </div>
        </shiro:hasAnyRoles>

      <%--  <shiro:hasAnyRoles name="0">
            <div title="数据分析管理">
                <a href="#" onclick="openTabs('jsp/analyze.html','数据分析')" class="easyui-linkbutton" plain="true"
                   style="width: 100%">数据分析管理</a>
            </div>
        </shiro:hasAnyRoles>--%>


    <shiro:hasAnyRoles name="0">
        <div title="系统信息管理">

            </shiro:hasAnyRoles>
            <shiro:hasAnyRoles name="1">
            <div title="个人中心管理">
                </shiro:hasAnyRoles>
                <shiro:hasAnyRoles name="0,1">
                    <shiro:hasAnyRoles name="0">
                        <a href="#" onclick="openTabs('jsp/usersList.jsp','用户管理')" class="easyui-linkbutton"
                           plain="true"
                           style="width: 100%">用户管理</a>
                    </shiro:hasAnyRoles>
                    <shiro:hasAnyRoles name="1">
                        <a href="#" onclick="openTabs('jsp/usersList.jsp','用户管理')" class="easyui-linkbutton"
                           plain="true"
                           style="width: 100%">个人信息管理</a>
                    </shiro:hasAnyRoles>
                </shiro:hasAnyRoles>
                <shiro:hasAnyRoles name="0">
                    <a href="#" onclick="openTabs('jsp/logsList.jsp','日志管理')" class="easyui-linkbutton" plain="true"
                       style="width: 100%">日志管理</a>
                    <a href="#" onclick="openTabs('jsp/roleList.jsp','角色管理')" class="easyui-linkbutton" plain="true"
                       style="width: 100%">角色管理</a>
                </shiro:hasAnyRoles>
                    <shiro:hasPermission name="0">
                        <a href="#" id="btn-role" class="easyui-linkbutton"
                           plain="true" iconCls="icon-man">角色分配</a>
                    </shiro:hasPermission>
            </div>
        </div>
    </div>

</div>
<div data-options="region:'center',title:'显示'" style="padding:5px;background:#eee;">
    <div id="tabs" class="easyui-tabs" fit="true">
        <div title="首页">
            <table>
                <tr>
                    <td>
                        <div id="main1" style="width: 500px;height: 400px;margin-top: 50px;margin-left: 50px"></div>
                    </td>
                    <td>
                        <div id="main2" style="width: 500px;height: 500px;margin-top: 50px;margin-left: 50px"></div>
                    </td>
                </tr>
                <tr>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>
