<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登陆</title>
    <link rel="stylesheet" type="text/css" href="easyui/themes/my-bootstrap/easyui.css">
    <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="common/common.css">
    <script type="text/javascript" src="easyui/jquery.min.js"></script>
    <script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
</head>
<body style="margin: 0">
<div class="easyui-layout" style="width: 100%;height: 680px;">
    <div data-options="region:'north'" style="height:50px"></div>
    <div data-options="region:'south'" style="height:50px;"></div>
    <div data-options="region:'west'" style="width:100px;">
        <i class="fa fa-address-book"></i>
    </div>
    <div data-options="region:'center'">

        <div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:100%;height:250px">
            <div title="主页" style="padding:10px" data-options="iconCls:'icon-help',closable:true">
            </div>
        </div>
        <div id="tab-tools">
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" onclick="addPanel()"></a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'" onclick="removePanel()"></a>
        </div>
        <script type="text/javascript">
            var index = 0;
            function addPanel(){
                index++;
                $('#tt').tabs('add',{
                    title: 'Tab'+index,
                    content: '<div style="padding:10px">Content'+index+'</div>',
                    closable: true
                });
            }
            function removePanel(){
                var tab = $('#tt').tabs('getSelected');
                if (tab){
                    var index = $('#tt').tabs('getTabIndex', tab);
                    $('#tt').tabs('close', index);
                }
            }
        </script>
    </div>
</div>
</body>
</html>