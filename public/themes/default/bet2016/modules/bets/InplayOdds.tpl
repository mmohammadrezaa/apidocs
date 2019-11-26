<script type="text/javascript">
	window.onload = function(){
	    setTimeout(function() {
	        window.location = window.location
        }, 12500)
    }
</script>
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
							<input type="hidden" class="host" value="{$matches->localTeam->data->name|fa}">
							<input type="hidden" class="guest" value="{$matches->visitorTeam->data->name|fa}">
                            <div class="eventscore" style="margin-top:3px;">
                                <table class="">
                                    <tbody>
                                        <tr>
                                            <th><b>لیگ {$matches->league->data->name}</b></th>
                                            <th class="htScore text-center">نتیجه بازی</th>
                                            <th></th>
                                        </tr>
                                        <tr>
                                            <td style="background-color:rgba(0,0,0,0.25);" class="host">میزبان : {$matches->localTeam->data->name}</td>
											<td class="hScore" style="border-right:1px solid #454545;">{$matches->scores->localteam_score|persian_number}</td>
                                            <td style="color:#0c0;text-align:center;background-color:rgba(0,0,0,0.25);font-size:16px; width:170px" class="borderleft" rowspan="2">
                                                <b class="time inplaytime">{$matches->time->minute|persian_number}:{if {$matches->time->second|persian_number} == ''}۰۰{else}{$matches->time->second|persian_number}{/if}</b>
												<input class="eninplaytime" type="hidden" value="{if $matches->time->status == 'HT'}HT{else}{$matches->time->minute}:{if {$matches->time->second} == ''}00{else}{$matches->time->second}{/if}{/if}">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="background-color:rgba(0,0,0,0.25);border-top:1px solid #454545" class="guest">میهمان : {$matches->visitorTeam->data->name|fa}</td>
                                            <td class="aScore" style="border-right:1px solid #454545;">{$matches->scores->visitorteam_score|persian_number}</td>
                                        </tr>
                                    </tbody></table>
                            </div>
							{foreach $odds as $key => $val}
								{if $val->name eq '3Way Result'}
									{continue}
								{else}
								<table class="table inplaytable nohover">
									<tr class="inplayheader"><th><b>{$val->name|fa}</b></th></tr>
									<tr class="odddetails eventodd">
										<td style="padding:0">
											<div data-eventid="{$matches->id}" data-marketid="" class="eventodds">
												<span class="eventsuspended hidden">غیر فعال</span>
												{assign var=j value=0}
												{foreach $val->bookmaker->data[0]->odds->data as $odd}
													{if $j % 3 eq 0}<ul>{/if}
													<li style="width:176px;box-sizing: border-box;">
														<b class="ellipsis">
															{if $odd->label == '1' OR $odd->label == $matches->localTeam->data->name}
																{assign var=nameeee value='میزبان'}
															{else if $odd->label == '2' OR $odd->label == $matches->localTeam->data->name}
																{assign var=nameeee value='میهمان'}
															{else}
																{if $odd->label == '1X' OR (strpos($explode_label[0], $matches->localTeam->data->name) !== false AND $explode_label[1] == 'Draw')}
																	{assign var=nameeee value='میزبان/مساوی'}
																{else if $odd->label == '2X' OR (strpos($explode_label[0], $matches->visitorTeam->data->name) !== false AND $explode_label[1] == 'Draw')}
																	{assign var=nameeee value='میهمان/مساوی'}
																{else if $odd->label == 'X2' OR ($explode_label[0] == 'Draw' AND strpos($explode_label[1], $matches->visitorTeam->data->name) !== false)}
																	{assign var=nameeee value='مساوی/میهمان'}
																{else if $odd->label == 'X1' OR ($explode_label[0] == 'Draw' AND strpos($explode_label[1], $matches->localTeam->data->name) !== false)}
																	{assign var=nameeee value='مساوی/میزبان'}
																{else if $odd->label == '21' OR (strpos($explode_label[0], $matches->visitorTeam->data->name) !== false AND strpos($explode_label[1], $matches->localTeam->data->name) !== false)}
																	{assign var=nameeee value='میهمان/میزبان'}
																{else if $odd->label == '12' OR (strpos($explode_label[0], $matches->localTeam->data->name) !== false AND strpos($explode_label[1], $matches->visitorTeam->data->name) !== false)}
																	{assign var=nameeee value='میزبان/میهمان'}
																{else if $odd->label == '11' OR (strpos($explode_label[0], $matches->localTeam->data->name) !== false AND strpos($explode_label[1], $matches->localTeam->data->name) !== false)}
																	{assign var=nameeee value='میزبان/میزبان'}
																{else if $odd->label == '22' OR (strpos($explode_label[0], $matches->visitorTeam->data->name) !== false AND strpos($explode_label[1], $matches->visitorTeam->data->name) !== false)}
																	{assign var=nameeee value='میهمان/میهمان'}
																{else if $odd->label == 'XX' OR $odd->label == {'Draw/Draw'} OR ($explode_label[0] == 'Draw' AND $explode_label[1] == 'Draw')}
																	{assign var=nameeee value='مساوی/مساوی'}
																{else}
																	{assign var=nameeee value=$odd->label|fa}
																	{if $odd->total != ""}{assign var=nameeee value=$nameeee|con:' ':$odd->total}{/if}
																	{if $odd->handicap != ""}{assign var=nameeee value=$nameeee|con:' ':$odd->handicap}{/if}
																	{if $odd->winning != ""}{assign var=nameeee value=$nameeee|con:' ':$odd->winning}{/if}
																{/if}
															{/if}
															{$nameeee}
														</b>
													</li>
													<li data-runnerid="{$matches->id|con:'-': $odd->value:'-': {$val->name} :'-':{$nameeee}}" data-pick="{$nameeee}" data-points="" class="inplaybtn eventodd">
														<span>{$odd->value}</span>
													</li>
													{assign var=j value=$j+1}
													{if $j % 3 eq 0 AND $j != 1}</ul>{/if}
												{/foreach}
											</div>
										</td>
									</tr>
								</table>
								{/if}
							{/foreach}
						</li>
														<li>
															<div class="margin-left-3px">
																<div>
																	<table class="livescore betslip" style="margin-top:3px;">
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
