<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登陆</title>
    <link rel="stylesheet" type="text/css" href="${rc.contextPath}/easyui/themes/my-bootstrap/easyui.css">
    <link rel="stylesheet" type="text/css" href="${rc.contextPath}/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="${rc.contextPath}/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="${rc.contextPath}/common/common.css">
    <script type="text/javascript" src="${rc.contextPath}/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="${rc.contextPath}/easyui/easyui-lang-zh_CN.js"></script>
</head>
<body style="margin: 0">
<div class="easyui-layout" style="width: 100%;height: 680px;">
    <div data-options="region:'north'" style="height:50px"></div>
    <div data-options="region:'south'" style="height:50px;"></div>
    <div data-options="region:'west'" style="width:200px;">
        <ul class="easyui-tree">
            <li>
                <span>My Documents</span>
                <ul>
                    <li data-options="state:'closed'">
                        <span>Photos</span>
                        <ul>
                            <li>
                                <span> <a href="#" onclick="addTab('测试','http://www.baidu.com')">百度</a></span>
                            </li>
                            <li>
                                <span>Wife</span>
                            </li>
                            <li>
                                <span>Company</span>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span>Program Files</span>
                        <ul>
                            <li>Intel</li>
                            <li>Java</li>
                            <li>Microsoft Office</li>
                            <li>Games</li>
                        </ul>
                    </li>
                    <li>index.html</li>
                    <li>about.html</li>
                    <li>welcome.html</li>
                </ul>
            </li>
        </ul>
    </div>
    <div data-options="region:'center'">
        <div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:100%;height:100%">
            <div title="主页" style="padding:10px" data-options="iconCls:'fa-home blue'">
                <div id="win"></div>
                <table id="dg" title="Custom DataGrid Pager" style="width:100%;height:100%">
                </table>
                <script type="text/javascript">
                    var toolbar= [{
                        iconCls: 'fa-pencil green',
                        handler: function(){}
                    },{
                        iconCls: 'icon-help',
                        handler: function(){

                        }
                    },{
                        iconCls: 'fa-times red',
                        handler: function(){
                            var row = $('#dg').datagrid('getSelected');
                            if(row !== null) {
                                $.messager.confirm("操作提示", "您确定要执行操作吗？", function (data) {
                                    if (data) {
                                        $.ajax({
                                            url:'${rc.contextPath}/test/deleteUser/'+row.id,
                                            type:'get',
                                            dataType:'json',
                                            success:function(result) {
                                                $('#dg').datagrid('reload');
                                            }
                                        })
                                    }else {
                                        alert("否");
                                    }
                                });
                            }
                        }
                    }];
                    $('#dg').datagrid({
                        url:'${rc.contextPath}/test/getUserList',
                        method:'GET',
                        rownumbers:true,
                        singleSelect:true,
                        pagination:true,
                        toolbar:toolbar,
                        columns:[[
                            {field:'id',title:'ID',width:100},
                            {field:'username',title:'用户名',width:100},
                            {field:'password',title:'密码',width:100,align:'right'}
                        ]]
                    });
                </script>
            </div>
        </div>
        <div id="tab-tools">
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" onclick="addPanel()"></a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'" onclick="removePanel()"></a>
        </div>
        <script type="text/javascript">
            function addTab(title, url){
                if ($('#tt').tabs('exists', title)){
                    $('#tt').tabs('select', title);
                } else {
                    var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:95%;"></iframe>';
                    $('#tt').tabs('add',{
                        title:title,
                        content:content,
                        closable:true
                    });
                }
            }
        </script>

    </div>
</div>
</body>
</html>
<#--Displaying {from} to {to} of {total} items-->
<#--在{total}个记录中显示{from}到{to}个-->