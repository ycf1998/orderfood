class Message {
	msgTemplate = `<div id="my-message" class="alert with-icon hidden ">
		  <i class="icon-ok-sign"></i>
		  <div class="content"></div>
		</div>`
	alert(type = 0, title = '', message = '', time = '3000') {
		document.body.insertAdjacentHTML('beforeEnd', this.msgTemplate);
		let msgBox = document.querySelector('#my-message');
		msgBox.className = msgBox.className.replace('hidden', '');
		msgBox.className += this.getClass(type);
		setTimeout(() => msgBox.remove(), time);
	}
	getClass(type) {
		switch(type) {
			case 1: return 'alert-primary';break;
			case 2: return 'alert-success';break;
			case 3: return 'alert-info';break;
			case 4: return 'alert-warning';break;
			case 5: return 'alert-danger';break;
			default: return '';
		}
	}
}

const $Message = new Message();