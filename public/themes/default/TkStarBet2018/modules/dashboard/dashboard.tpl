<div class="container">
	<div class="page-content light">
		<div class="ph15"></div>
		<div class="inline container">
			{include file="partials/dashboard_menu.tpl"}
			<div class="left static-content">
				<div class="page-area container inline form-container">
					<div class="page-title">حساب کاربری</div>
					<div class="p7 inline center">
						<div class="report">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<span class="report-title">شناسه کاربری</span>
								<span class="report-data">{$user->id|persian_number}</span>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<span class="report-title">موجودی فعلی حساب</span>
								<span class="report-data">{$user->cash|price_format}</span>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<span class="report-title">مجموع پیشبینی ها</span>
								<span class="report-data">{$totalBetCount|persian_number} پیش بینی ({$totalStake|price_format})</span>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<span class="report-title">مجموع برد پیش بینی ها</span>
								<span class="report-data">{$giftCount|persian_number} برد ({$totalGift|price_format})</span>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<span class="report-title">مجموع شرط بندی های کازینو</span>
								<span class="report-data">{$all_casino_prices_count|persian_number} شرط بندی ({$all_casino_prices|price_format})</span>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<span class="report-title">مجموع برد شرط بندی های کازینو</span>
								<span class="report-data">{$all_win_casino_prices_count|persian_number} برد ({$all_win_casino_prices|price_format})</span>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<span class="report-title">مجموع واریز های شما به سایت</span>
								<span class="report-data">{$creditSum|price_format}</span>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<span class="report-title">مجموع برداشت ها</span>
								<span class="report-data">{$withdrawSum|price_format} ({$withdrawInSum|price_format} در انتظار پرداخت)</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>