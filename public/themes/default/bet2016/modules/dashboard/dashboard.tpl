<div>
    <div class="cell">
        <div class="container">
            <div class="maincontent">
                {include file="partials/dashboard_menu.tpl"}
                <div class="content">
                    <header>
                        <h1>خلاصه حساب</h1>
                    </header>
                    <div class="row">
                        <div class="report">
                            <div>
                                <span class="report-title">شناسه کاربری</span>
                                <span class="report-data">{$user->id|persian_number}</span>
                            </div>
                            <div>
                                <span class="report-title">موجودی حساب </span>
                                <span class="report-data">{$user->cash|price_format}</span>
                            </div>
                            <div>
                                <span class="report-title">مجموع پیشبینی ها</span>
                                <span class="report-data">{$totalBetCount|persian_number} ({$totalStake|price_format})</span>
                            </div>
                            <div>
                                <span class="report-title">مجموع جوایز</span>
                                <span class="report-data">{$giftCount|persian_number} ({$totalGift|price_format})</span>
                            </div>
                            <div>
                                <span class="report-title">مجموع واریز ها</span>
                                <span class="report-data">{$creditSum|price_format}</span>
                            </div>
                            <div>
                                <span class="report-title">مجموع برداشت ها</span>
                                <span class="report-data">{$withdrawSum|price_format}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>