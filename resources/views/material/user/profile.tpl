


{include file='user/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">我的账户</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="row">
					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">我的帐号</p>
										<dl class="dl-horizontal">
											<dt>用户名</dt>
											<dd>{$user->user_name}</dd>
											<dt>流水号</dt>
											<dd>{$user->email}</dd>
										</dl>
									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
										
										</div>
									</div>
								</div>
							</div>
						</div>

						
						<div class="card">
							<div class="card-main">
								<div class="card-inner margin-bottom-no">
									<p class="card-heading">最近五分钟使用IP</p>
									<p>请确认都为自己的IP，如有异常请及时修改连接密码。部分节点不支持记录。</p>
									<div class="card-table">
										<div class="table-responsive">
											<table class="table">
												<tr>
													
													<th>IP</th>
													<th>归属地</th>
												</tr>
												{foreach $userip as $single=>$location}
													<tr>
														
														<td>{$single}</td>
														<td>{$location}</td>
													</tr>
												{/foreach}
											</table>
										</div>
									</div>
								</div>
								
							</div>
</div>
					
					
						<div class="card">
							<div class="card-main">
								<div class="card-inner margin-bottom-no">
									<p class="card-heading">最近十次登录IP</p>
									<p>请确认都为自己的IP，如有异常请及时修改密码。</p>
									<div class="card-table">
										<div class="table-responsive">
											<table class="table">
												<tr>
													
													<th>IP</th>
													<th>归属地</th>
												</tr>
												{foreach $userloginip as $single=>$location}
													<tr>
														
														<td>{$single}</td>
														<td>{$location}</td>
													</tr>
												{/foreach}
											</table>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					
					

					
									
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</section>
		</div>
	</main>
	
	
	







{include file='user/footer.tpl'}

