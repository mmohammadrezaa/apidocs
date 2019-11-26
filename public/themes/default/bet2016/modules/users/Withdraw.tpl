<div>
    <div class="cell">
        <div class="container">
            <div class="maincontent">
                <div class="menu">
                    {include file="partials/dashboard_menu.tpl"}
                </div>
                <div class="content">
                    <header>
                        <h1>&#1583;&#1585;&#1740;&#1575;&#1601;&#1578; &#1580;&#1575;&#1740;&#1586;&#1607;</h1>
                    </header>
                    <div class="row">

                        <div style="overflow:hidden;margin-bottom:20px;">
                            <div class="floatleft" style="max-width:500px">
                                <ul>
                                    <li>
									    حداقل مبلغ قابل برداشت {50000|price_format} می باشد .
                                    </li>
                                    <li>
                                        جوایز با استفاده از حساب بانکی پرداخت می شوند .
                                    </li>
                                    <li>
										پر کردن موارد ستاره دار الزامیست .
                                    </li>
                                </ul>
                            </div>

                            <div class="report floatright" style="width:30%">
                                <div style="width:100%">
                                    <span class="report-title">&#1605;&#1576;&#1604;&#1594; &#1602;&#1575;&#1576;&#1604; &#1576;&#1585;&#1583;&#1575;&#1588;&#1578;</span>
                                    <span class="report-data">{$cash|price_format}</span>
                                </div>
                            </div>
                        </div>

                        <section class="topup-content">
                            <div class="topup-form" style="margin-bottom:10px;">
                                <section class="sitebox">
                                    <div class="btn"></div>
                                    <form action="{$action}" method="post">

                                        <div class="siteform">
                                            <div>
                                                <label class="label" for="Amount">&#1605;&#1576;&#1604;&#1594; &#1576;&#1607; &#1578;&#1608;&#1605;&#1575;&#1606; *</label>
                                                <input class="input ltrinput centre" data-val="true" data-val-number="The field &#1605;&#1576;&#1604;&#1594; &#1576;&#1607; &#1578;&#1608;&#1605;&#1575;&#1606; must be a number." data-val-range="You have only 1340 available." data-val-range-max="1340" data-val-range-min="50000" data-val-regex="&#1605;&#1576;&#1604;&#1594; &#1576;&#1607; &#1578;&#1608;&#1605;&#1575;&#1606; &#1576;&#1575;&#1740;&#1583; &#1576;&#1575; &#1601;&#1585;&#1605;&#1578; &#1583;&#1585;&#1587;&#1578; &#1608;&#1575;&#1585;&#1583; &#1588;&#1608;&#1583;. " data-val-regex-pattern="^\d+$" data-val-required="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1605;&#1576;&#1604;&#1594; &#1576;&#1607; &#1578;&#1608;&#1605;&#1575;&#1606; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." id="Amount" name="amount" value="" type="text">
                                                <span class="field-validation-valid error_message" data-valmsg-for="Amount" data-valmsg-replace="true">{form_error('amount')}</span>
                                                <span class="error_message max_error"></span>
                                            </div>
                                            <div >
                                                <label class="label" for="AccountNumber">شماره کارت *</label>
                                                <input  class="input ltrinput centre" id="AccountNumber" name="account_number" value="" type="text">
                                                <span class="field-validation-valid error_message" data-valmsg-for="AccountNumber" data-valmsg-replace="true">{form_error('account_number')}</span>
                                            </div>
                                            <div >
                                                <label class="label" for="Sheba">شماره شبا</label>
                                                <input class="input  ltrinput centre" data-val="true" data-val-required="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1588;&#1605;&#1575;&#1585;&#1607; &#1588;&#1576;&#1575; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." id="Sheba" name="sheba" value="" type="text">
                                                <span class="field-validation-valid error_message" data-valmsg-for="Sheba" data-valmsg-replace="true">{form_error('sheba')}</span>
                                            </div>
                                            <div>
                                                <label class="label" for='webmoney'>نام صاحب حساب (اختیاری)</label>
                                                <input class="input  ltrinput centre" data-val="true" data-val-required="&#1608;&#1575;&#1585;&#1583; &#1705;&#1585;&#1583;&#1606; &#1588;&#1605;&#1575;&#1585;&#1607; &#1588;&#1576;&#1575; &#1575;&#1604;&#1586;&#1575;&#1605;&#1740; &#1575;&#1587;&#1578;." id="webmoney" name="webmoney" value="" type="text">
                                                <span class="field-validation-valid error_message" data-valmsg-for="Sheba" data-valmsg-replace="true">{form_error('webmoney')}</span>
                                            </div>


                                            <div>
                                                <input class="btn btn-lg btn-primary floatright" value="&#1583;&#1585;&#1582;&#1608;&#1575;&#1587;&#1578;" type="submit" name="submit_withdraw">
                                            </div>
                                        </div>
                                    </form>                                </section>
                            </div>
                        </section>

                        <section class="formbox row_100 clearfix">
                            <div class="support_messages" style="display: block;">
                                <table class="leaguetable support">
                                    <tbody>
                                        <tr>
                                            <th>&#1588;&#1606;&#1575;&#1587;&#1607; &#1583;&#1585;&#1582;&#1608;&#1575;&#1587;&#1578;</th>
                                            <th>&#1578;&#1575;&#1585;&#1740;&#1582; &#1583;&#1585;&#1582;&#1608;&#1575;&#1587;&#1578;</th>
                                            <th>&#1605;&#1576;&#1604;&#1594; &#1583;&#1585;&#1582;&#1608;&#1575;&#1587;&#1578;&#1740;</th>
                                            <th>&#1608;&#1590;&#1593;&#1740;&#1578;</th>
                                        </tr>
                                        {foreach $withdrawList as $val}
                                            <tr>
                                                <td>    
                                                    {$val->id}
                                                </td>
                                                <td>
                                                    <time datetime="">
                                                        {jdate format='j F Y - h:i a' date=$val->created_at}
                                                    </time>
                                                </td>
                                                <td>
                                                    {$val->amount|price_format}
                                                </td>
                                                <td>
                                                    {if $val->status eq 0}
                                                        &#1662;&#1585;&#1583;&#1575;&#1582;&#1578; &#1606;&#1588;&#1583;&#1607;/&#1583;&#1585;&#1581;&#1575;&#1604; &#1576;&#1585;&#1585;&#1587;&#1740;
                                                    {else if $val->status eq -1}
                                                        &#1583;&#1585;&#1582;&#1608;&#1575;&#1587;&#1578; &#1585;&#1583; &#1588;&#1583;&#1607; &#1575;&#1587;&#1578;
                                                    {else if $val->status eq 1}
                                                        &#1662;&#1585;&#1583;&#1575;&#1582;&#1578; &#1588;&#1583;&#1607;
                                                    {else if $val->status eq 2}
                                                       &#1576;&#1585;&#1585;&#1587;&#1740; &#1588;&#1583;&#1607;&#1548; &#1583;&#1585; &#1575;&#1606;&#1578;&#1592;&#1575;&#1585; &#1662;&#1585;&#1583;&#1575;&#1582;&#1578;
                                                    {/if}
                                                </td>
                                            </tr>
                                        {/foreach}
                                    </tbody>
                                </table>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>