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

        <script type="text/html" id="pid">
            <select name="city" lay-verify="pid">
                <option value="0">无上级分类</option>
            </select>
        </script>

        <script type="text/html" id="sort">
            <input type="checkbox" name="sort" lay-skin="switch" lay-text="ON|OFF" {{#  if(d.sort == '0'){ }}checked{{#  } }}>
        </script>

        <script type="text/html" id="showStatus">
            <input type="checkbox" name="showStatus" lay-skin="switch" lay-text="ON|OFF" {{#  if(d.showStatus == '0'){ }}checked{{#  } }}>
        </script>

    </div>
</div>
<script src="/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'table'], function () {
        var $ = layui.jquery,
            table = layui.table;

        table.render({
            title: "商品分类",
            elem: '#currentTableId',
            url: '/goodsCategory/list/0',
            response: {
                statusName: 'code', //规定数据状态的字段名称，默认：code
                statusCode: 200, //规定成功的状态码，默认：0
                msgName: 'message', //规定状态信息的字段名称，默认：msg
                countName: 'page.count', //规定数据总数的字段名称，默认：count
                dataName: 'data', //规定数据列表的字段名称，默认：data
            },
            toolbar: '#toolbar',
            defaultToolbar: [],
            cols: [[
                {type: 'numbers', width: 80, title: '编号'},
                {field: 'name',  title: '分类'},
                {field: 'pid',  title: '上级分类', templet: '#pid'},
                {field: 'sort',  title: '是否排序', templet: '#sort'},
                {field: 'showStatus',  title: '是否显示', templet: '#showStatus'},
                {field: 'desc', title: '描述'},
                {title: '操作', width: 100, toolbar: '#currentTableBar', align: "center"}
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
                    area: ['100%', '100%'],
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
                    title: '编辑用户',
                    type: 2,
                    shade: 0.2,
                    maxmin:true,
                    shadeClose: true,
                    area: ['100%', '100%'],
                    content: '../page/table/edit.html',
                });
                $(window).on("resize", function () {
                    layer.full(index);
                });
                return false;
            } else if (obj.event === 'delete') {
                layer.confirm('真的删除行么', function (index) {
                    obj.del();
                    layer.close(index);
                });
            }
        });

    });
</script>

</body>
</html>