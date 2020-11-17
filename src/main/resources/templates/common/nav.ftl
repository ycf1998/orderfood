<!-- 统一导航栏 -->
<nav class="navbar" role="navigation">
  <div class="container-fluid">
    <!-- 导航头部 -->
    <div class="navbar-header">
      <!-- 移动设备上的导航切换按钮 -->
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse-example">
        <span class="sr-only">切换导航</span>
        <span class="icon-bar"><span class="caret"></span></span>
      </button>
      <!-- 品牌名称或logo -->
      <a class="navbar-brand" href="your/nice/url">校园订餐系统</a>
    </div>
    <!-- 导航项目 -->
    <div class="collapse navbar-collapse navbar-collapse-example">
      <!-- 一般导航项目 -->
      <ul class="nav navbar-nav">
        <li class="active"><a href="your/nice/url">推荐</a></li>
        <li><a href="your/nice/url">分类</a></li>
        <li><a href="your/nice/url">购物车</a></li>
        <!-- 导航中的下拉菜单 -->
        <li class="dropdown">
          <a href="your/nice/url" class="dropdown-toggle" data-toggle="dropdown">个人中心 <b class="caret"></b></a>
          <ul class="dropdown-menu" role="menu">
          	<li><a href="javascript:;" data-remote="./login" data-toggle="modal">登录</a></li>
          	<li><a href="javascript:;" data-remote="./resetPwd" data-toggle="modal">修改密码</a></li>
          	<li><a href="./logout">退出</a></li>
          </ul>
        </li>
      </ul>
      <!-- 导航中的表单 -->
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="搜索">
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
      </form>
    </div><!-- END .navbar-collapse -->
  </div>
</nav>



<div class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
      </div>
    </div>
  </div>
</div>