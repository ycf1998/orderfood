<div class="row">
  <div class="col-xs-3">
    <ul class="nav nav-tabs nav-stacked">
      <li class="active"><a href="###" data-target="#tab3Content1" data-toggle="tab">登录</a></li>
      <li><a href="###" data-target="#tab3Content2" data-toggle="tab">注册</a></li>
    </ul>
  </div>
  <div class="col-xs-9">
    <div class="tab-content col-xs-9">
      <div class="tab-pane fade active in" id="tab3Content1">
        <form id="loginForm" class="form-horizontal">
		  <div class="form-group">
		    <label class="required col-sm-3">账号</label>
		    <div class="col-sm-9">
		    	<input name="username" type="text" class="form-control" placeholder="手机号">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="required col-sm-3">密码</label>
		    <div class="col-sm-9">
		    	<input name="password" type="password" class="form-control" placeholder="">
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-3 col-sm-9">
		      <div class="checkbox">
		        <label>
		          <input name="remember" type="checkbox"> 记住我
		        </label>
		      </div>
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-3 col-sm-9">
		      <button type="submit" class="btn btn-default">登录</button>
		    </div>
		  </div>
		</form>
      </div>
      <div class="tab-pane fade" id="tab3Content2">
        <form id="regForm" class="form-horizontal">
          <div class="form-group">
		    <label class="required col-sm-3">昵称</label>
		    <div class="col-sm-9">
		    	<input name="nickname" type="text" class="form-control" placeholder="">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="required col-sm-3">账号</label>
		    <div class="col-sm-9">
		    	<input name="username" type="text" class="form-control" placeholder="手机号">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="required col-sm-3">密码</label>
		    <div class="col-sm-9">
		    	<input name="password" type="password" class="form-control" placeholder="">
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="required col-sm-3">验证码</label>
		    <div class="col-sm-9">
		    	<div class="input-group">
				  <input name="code" type="text" class="form-control">
				  <span class="input-group-btn">
				    <button onclick="sendCode" class="btn btn-default" type="button">发送</button>
				  </span>
				</div>
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-3 col-sm-9">
		      <button type="submit" class="btn btn-default">提交</button>
		    </div>
		  </div>
		</form>
      </div>
    </div>
  </div>
</div>
<script>
	// 登录
	document.querySelector("#loginForm button").addEventListener('click',function(e) {
		e.preventDefault();
		let loginForm = document.querySelector('#loginForm');
		let data = {
			username: loginForm.querySelector('[name="username"]').value,
			password: loginForm.querySelector('[name="password"]').value,
			remember: loginForm.querySelector('[name="remember"]').checked
		}
		fetch('./session/login', {
			method: 'POST',
			body: JSON.stringify(data),
		    headers: new Headers({
		    	'Content-Type': 'application/json'
		    })
		}).then(res => res.json())
			.then(json => {
				$Message.alert(json.status/100, json.message, json.data);
				if (json.code == 200) {
					let logged = document.querySelectorAll('.logged');
					let notLogged = document.querySelectorAll('.notLogged');
					let userInfo = document.querySelector('#userInfo');
					userInfo.innerHTML = '';
					logged.forEach(e => {
						e.className = e.className.replace('hidden', 'show');
					});
					notLogged.forEach(e => {
						e.className = e.className.replace('show', 'hidden');
					});
					document.querySelector('.modal-dialog .close').click();
				}
			});
	});
	// 注册
	document.querySelector("#regForm button").addEventListener('click',function(e) {
		e.preventDefault();
		fetch('./rigister', {
			method: 'POST',
			body: $("#regForm").serialize()
		}).then(res => res.json())
			.then(json => {
				$Message.alert(json.status/100, json.message, json.data);
				if (json.code == 200) {
					let logged = document.querySelector('.logged');
					let notLogged = document.querySelector('.notLogged');
					let userInfo = document.querySelector('#userInfo');
					userInfo.innerHTML = `欢迎，`;
					notLogged.forEach(e => {
						e.className = e.className.replace('hidden', 'show');
					});
					logged.forEach(e => {
						e.className = e.className.replace('show', 'hidden');
					});
					document.querySelector('.modal-dialog .close').click();
				}
			});
	});
	// 发送验证码
	function sendCode() {
		
	}
</script>