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
        <form id='categoryForm' class="layui-form" action="/goodsCategory" lay-filter="goodsCategory" method="post">
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
                        <option value="0">无上级分类</option>
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
                    <input type="checkbox" name="showStatus" value="1" lay-skin="switch" lay-text="是|否">
                </div>
            </div>

            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">分类描述</label>
                <div class="layui-input-block">
                    <textarea placeholder="请输入分类描述" class="layui-textarea" name="description"></textarea>
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
        var $ = layui.jquery
        	,form = layui.form
            , layer = layui.layer
            ,upload = layui.upload;

        form.val('goodsCategory', {
            "name": "",
            "pid": "",
            "sort": 99,
            "showStatus": true,
            "desc": ""
        });

        var uploadIcon = upload.render({
            elem: '#icon',
            url: '',
            size: 60,
            exts: 'jpg|png',
            auto: false
        });
        
        // 一级菜单
        $.get('/goodsCategory/list/0?page=1&limit=200', function(res) {
        	let option = '<option value="0">无上级分类</option>';
        	for (let data of res.data) {
        		option += '<option value="' + data.id + '">' + data.name + '</option>';
        	}
        	document.querySelector('[lay-filter="pid"]').innerHTML = option;
        	form.render('select');
         }); 

        //监听提交
        form.on('submit(submit)', function (data) {
        	let formData = new FormData(document.querySelector("#categoryForm"));
        	formData.set('file', document.querySelector('#icon').nextElementSibling.files[0]);
            fetch('/goodsCategory', {
            	method: 'POST',
            	body: formData
            }).then(res => res.json())
                .catch(error => console.error('Error:', error))
            	.then(json => {
            		if (json.code != 200) {
	                    layer.msg(json.message, {icon: 2});
	                } else {
		                layer.msg('添加成功', {icon: 1});
	                    var iframeIndex = parent.layer.getFrameIndex(window.name);
                		parent.layer.close(iframeIndex);
                		parent.layui.table.reload('currentTableId');
	                }
            	});
            return false;
        });

    });
</script>

</body>
</html>