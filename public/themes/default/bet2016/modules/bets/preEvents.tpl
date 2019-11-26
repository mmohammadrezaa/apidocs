

<div>
    <div class="cell">
        <div class="container">

            <div class="content">
                <header class="tabheader">
                    <ul class="tab">
                        <li class="inplay">
                            <a href="{site_url}bets/inplayBet">پیش بینی زنده</a>
                        </li>
                        <li class="upcoming">
                            <a href="{site_url}bets/upComing">پیش بینی پیش از بازی</a>
                        </li>
                        <li class="history">
                            <a href="{site_url}bets/myrecords">سابقه پیش بینی ها</a>
                        </li>
                    </ul>
                </header>
            </div>
            <div class="maincontent clearfix">
                <div class="content">
                    <ul class="odds inplay">
                        <li>
                            <input type="hidden" class="host" value="{$matches->homeTeam->name|fa}">
                            <input type="hidden" class="guest" value="{$matches->awayTeam->name|fa}">
                            {foreach $odds as $key => $val}
                                {if $val->type eq 'Home/Away' OR $val->type eq '3Way Handicap'}
                                    {continue}
                                {/if}
                                <table class="table inplaytable nohover">
                                    <tr class="inplayheader">
                                        <th>
                                            <b>{$val->type|fa}</b>
                                        </th>
                                    </tr>
                                    <tr class="odddetails eventodd">
                                        <td style="padding:0">
                                            <div data-eventid="{$matches->id}" data-marketid="" class="eventodds">
                                                <span class="eventsuspended hidden">غیر فعال</span>
                                                {assign var=i value=0}
                                                {foreach $val->odds->data as $odd}
                                                    {if $i % 3 eq 0}
                                                        <ul>
                                                        {/if}

                                                        <li style="width:176px;box-sizing: border-box;">
                                                            <b class="ellipsis">
                                                                {if $val->type == '1x2'}
                                                                    {if $odd->label == 1}
                                                                        {$matches->homeTeam->name|fa}
                                                                    {else if $odd->label == 2 }
                                                                        {$matches->awayTeam->name|fa}
                                                                    {else}
                                                                        مساوی
                                                                    {/if}
                                                                {else}
                                                                    {if $odd->label == '1'}
                                                                        میزبان
                                                                    {else if $odd->label == '2'}
                                                                        میهمان
                                                                    {else}
                                                                        {if $odd->label == {$matches->homeTeam->name|con:'/':'Draw'}}
                                                                            میزبان/مساوی
                                                                            {else if $odd->label == {$matches->awayTeam->name|con:'/':'Draw'} }
                                                                                میهمان/مساوی
                                                                                {else if $odd->label == {'Draw'|con:'/':$matches->awayTeam->name} }
                                                                                    مساوی/میهمان
                                                                                    {else if $odd->label == {'Draw'|con:'/':$matches->homeTeam->name} }
                                                                                        مساوی/میزبان
                                                                                        {else if $odd->label == {$matches->awayTeam->name|con:'/':$matches->homeTeam->name} }
                                                                                            میهمان/میزبان
                                                                                            {else if $odd->label == {$matches->homeTeam->name|con:'/':$matches->awayTeam->name} }
                                                                                                میزبان/میهمان
                                                                                                {else if $odd->label == {$matches->homeTeam->name|con:'/':$matches->homeTeam->name} }
                                                                                                    میزبان/میزبان
                                                                                                    {else if $odd->label == {$matches->awayTeam->name|con:'/':$matches->awayTeam->name} }
                                                                                                        میهمان/میهمان
                                                                                                        {else if $odd->label == {'Draw/Draw'} }
                                                                                                            مساوی/مساوی
                                                                                                        {else}
                                                                                                            {$odd->label|fa}
                                                                                                        {/if}
                                                                                                    {/if}
                                                                                                {/if}
                                                                                            </b>
                                                                                        </li>

                                                                                        <li data-runnerid="{$matches->id|con:'-': $matches->odds->data[0]->bookmaker_id:'-': {$val->type} :'-':{$odd->label}}" data-pick="{$odd->label}" data-points="" class="inplaybtn eventodd">
                                                                                            <span>{$odd->value}</span>
                                                                                        </li>

                                                                                        {assign var=i value=$i+1}
                                                                                        {if $i % 3 eq 0 AND $i != 1}
                                                                                        </ul>
                                                                                    {/if}
                                                                                {/foreach}
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            {/foreach}
                                                        </li>
                                                        <li>
                                                            <div class="margin-left-3px">
                                                                <div>
                                                                    <table class="livescore betslip">
                                                                        <tr><th>پیش بینی های من</th></tr>
                                                                        <tr>
                                                                            <td>
                                                                                <div class="nobet">
                                                                                    هنوز هیچ شرطی بسته نشده است. برای پیش بینی بروی ضریب مورد نظر خود کلیک کنید.
                                                                                </div>
                                                                                <div class="selectedodds">
                                                                                    <div class="betlist">
                                                                                    </div>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <div class="bettotal hidden">

                                                                        <table class="livescore multiple"></table>
                                                                        <ul class="bettotal">
                                                                            <li>مجموع مبالغ <span class="totalstake">0</span></li>
                                                                            <li>برد احتمالی (تومان) <span class="totalwin">0</span></li>
                                                                        </ul>
                                                                        <table class="livescore">
                                                                            <tr>
                                                                                <td><a class="deleteall" href="javascript:void(0)">حذف همه</a></td>
                                                                                <td><button class="totobutton smallbutton placebet disabled">ثبت شرط</button></td>
                                                                            </tr>
                                                                        </table>
																	</div>
																	                                <a href="https://t.me/vipcasino90/" target="_blank" class="floatright margin-left-3px">
                                    <img class="margin-left-3px floatright" style="margin-top:5px;width:256px;" src="/assets/default/bet2016/images/1.gif" />
                                </a>
                                <a href="../" class="floatright margin-left-3px">
                                    <img class="margin-left-3px floatright" style="margin-top:5px;width:256px;" src="/assets/default/bet2016/images/2.gif" />
                                </a>
