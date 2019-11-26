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
                        <li class="history active">
                            <a href="{site_url}bets/myrecords">سابقه پیش بینی ها</a>
                        </li>
                    </ul>
                </header>
            </div>
            <div class="maincontent clearfix">
                <div class="content">

                    <table class="table mybettable" style="table-layout: fixed;">
                        <thead>
                            <tr>
                                <th>
                                    زمان
                                </th>
                                <th>
                                    نوع
                                </th>
                                <th style="width:250px">
                                    شرط
                                </th>
                                <th style="width:150px">
                                    انتخاب
                                </th>
                                <th style="width:150px">
                                    نتیجه
                                </th>
                                <th style="width:80px">
                                    مبلغ (تومان) 
                                </th>
                                <th style="width:80px">
                                    ضریب
                                </th>
                                <th>
                                    مبلغ برد (تومان) 
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $myRecords as $key => $val}
                                <tr onclick="window.location = base_url + 'bets/BetDetail/{$val->id}'">
                                    <td>
                                        {jdate format='j F Y - H:i' date=$val->created_at}
                                    </td>
                                    <td>
                                        {if $val->type == 1}
                                            تکی
                                        {else}
                                            میکس  {$val->type} تایی
                                        {/if}
                                    </td>
                                    <td colspan="3">
                                        {foreach $val->bet_form as $match}
                                            <ul class="detailbet">
                                                <li style="width:250px">
                                                    <strong style="float:left">
                                                        {$match->home_team|fa}
                                                    </strong>
                                                    <strong style="float:right">
                                                        {$match->away_team|fa}
                                                    </strong>
                                                    <br>(نتیجه مسابقه)</li>
                                                <li style="width:150px">{$match->pick|fa} </li>
                                                <li style="width:150px; direction: ltr;">
                                                    <span style="width:100%;text-align:center" class="bold">{$match->home_score_ft|persian_number} - {$match->away_score_ft|persian_number}<br>({$match->home_score|persian_number} - {$match->away_score|persian_number})</span>
                                                </li>
                                            </ul>

                                        {/foreach}
                                    </td>
                                    <td>
                                        {number_format($val->stake)|persian_number}
                                    </td>
                                    <td>
                                        {$val->effective_odd|persian_number}
                                    </td>
                                    <td class="prizeTD">
                                        <span style="color:#00b957">
                                            <b>
                                                {if $val->status eq 0}

                                                {else if $val->status eq 1 }
                                                    {assign var=winning value=$val->stake * $val->effective_odd}
                                                    {number_format($winning)|persian_number}
                                                {else if $val->status eq 2}
                                                    <span style="color:red">{0|persian_number}</span>
                                                {/if}
                                            </b>
                                        </span>
                                    </td>
                                </tr>
                            {/foreach}

                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="8">
                                    <div class="paging">
                                        <ul class="pagination">
                                            {$paging}
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>