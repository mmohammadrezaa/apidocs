<div>
    <div class="cell">
        <div class="container">
            {if $_GET["pay"] == "true"}
                <div style="margin-top:20px !important;width:100% !important;background-color:BlueViolet !important;color:white !important;padding:20px !important;">پرداخت با موفقیت انجام شد . موجودی تراکنش به حساب شما افزوده شد</div>
            {elseif $_GET["pay"] == "false"}
                <div style="margin-top:20px !important;width:100% !important;background-color:#ff6600 !important;color:white !important;padding:20px !important;">خطایی در هنگام انجام تراکنش به وجود آمده است . لطفا مجددا تلاش فرمایید . در صورت کسر وجه از حساب شما تا 72 ساعت آینده مبلغ به حسابتان باز میگردد</div>
            {/if}
            <div class="maincontent clearfix">
                <div class="menu">
                    {include file='partials/dashboard_menu.tpl'}
                </div>
                <div class="content">
                    <header>
                        <h1>سابقه تراکنش ها</h1>
                    </header>
                    <table class="table nopointer">
                        <thead>
                            <tr>
                                <th>
                                    شماره پیگیری تراکنش
                                </th>
                                <th>
                                    زمان تراکنش
                                </th>
                                <th>
                                    نوع تراکنش
                                </th>
                                <th>
                                    مبلغ به تومان
                                </th>
                                <th>
                                    موجودی حساب 
                                </th>
                                <th>
                                    وضعیت 
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            {if $transactions->isEmpty()}
                                <tr>
									<td colspan="6">رکوردی یافت نشد</td>
                                </tr>
                            {else}
                                {foreach from=$transactions item=val} 
                                    <tr>
                                        <td>
                                            {$val.trans_id}
                                        </td>
                                        <td>
                                            {jdate format='j F Y' date=$val.created_at}
                                        </td>
                                        <td>
                                            <b>{$val->description}</b>
                                        </td>
                                        <td style="font-weight:bold">
                                            {$val.price|price_format}                        
                                        </td>
                                        <td style="font-weight:bold">
                                            {$val.cash|price_format}
                                        </td>
                                        <td style="font-weight:bold">
                                            {if $val.status == '1' OR $val.status == 1}
												<font color="green"><b>پرداخت شده</b></font>
											{else}
												<font color="red"><b>معلق</b></font>
											{/if}
                                        </td>
                                    </tr>
                                {/foreach}
                            {/if}
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>