<div class="container">
	<div class="page-content light">
		<div class="ph15"></div>
		<div class="inline container">
			{include file="partials/dashboard_menu.tpl"}
			<div class="left static-content">
				<div class="page-area container inline form-container" align="center">
					<div class="page-title">شارژ حساب کاربری</div>
                    <div class="row">
						<div class="col-lg-12">
							<div class="topup-options">
								<div class="row">
									<div class="col-lg-6">
										<a onclick="document.getElementById('pay_title').innerHTML = 'پرداخت از طریق ووچر پرفکت مانی';document.getElementById('type').value = 'pm';document.getElementById('main_form').style.display = '';" href="javascript:;" class="item-2-box">
											<div class="image" style="background-image: url({assets_url}/images/1524077786-8855-4121.jpg"></div>
											<div class="title"><div>پرداخت از طريق ووچر پرفكت ماني</div></div>
										</a>
									</div>
									<div class="col-lg-6">
										<a onclick="document.getElementById('pay_title').innerHTML = 'پرداخت از طریق پرفکت مانی';document.getElementById('type').value = 'pm';document.getElementById('main_form').style.display = '';" href="javascript:;" class="item-2-box">
											<div class="image" style="background-image: url({assets_url}/images/1524077764-8155-9766.jpg"></div>
											<div class="title"><div>پرداخت از طريق حساب پرفكت ماني</div></div>
										</a>
									</div>
									
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="topup-form" id="main_form" style="display:none;">
								<section class="sitebox">
									<div class="normal-form">
										<h2 id="pay_title"></h2>
										<form action="{site_url}payment/credit" method="post">
											<div class="siteform">
												<input type="hidden" value="" id="type" name="type" />
												<div class="amountinput">
													<label class="label" for="Amount">مبلغ به تومان</label>
													<input autocomplete="off" class="input ltrinput centre" data-val="true" data-val-number="The field مبلغ به تومان must be a number." data-val-range="حداقل مبلغ افزایش موجودی ۱۰۰۰ تومان است." data-val-range-max="2147483647" data-val-range-min="1000" data-val-regex="مبلغ به تومان باید با فرمت درست وارد شود. " data-val-regex-pattern="^\d+$" data-val-required="وارد کردن مبلغ به تومان الزامی است." id="Amount" name="amount" type="text" value="">
													<span class="field-validation-valid error_message" data-valmsg-for="Amount" data-valmsg-replace="true"></span>
													<span class="error_message max_error"></span>
												</div>
												<input class="btn btn-primary floatright" type="submit" value="پرداخت">
											</div>
										</form>                     
									</div>
								</section>
							</div>
						</div>
					</div>
                </div>
            </div>
        </div>
    </div>
</div>