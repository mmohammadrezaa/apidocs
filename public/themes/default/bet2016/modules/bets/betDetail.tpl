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
            <div class="maincontent clearfix" style="margin-top:5px;">

                <div class="content">
                    <header>
                        <h1>جزئیات پیش بینی</h1>
                    </header>
                    <div class="row">
                        <ul class="accountsummary betsummary">
                            <li>
                                <span>نوع : </span>
                                <span>
                                    {if $betRecord->type == 1}
                                        تکی
                                    {else}
                                        میکس  {$betRecord->type} تایی
                                    {/if}
                                </span>
                            </li>
                            <li>
                                <span>شناسه شرط : </span>
                                <span>
                                    {$betRecord->id}
                                </span></li>
                            <li><span>زمان : </span><span>{jdate format='j F Y - H:i ' date=$betRecord->created_at}</span></li>
                            <li>
                                <span>مبلغ (تومان) :</span>
                                <span>
                                    {$betRecord->stake|price_format}
                                </span>
                            </li>
                            <li><span>ضریب : </span><span>{$betRecord->effective_odd|persian_number}</span></li>
                            <li>

                                {assign var=winning value=$betRecord->stake * $betRecord->effective_odd}
                                {if $betRecord->status eq 0}
                                    <span>مبلغ برد احتمالی:</span>
                                    {$winning|price_format}
                                {else if $betRecord->status eq 1 }
                                    <span>مبلغ برد:</span>
                                    {$winning|price_format}
                                {else if $betRecord->status eq 2}
                                    <span>مبلغ برد:</span>
                                    <span style="color:red">{0|persian_number}</span>
                                {/if}

                            </li>
                        </ul>
                    </div>
                    <table class="table nopointer">
                        <thead>
                            <tr>
                                <th>
                                    زمان
                                </th>
                                <th>
                                    مسابقه
                                </th>
                                <th>
                                    شرط
                                </th>
                                <th>
                                    انتخاب
                                </th>
                                <th>
                                    ضریب
                                </th>
                                <th>
                                    نتیجه
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                        <tbody>
                            {foreach $betRecord->bet_form as $val}
								{$bet_form_result = file_get_contents('https://api.soccerama.pro/v1.2/matches/'|con:'':$val->match_id:'/?api_token=KwK54WZp9bHVUFC05my9N57SNyha1oerTVQPl4my0KUzRyKpcsYg1gdb5lBs&include=homeTeam,awayTeam')}
								{if empty($bet_form_result)}
									{$bet_form_result = file_get_contents('https://soccer.sportmonks.com/api/v2.0/fixtures/'|con:'':$val->match_id:'/?api_token=KwK54WZp9bHVUFC05my9N57SNyha1oerTVQPl4my0KUzRyKpcsYg1gdb5lBs&include=localTeam,visitorTeam')}
								{/if}
								{assign var=bet_form_result_json value=json_decode($bet_form_result, false)}
								{assign var=ht_score value=explode('-', $bet_form_result_json->data->scores->ht_score)}
								{assign var=ft_score value=explode('-', $bet_form_result_json->data->scores->ft_score)}
								{assign var=et_score value=explode('-', $bet_form_result_json->data->scores->et_score)}
								{if empty($ht_score[0])}{$ht_score[0] = 0}{/if}
								{if empty($ht_score[1])}{$ht_score[1] = 0}{/if}
								{if empty($ft_score[0])}{$ft_score[0] = 0}{/if}
								{if empty($ft_score[1])}{$ft_score[1] = 0}{/if}
								{if empty($et_score[0])}{$et_score[0] = 0}{/if}
								{if empty($et_score[1])}{$et_score[1] = 0}{/if}
                                <tr>
                                    <td>{jdate format='j F Y - H:i' date=$val->created_at}</td>
                                    <td><strong style="float:left">{$val->home_team|fa}</strong>-<strong style="float:right">{$val->away_team|fa}</strong></td>
                                    <td>
                                        {$val->bet_type|fa}
                                    </td>
                                    <td>{$val->pick|fa} </td>
                                    <td>{$val->odd|persian_number}</td>
                                    <td style="direction: ltr;">
                                        <span class="bold">
											نیمه اول : {$ht_score[0]|persian_number} - {$ht_score[1]|persian_number}<br>
											نیمه دوم : {$ft_score[0]|persian_number} - {$ft_score[1]|persian_number}<br>
											وقت اضافه (15 دقیقه) : {$et_score[0]|persian_number} - {$et_score[1]|persian_number}
											{if !empty($bet_form_result_json->data->scores->localteam_pen_score) OR !empty($bet_form_result_json->data->scores->visitorteam_pen_score)}
												<br><br>
												نتیجه پنالتی :<br>
												{$val->home_team|fa} : {if empty($bet_form_result_json->data->scores->localteam_pen_score)}{0|persian_number}{else}{$bet_form_result_json->scores->localteam_pen_score|persian_number}{/if}
												{$val->away_team|fa} : {if empty($bet_form_result_json->data->scores->visitorteam_pen_score)}{0|persian_number}{else}{$bet_form_result_json->scores->visitorteam_pen_score|persian_number}{/if}
											{/if}
										</span>
                                    </td></tr>
                                {/foreach}
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>