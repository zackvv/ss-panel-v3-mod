


{include file='user/header_info.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">节点信息</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="ui-card-wrap">
					<div class="row">
						<div class="col-lg-12 col-sm-12">
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">注意！</p>
										<p>配置文件以及二维码请勿泄露！</p>
									</div>
									
				
								</div>
							</div>
						</div>
						
						{if $config['enable_rss']=='true'&&$node->custom_rss==1&&!($user->obfs=='plain'&&$user->protocol=='origin')}
							{if $mu == 0}
							<div class="col-lg-12 col-sm-12">
								<div class="card">
									<div class="card-main">
										<div class="card-inner margin-bottom-no">
											<p class="card-heading">原版配置二维码</p>
											<div class="text-center">
												<div id="ss-qr-y"></div>
											</div>
										</div>
										
									</div>
								</div>
							</div>
							{/if}
						
						<div class="col-lg-12 col-sm-12">
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">SSR 旧版(3.8.3之前)配置二维码</p>
										<div class="text-center">
											<div id="ss-qr"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						
						<div class="col-lg-12 col-sm-12">
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">SSR 新版(3.8.3之后)配置二维码</p>
										<div class="text-center">
											<div id="ss-qr-n"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						
						{else}
						
						<div class="col-lg-12 col-sm-12">
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">配置二维码</p>
										<div class="text-center">
											<div id="ss-qr"></div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
						
						{/if}
						
						{if $mu == 0}
						
										
									</div>
								</div>
							</div>
						{/if}
						
					</div>
				</div>
			</section>
		</div>
	</main>







{include file='user/footer.tpl'}


<script src="/assets/public/js/jquery.qrcode.min.js"></script>
<script>
	var text_qrcode = '{$ssqr_s}';
	jQuery('#ss-qr').qrcode({
		"text": text_qrcode
	});
	
	{if $config['enable_rss']=='true'&&$node->custom_rss==1&&!($user->obfs=='plain'&&$user->protocol=='origin')}
	var text_qrcode1 = '{$ssqr}';
	jQuery('#ss-qr-y').qrcode({
		"text": text_qrcode1
	});
	
	var text_qrcode2 = '{$ssqr_s_new}';
	jQuery('#ss-qr-n').qrcode({
		"text": text_qrcode2
	});
	{/if}

</script>
