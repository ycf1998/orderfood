<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>商品分类</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="/css/public.css" media="all">
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">

        <script type="text/html" id="toolbar">
            <div class="layui-btn-container">
                <button class="layui-btn layui-btn-normal layui-btn-sm data-add-btn" lay-event="add"> 添加 </button>
            </div>
        </script>

        <table class="layui-hide" id="currentTableId" lay-filter="currentTableFilter"></table>

        <script type="text/html" id="currentTableBar">
            <a class="layui-btn layui-btn-normal layui-btn-xs data-count-edit" lay-event="edit">编辑</a>
            <a class="layui-btn layui-btn-xs layui-btn-danger data-count-delete" lay-event="delete">删除</a>
        </script>

        <script type="text/html" id="showStatus">
            <input type="checkbox" data-id={{d.id}} lay-filter="showStatus" lay-skin="switch" lay-text="ON|OFF" 
            	{{ d.showStatus == 1 ? 'checked' : '' }} >
        </script>

    </div>
</div>
<script src="/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'table'], function () {
        var $ = layui.jquery,
        	form = layui.form,
            table = layui.table;

        table.render({
            title: "商品分类",
            elem: '#currentTableId',
            url: '/goodsCategory/list/0',
            response: {
                statusName: 'code', //规定数据状态的字段名称，默认：code
                statusCode: 200, //规定成功的状态码，默认：0
                msgName: 'message', //规定状态信息的字段名称，默认：msg
                countName: 'total', //规定数据总数的字段名称，默认：count
                dataName: 'data', //规定数据列表的字段名称，默认：data
            },
            parseData: function(res){ //res 即为原始返回的数据
			    return {
			      "code": res.code, //解析接口状态
			      "msg": res.message, //解析提示文本
			      "total": res.page.total, //解析数据长度
			      "data": res.data //解析数据列表
			    };
			},
            toolbar: '#toolbar',
            defaultToolbar: [],
            cols: [[
                {type: 'numbers', width: 80, title: '编号', align: "center"},
                {field: 'id',  title: 'id', hide: true},
                {field: 'name',  title: '分类名称', align: "center"},
                {field: 'pid',  title: '分类等级', align: "center"},
                {field: 'sort',  title: '排序', align: "center"},
                {field: 'count',  title: '商品数量', align: "center"},
                {field: 'showStatus',  title: '是否显示', templet: '#showStatus', align: "center"},
                {field: 'desc', title: '描述', align: "center"},
                {title: '操作', toolbar: '#currentTableBar', align: "center"}
            ]],
            limits: [10, 15, 20, 25, 50, 100],
            limit: 15,
            page: true,
            skin: 'line'
        });
        
        /**
         * toolbar监听事件
         */
        table.on('toolbar(currentTableFilter)', function (obj) {
            if (obj.event === 'add') {  // 监听添加操作
                var index = layer.open({
                    title: '添加商品分类',
                    type: 2,
                    shade: 0.2,
                    maxmin:true,
                    shadeClose: true,
                    area: ['65%', '65%'],
                    content: '/backend/goods/category/add',
                });
                $(window).on("resize", function () {
                    layer.full(index);
                });
            }
        });

        table.on('tool(currentTableFilter)', function (obj) {
            var data = obj.data;
            if (obj.event === 'edit') {
                var index = layer.open({
                    title: '编辑商品分类',
                    type: 2,
                    shade: 0.2,
                    maxmin:true,
                    shadeClose: true,
                    area: ['65%', '65%'],
                    content: '/backend/goods/category/edit',
                });
                $(window).on("resize", function () {
                    layer.full(index);
                });
                return false;
            } else if (obj.event === 'delete') {
                layer.confirm('真的删除行么', function (index) {
                	$.ajax('/goodsCategory/' + data.id, {
                		dataType: 'JSON',
		        		type: 'DELETE',
		        		success: function(res) {
		        			if (res.code != 200) {
			                    layer.msg('删除失败', {icon: 2});
			                } else {
			                	obj.del();
			                	layer.close(index);
			                }
		        		}
                	});
                });
            }
        });
        
        /**
        * 开关监听事件
        */
        form.on('switch(showStatus)', function(obj){
        	let showStatus = obj.elem.checked ? 1 : 0;
        	let body = {
        		"id": obj.elem.dataset.id,
        		"showStatus": showStatus
        	}
        	$.ajax({
        		url: '/goodsCategory/update/showStatus',
        		dataType: 'JSON',
        		type: 'POST',
        		data: body,
        		success: function(res) {
        			if (res.code != 200) {
	                    layer.msg('修改失败', {icon: 2});
	                }
        		}
        	});
		});

    });
</script>

</body>
</html>