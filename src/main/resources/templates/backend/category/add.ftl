<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="/css/public.css" media="all">
</head>
<body>
<div class="layuimini-container">
    <div class="layuimini-main">
        <form class="layui-form" action="/goodsCategory" lay-filter="goodsCategory" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label">分类名称</label>
                <div class="layui-input-block">
                    <input type="text" name="name" lay-verify="required" autocomplete="off" placeholder="请输入分类名称" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">上级分类</label>
                <div class="layui-input-block">
                    <select name="pid" lay-filter="pid">
                        <option value="">无上级分类</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">分类图标</label>
                <button type="button" class="layui-btn layui-btn-danger" id="icon"><i class="layui-icon"></i>上传</button>
                <div class="layui-inline layui-word-aux">上传png/jpg格式图片，大小不超过60K</div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">排序</label>
                <div class="layui-input-block">
                    <input type="text" name="sort" lay-verify="number|sort" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">是否显示</label>
                <div class="layui-input-block">
                    <input type="checkbox" name="showStatus" lay-skin="switch" lay-text="是|否">
                </div>
            </div>

            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">分类描述</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入分类描述" class="layui-textarea" name="desc"></textarea>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit="" lay-filter="submit">立即提交</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'upload', 'layer'], function () {
        var form = layui.form
            , layer = layui.layer
            ,upload = layui.upload;

        form.val('goodsCategory', {
            "name": "",
            "pid": "",
            "sort": 99,
            "showStatus": true,
            "desc": ""
        });

        upload.render({
            elem: '#icon',
            url: '',
            size: 60,
            exts: 'jpg|png',
            done: function(res){
                layer.msg('上传成功');
                console.log(res)
            }
        });

        //监听提交
        form.on('submit(submit)', function (data) {
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            });
            return false;
        });

    });
</script>

</body>
</html>