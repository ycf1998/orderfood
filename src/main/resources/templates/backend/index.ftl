<!DOCTYPE html>
<html lang="en">
<#include "common/head.ftl" >
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
	<div class="layui-header">
		<div class="layui-logo">layui 后台布局</div>
		<!-- 头部区域（可配合layui已有的水平导航） -->
		<ul class="layui-nav layui-layout-left">
			<li class="layui-nav-item"><a href="">控制台</a></li>
			<li class="layui-nav-item"><a href="">商品管理</a></li>
			<li class="layui-nav-item"><a href="">用户</a></li>
			<li class="layui-nav-item">
				<a href="javascript:;">其它系统</a>
				<dl class="layui-nav-child">
					<dd><a href="">邮件管理</a></dd>
					<dd><a href="">消息管理</a></dd>
					<dd><a href="">授权管理</a></dd>
				</dl>
			</li>
		</ul>
		<ul class="layui-nav layui-layout-right">
			<li class="layui-nav-item">
				<a href="javascript:;">
					<img src="http://t.cn/RCzsdCq" class="layui-nav-img">
					贤心
				</a>
				<dl class="layui-nav-child">
					<dd><a href="">基本资料</a></dd>
					<dd><a href="">安全设置</a></dd>
				</dl>
			</li>
			<li class="layui-nav-item"><a href="">退了</a></li>
		</ul>
	</div>

	<div class="layui-side layui-bg-black">
		<div class="layui-side-scroll">
			<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
			<ul class="layui-nav layui-nav-tree"  lay-filter="test">
				<li class="layui-nav-item layui-nav-itemed">
					<a class="" href="javascript:;">所有商品</a>
					<dl class="layui-nav-child">
						<dd><a href="javascript:;">列表一</a></dd>
						<dd><a href="javascript:;">列表二</a></dd>
						<dd><a href="javascript:;">列表三</a></dd>
						<dd><a href="">超链接</a></dd>
					</dl>
				</li>
				<li class="layui-nav-item">
					<a href="javascript:;">解决方案</a>
					<dl class="layui-nav-child">
						<dd><a href="javascript:;">列表一</a></dd>
						<dd><a href="javascript:;">列表二</a></dd>
						<dd><a href="">超链接</a></dd>
					</dl>
				</li>
				<li class="layui-nav-item"><a href="">云市场</a></li>
				<li class="layui-nav-item"><a href="">发布商品</a></li>
			</ul>
		</div>
	</div>

	<div class="layui-body" style="padding-left: 5px ">
		<!-- 内容主体区域 -->
		<div class="layui-tab" lay-filter="demo" lay-allowclose="true">
			<ul class="layui-tab-title">
				<li class="layui-this home" lay-id="11"><i class="layui-icon layui-icon-home"></i></li>
				<li lay-id="22">用户管理</li>
				<li lay-id="33">权限分配</li>
				<li lay-id="44">商品管理</li>
				<li lay-id="55">订单管理</li>
			</ul>
			<div class="layui-tab-content">
				<div class="layui-tab-item layui-show">内容1</div>
				<div class="layui-tab-item">内容2</div>
				<div class="layui-tab-item">内容3</div>
				<div class="layui-tab-item">内容4</div>
				<div class="layui-tab-item">内容5</div>
			</div>
		</div>
	</div>

	<div class="layui-footer">
		<!-- 底部固定区域 -->
		© money
	</div>
</div>
<script>
	layui.use('element', function(){
		var element = layui.element;
		// 去掉主页的关闭按钮
		document.querySelector('.layui-tab-title .home i').nextElementSibling.remove();
	});


</script>
</body>

</html>