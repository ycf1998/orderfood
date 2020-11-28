<!DOCTYPE html>
<html lang="en">
<#include "common/head.ftl" >
<body>
	<div class="container">	
		<!-- 1.导航 -->
		<#include "common/nav.ftl" >
		<!-- 2.轮播图 -->
		<div id="myNiceCarousel" class="carousel slide" data-ride="carousel">
		  <!-- 圆点指示器 -->
		  <ol class="carousel-indicators">
		    <li data-target="#myNiceCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myNiceCarousel" data-slide-to="1"></li>
		    <li data-target="#myNiceCarousel" data-slide-to="2"></li>
		  </ol>
		  <!-- 轮播项目 -->
		  <div class="carousel-inner">
		    <div class="item active">
		      <img alt="First slide" src="http://openzui.com/docs/img/slide1.jpg">
		      <div class="carousel-caption">
		        <h3>我是第一张幻灯片</h3>
		        <p>:)</p>
		      </div>
		    </div>
		    <div class="item">
		      <img alt="Second slide" src="http://openzui.com/docs/img/slide2.jpg">
		      <div class="carousel-caption">
		        <h3>我是第二张幻灯片</h3>
		        <p>0.0</p>
		      </div>
		    </div>
		    <div class="item">
		      <img alt="Third slide" src="http://openzui.com/docs/img/slide3.jpg">
		      <div class="carousel-caption">
		        <h3>我是第三张幻灯片</h3>
		        <p>最后一张咯~</p>
		      </div>
		    </div>
		  </div>
		  <!-- 项目切换按钮 -->
		  <a class="left carousel-control" href="#myNiceCarousel" data-slide="prev">
		    <span class="icon icon-chevron-left"></span>
		  </a>
		  <a class="right carousel-control" href="#myNiceCarousel" data-slide="next">
		    <span class="icon icon-chevron-right"></span>
		  </a>
		</div>
		<hr>
		<!-- 热卖菜品 -->
		<div class="row">
			<ul class="nav nav-secondary">
			  <li class="active"><a href="your/noce/url">热卖菜品</a></li>
			</ul>
			<div class="tab-content">
				<div class="cards tab-pane active">
					<div class="col-lg-2 col-md-2 col-sm-4 col-xs-6">
				    	<a class="card" href="###">
						  <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3834068926,877446976&fm=26&gp=0.jpg" alt="">
						  <div class="card-heading">
						  	<strong>排骨饭</strong>
						  	<div class="pull-right text-danger"><i class="icon-heart-empty"></i> 520 </div>
						  </div>
						  <div class="card-content text-muted">是真的好吃</div>
						  <div class="card-actions">
						    <p class="pull-left text-important" style="margin: 5px 0 0 0"><i class="icon icon-yen"></i> 22.00</p>
						  	<button type="button" class="pull-right btn btn-sm btn-danger"><i class="icon icon-shopping-cart"></i></button>
						  </div>
						</a>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-4 col-xs-6">
				    	<a class="card" href="###">
						  <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3834068926,877446976&fm=26&gp=0.jpg" alt="">
						  <div class="card-heading">
						  	<strong>排骨饭</strong>
						  	<div class="pull-right text-danger"><i class="icon-heart-empty"></i> 520 </div>
						  </div>
						  <div class="card-content text-muted">是真的好吃</div>
						  <div class="card-actions">
						  	<p class="pull-left text-important" style="margin: 5px 0 0 0"><i class="icon icon-yen"></i> 22.00</p>
						  	<button type="button" class="pull-right btn btn-sm btn-danger"><i class="icon icon-shopping-cart"></i></button>
						  </div>
						</a>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-4 col-xs-6">
				    	<a class="card" href="###">
						  <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3834068926,877446976&fm=26&gp=0.jpg" alt="">
						  <div class="card-heading">
						  	<strong>排骨饭</strong>
						  	<div class="pull-right text-danger"><i class="icon-heart-empty"></i> 520 </div>
						  </div>
						  <div class="card-content text-muted">是真的好吃</div>
						  <div class="card-actions">
						  	<p class="pull-left text-important" style="margin: 5px 0 0 0"><i class="icon icon-yen"></i> 22.00</p>
						  	<button type="button" class="pull-right btn btn-sm btn-danger"><i class="icon icon-shopping-cart"></i></button>
						  </div>
						</a>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-4 col-xs-6">
				    	<a class="card" href="###">
						  <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3834068926,877446976&fm=26&gp=0.jpg" alt="">
						  <div class="card-heading">
						  	<strong>排骨饭</strong>
						  	<div class="pull-right text-danger"><i class="icon-heart-empty"></i> 520 </div>
						  </div>
						  <div class="card-content text-muted">是真的好吃</div>
						  <div class="card-actions">
						  	<p class="pull-left text-important" style="margin: 5px 0 0 0"><i class="icon icon-yen"></i> 22.00</p>
						  	<button type="button" class="pull-right btn btn-sm btn-danger"><i class="icon icon-shopping-cart"></i></button>
						  </div>
						</a>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-4 col-xs-6">
				    	<a class="card" href="###">
						  <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3834068926,877446976&fm=26&gp=0.jpg" alt="">
						  <div class="card-heading">
						  	<strong>排骨饭</strong>
						  	<div class="pull-right text-danger"><i class="icon-heart-empty"></i> 520 </div>
						  </div>
						  <div class="card-content text-muted">是真的好吃</div>
						  <div class="card-actions">
						  	<p class="pull-left text-important" style="margin: 5px 0 0 0"><i class="icon icon-yen"></i> 22.00</p>
						  	<button type="button" class="pull-right btn btn-sm btn-danger"><i class="icon icon-shopping-cart"></i></button>
						  </div>
						</a>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-4 col-xs-6">
				    	<a class="card" href="###">
						  <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3834068926,877446976&fm=26&gp=0.jpg" alt="">
						  <div class="card-heading">
						  	<strong>排骨饭</strong>
						  	<div class="pull-right text-danger"><i class="icon-heart-empty"></i> 520 </div>
						  </div>
						  <div class="card-content text-muted">是真的好吃</div>
						  <div class="card-actions">
						  	<p class="pull-left text-important" style="margin: 5px 0 0 0"><i class="icon icon-yen"></i> 22.00</p>
						  	<button type="button" class="pull-right btn btn-sm btn-danger"><i class="icon icon-shopping-cart"></i></button>
						  </div>
						</a>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<!-- 精品推荐 -->
			<div class="col-md-8">
				<ul class="nav nav-secondary">
				  <li class="active"><a href="your/noce/url">精品推荐</a></li>
				</ul>
				<div class="tab-content">
					<div class="cards tab-pane active">
						<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
					    	<a class="card" href="###">
							  <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3834068926,877446976&fm=26&gp=0.jpg" alt="">
							  <div class="card-heading">
							  	<strong>排骨饭</strong>
							  	<div class="pull-right text-danger"><i class="icon-heart-empty"></i> 520 </div>
							  </div>
							  <div class="card-content text-muted">是真的好吃</div>
							  <div class="card-actions">
							  	<p class="pull-left text-important" style="margin: 5px 0 0 0"><i class="icon icon-yen"></i> 22.00</p>
							  	<button type="button" class="pull-right btn btn-sm btn-danger"><i class="icon icon-shopping-cart"></i></button>
							  </div>
							</a>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
					    	<a class="card" href="###">
							  <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3834068926,877446976&fm=26&gp=0.jpg" alt="">
							  <div class="card-heading">
							  	<strong>排骨饭</strong>
							  	<div class="pull-right text-danger"><i class="icon-heart-empty"></i> 520 </div>
							  </div>
							  <div class="card-content text-muted">是真的好吃</div>
							  <div class="card-actions">
							  	<p class="pull-left text-important" style="margin: 5px 0 0 0"><i class="icon icon-yen"></i> 22.00</p>
							  	<button type="button" class="pull-right btn btn-sm btn-danger"><i class="icon icon-shopping-cart"></i></button>
							  </div>
							</a>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
					    	<a class="card" href="###">
							  <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3834068926,877446976&fm=26&gp=0.jpg" alt="">
							  <div class="card-heading">
							  	<strong>排骨饭</strong>
							  	<div class="pull-right text-danger"><i class="icon-heart-empty"></i> 520 </div>
							  </div>
							  <div class="card-content text-muted">是真的好吃</div>
							  <div class="card-actions">
							  	<p class="pull-left text-important" style="margin: 5px 0 0 0"><i class="icon icon-yen"></i> 22.00</p>
							  	<button type="button" class="pull-right btn btn-sm btn-danger"><i class="icon icon-shopping-cart"></i></button>
							  </div>
							</a>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
					    	<a class="card" href="###">
							  <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3834068926,877446976&fm=26&gp=0.jpg" alt="">
							  <div class="card-heading">
							  	<strong>排骨饭</strong>
							  	<div class="pull-right text-danger"><i class="icon-heart-empty"></i> 520 </div>
							  </div>
							  <div class="card-content text-muted">是真的好吃</div>
							  <div class="card-actions">
							  	<p class="pull-left text-important" style="margin: 5px 0 0 0"><i class="icon icon-yen"></i> 22.00</p>
							  	<button type="button" class="pull-right btn btn-sm btn-danger"><i class="icon icon-shopping-cart"></i></button>
							  </div>
							</a>
						</div>
				    </div>
				</div>
			</div>
			<!-- 新品尝新 -->
			<div class="col-md-4">
				<ul class="nav nav-secondary">
				  <li class="active"><a href="your/noce/url">新品尝新</a></li>
				</ul>
				<div class="tab-content">
					<div class="cards tab-pane active">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
					    	<a class="card" href="###">
							  <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3834068926,877446976&fm=26&gp=0.jpg" alt="">
							  <div class="card-heading">
							  	<strong>排骨饭</strong>
							  	<div class="pull-right text-danger"><i class="icon-heart-empty"></i> 520 </div>
							  </div>
							  <div class="card-content text-muted">是真的好吃</div>
							  <div class="card-actions">
							  	<p class="pull-left text-important" style="margin: 5px 0 0 0"><i class="icon icon-yen"></i> 22.00</p>
							  	<button type="button" class="pull-right btn btn-sm btn-danger"><i class="icon icon-shopping-cart"></i></button>
							  </div>
							</a>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
					    	<a class="card" href="###">
							  <img src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3834068926,877446976&fm=26&gp=0.jpg" alt="">
							  <div class="card-heading">
							  	<strong>排骨饭</strong>
							  	<div class="pull-right text-danger"><i class="icon-heart-empty"></i> 520 </div>
							  </div>
							  <div class="card-content text-muted">是真的好吃</div>
							  <div class="card-actions">
							  	<p class="pull-left text-important" style="margin: 5px 0 0 0"><i class="icon icon-yen"></i> 22.00</p>
							  	<button type="button" class="pull-right btn btn-sm btn-danger"><i class="icon icon-shopping-cart"></i></button>
							  </div>
							</a>
						</div>
				    </div>
				</div>
			</div>
		</div>
		
		<hr>
		<!-- 页尾 -->
		<#include "common/footer.ftl" >
	</div>
</body>
</html>