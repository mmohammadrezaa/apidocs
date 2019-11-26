<a style="display: none !important;" rel="follow" href="http://ibet90.ml">&#1662;&#1740;&#1588; &#1576;&#1740;&#1606;&#1740; &#1601;&#1608;&#1578;&#1576;&#1575;&#1604;</a>
<a style="display: none !important;" rel="follow" href="http://ibet90.tk">&#1662;&#1740;&#1588; &#1576;&#1740;&#1606;&#1740; &#1601;&#1608;&#1578;&#1576;&#1575;&#1604;</a>
<a style="display: none !important;" rel="follow" href="http://ibet90.gq">&#1662;&#1740;&#1588; &#1576;&#1740;&#1606;&#1740; &#1601;&#1608;&#1578;&#1576;&#1575;&#1604;</a>
<style type="text/css">
blink {
    -webkit-animation: 1s linear infinite condemned_blink_effect;
    animation: 1s linear infinite condemned_blink_effect;
}
@-webkit-keyframes condemned_blink_effect {
    0% {
        visibility: hidden;
    }
    50% {
        visibility: hidden;
    }
    100% {
        visibility: visible;
    }
}
@keyframes condemned_blink_effect {
    0% {
        visibility: hidden;
    }
    50% {
        visibility: hidden;
    }
    100% {
        visibility: visible;
    }
}
.backgroundChangeRed{
	background-color:red !important;
}
.backgroundChangeGreen{
	background-color:green !important;
}
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function clearAllSetTimeouts(){
		var timeoutID=window.setTimeout(function(){},0);
		while(timeoutID--){
			clearTimeout(timeoutID);
		}
	}
	function clearAllSetInterval(){
		var intervalID=window.setInterval(function(){},0);
		while(intervalID--){
			window.clearInterval(intervalID);
		}
	}
	$(document).ready(function(){
		self.countIntervalUpdate = 0;
		setTimeout(function(){
			$(".caret-icons").each(function(){
				$this = $(this);
				$this.fadeOut(500, function(){
					$this.remove();
				});
			});
		}, 5000);
		intervalBackGrounds();
		setInterval(function(){
			$.ajax({
				type:"GET",
				url:"asd",
				success:function($r){
					self.countIntervalUpdate = parseInt(self.countIntervalUpdate + 1);
					var myjson = JSON.parse($r);
					for(var key in myjson){
						$('#li_odds_' + key).html(myjson[key]);
					}
					setTimeout(function(){
						$(".caret-icons").each(function(){
							$this = $(this);
							$this.fadeOut(500, function(){
								$this.remove();
							});
						});
					}, 5000);
					if(self.countIntervalUpdate >= 30){
						window.location = 'inplayBet';
					}
					prepareButtonEvents();
					intervalBackGrounds();
				}
			});
		}, 7500);
		/*setInterval(function(){
			$('#inplaytable').hide();
			$('#ajaxLoaderIcon').show();
			setTimeout(function(){
				$('#inplaytable').show();
				$('#ajaxLoaderIcon').hide();
			}, 3000);
		}, 45000);*/
	});
	function intervalBackGrounds(){
		self.intervalBlinkBC = 0;
		var intervalID = setInterval(function(){
			self.intervalBlinkBC = self.intervalBlinkBC + 1;
			if(self.intervalBlinkBC >= 10){
				clearInterval(intervalID);
			}
			$('.fa-caret-up').parent().parent().toggleClass("backgroundChangeGreen");
		},500);
		self.intervalBlinkBC2 = 0;
		var intervalID2 = setInterval(function(){
			self.intervalBlinkBC2 = self.intervalBlinkBC2 + 1;
			if(self.intervalBlinkBC2 >= 10){
				clearInterval(intervalID2);
			}
			$('.fa-caret-down').parent().parent().toggleClass("backgroundChangeRed");
		},500);
	}
</script>
<div>
    <div class="cell">
        <div class="container">

            <div class="content">
                <header class="tabheader">
                    <ul class="tab">
                        <li class="inplay active">
                            <a href="{site_url}bets/inplayBet">&#1662;&#1740;&#1588; &#1576;&#1740;&#1606;&#1740; &#1586;&#1606;&#1583;&#1607;</a>
                        </li>
                        <li class="upcoming">
                            <a href="{site_url}bets/upComing">&#1662;&#1740;&#1588; &#1576;&#1740;&#1606;&#1740; &#1662;&#1740;&#1588; &#1575;&#1586; &#1576;&#1575;&#1586;&#1740;</a>
                        </li>
                        <li class="history ">
                            <a href="{site_url}bets/myrecords">&#1587;&#1575;&#1576;&#1602;&#1607; &#1662;&#1740;&#1588; &#1576;&#1740;&#1606;&#1740; &#1607;&#1575;</a>
                        </li>
                </header>
            </div>
            <div class="maincontent clearfix">
                <div class="content">
                    <ul class="odds inplay">
                        <li>
                            <i id="ajaxLoaderIcon" style="display:none; margin-bottom:20px;margin-top:20px;" class="fa-loader fa fa-spinner fa-pulse"></i>
                            <table id="inplaytable" class="table inplaytable" style="margin-top:3px;">
                                <tbody>
                                    {if !empty($matches) }
                                        {assign var=i value=0}
                                        {foreach $matches as $key => $val}
											{$gotBreak = 0}
											{foreach $val as $match} 
												{$date2 = DateTime::createFromFormat('Y-m-d H:i:s', date('Y-m-d H:i:s'))}
												{if $match->time->status == 'LIVE' AND {searchArray key='label' val='1' array=$match->odds->data[0]->bookmaker->data[0]->odds->data} != null AND {searchArray key='label' val='2' array=$match->odds->data[0]->bookmaker->data[0]->odds->data} != null AND {searchArray key='label' val='X' array=$match->odds->data[0]->bookmaker->data[0]->odds->data} != null} 
												   {assign var=gotBreak value=1}
													{break}
												{/if}
											{/foreach}
											{if !$gotBreak}
												{continue}
											{/if}
											<tr class="inplayheader">
												<th><span class="match"><b>{$key|fa}</b></span></th>
												<th style="width:44px"><b>&#1605;&#1740;&#1586;&#1576;&#1575;&#1606;</b></th>
												<th style="width:44px"><b>&#1605;&#1587;&#1575;&#1608;&#1740;</b></th>
												<th style="width:44px"><b>&#1605;&#1740;&#1607;&#1605;&#1575;&#1606;</b></th>
												<th style="width:25px"></th>
											</tr>
											{foreach $val as $match_team}
											{if $match_team->time->status == 'LIVE' or $match_team_time->status == 'ET'}
                                                <tr data-eventid="{$match_team->id}" data-marketid="" class="odddetails">
                                                    <td>
                                                        <span class="fa fa-clock-o timer"></span>
                                                        <b class="host ellipsis">{$match_team->localTeam->data->name|fa}</b>
                                                        <span class="inplayscore">{$match_team->scores->localteam_score} - {$match_team->scores->visitorteam_score}</span>
                                                        <b class="guest ellipsis">{$match_team->visitorTeam->data->name|fa}</b>
                                                        <span class="inplaytime">{if $match_team->time->minute != ''}{$match_team->time->minute}{else}00{/if}:{if $match_team->time->second != ''}{$match_team->time->second}{else}00{/if}</span>
                                                        <input class="eninplaytime" type="hidden" value="{$match_team->time->status}">
                                                    </td>
                                                    <td style='padding:0' colspan='3'>
                                                        <div class='eventodds' id="li_odds_{$match_team->id}">
															{$last = $match_team->odds->data[0]->bookmaker->data[0]}
															{$randed_one = $last->odds->data[0]->value}
															{$randed_two = $last->odds->data[1]->value}
															{$randed_three = $last->odds->data[2]->value}
															{if $randed_one < 1 AND $randed_one != 0}{$randed_one = 1}{/if}
															{if $randed_two < 1 AND $randed_two != 0}{$randed_two = 1}{/if}
															{if $randed_three < 1 AND $randed_three != 0}{$randed_three = 1}{/if}
															{if $randed_one == 0 OR $randed_one == 0.0 OR $randed_one == 0.00}{$randed_one = ""}{/if}
															{if $randed_two == 0 OR $randed_two == 0.0 OR $randed_two == 0.00}{$randed_two = ""}{/if}
															{if $randed_three == 0 OR $randed_three == 0.0 OR $randed_three == 0.00}{$randed_three = ""}{/if}
                                                            {foreach $oddBanns as $match_id => $oddO}
                                                                {if $oddO['id'] == $match_team->id}
                                                                    {if 'local' == $oddO['oddO']}{$randed_one = 0}{/if}
                                                                    {if 'x' == $oddO['oddO']}{$randed_two = 0}{/if}
                                                                    {if 'visitor' == $oddO['oddO']}{$randed_three = 0}{/if}
                                                                {/if}
                                                            {/foreach}
															{if ($match_team->scores->visitorteam_score > $match_team->scores->localteam_score AND $randed_three > $randed_one) OR
																($match_team->scores->localteam_score > $match_team->scores->visitorteam_score AND $randed_one > $randed_three) OR
																($match_team->scores->localteam_score == $match_team->scores->visitorteam_score AND ($randed_two < $randed_one OR $randed_two < $randed_three))}
																{assign var=disabled1 value="true"}
															{else}
																{assign var=disabled1 value="false"}
															{/if}
															{if $match_team->scores->localteam_score > $match_team->scores->visitorteam_score AND $randed_one > 1.5}
																{$disabled_ifs_1 = 'true'}
															{/if}
															{if $match_team->scores->localteam_score == $match_team->scores->visitorteam_score AND $randed_two > 1.5}
																{$disabled_ifs_2 = 'true'}
															{/if}
															{if $match_team->scores->localteam_score < $match_team->scores->visitorteam_score AND $randed_three > 1.5}
																{$disabled_ifs_3 = 'true'}
															{/if}
															{$disabled_ifs_1 = 'false'}
															{$disabled_ifs_2 = 'false'}
															{$disabled_ifs_3 = 'false'}
															{if ($match_team->scores->visitorteam_score - $match_team->scores->localteam_score) >= 3}
																{if $match_team->time->minute >= 60}
																	{if $randed_three >= 1.30}
																		{$disabled_ifs_3 = 'true'}
																	{/if}
																{elseif $match_team->time->minute >= 35}
																	{if $randed_three >= 1.50}
																		{$disabled_ifs_3 = 'true'}
																	{/if}
																{/if}
															{/if}
															{if ($match_team->scores->localteam_score - $match_team->scores->visitorteam_score) >= 3}
																{if $match_team->time->minute >= 60}
																	{if $randed_one >= 1.30}
																		{$disabled_ifs_1 = 'true'}
																	{/if}
																{elseif $match_team->time->minute >= 35}
																	{if $randed_one >= 1.50}
																		{$disabled_ifs_1 = 'true'}
																	{/if}
																{/if}
															{/if}
															{if ($match_team->scores->localteam_score - $match_team->scores->visitorteam_score) >= 2}{$disabled_ifs_1 = 'true'}{/if}
															{if ($match_team->scores->visitorteam_score - $match_team->scores->localteam_score) >= 2}{$disabled_ifs_3 = 'true'}{/if}
                                                            <span class="eventsuspended {if $disabled1 == "true"}disabled{/if} {if $match_team->deleted == true}hidden{/if} {if $randed_one == "" AND $randed_two == "" AND $randed_three == ""}{else}hidden{/if}">&#1594;&#1740;&#1585; &#1601;&#1593;&#1575;&#1604;</span>
                                                            <ul class='mlodds'>
                                                                <li data-runnerid="{$match_team->id|con:'-': $match_team->odds->data[0]->id:'-1x2-':$last->odds->data[0]->label}" data-pick="{$match_team->localTeam->data->name}" data-points='' class="inplaybtn eventodd {if $randed_one == "" OR $randed_one == 0 OR $randed_one == 0.0 OR $randed_one == 0.00}disabled{/if} {if $disabled_ifs_1 == 'true'}disabled{/if}"><i></i>
                                                                    {if $disabled_ifs_1 == 'false' AND $_COOKIE[str_replace(".","_",$randed_one)|con:"_":$match_team->id:"_":$last->odds->data[0]->label] == ""}
																		<blink>
																		{if isset($_COOKIE[$match_team->id|con:"_last_localTeamOdd"]) AND $randed_one < $_COOKIE[$match_team->id|con:"_last_localTeamOdd"]}
																			<i style="color:pink !important;" class="caret-icons fa fa-caret-down"></i>
																		{elseif isset($_COOKIE[$match_team->id|con:"_last_localTeamOdd"]) AND $randed_one > $_COOKIE[$match_team->id|con:"_last_localTeamOdd"]}
																			<i style="color:lightgreen !important;" class="caret-icons fa fa-caret-up"></i>
																		{/if}
																		</blink>
																	{/if}
																	<span>{if $randed_one == "" OR $randed_one == 0 OR $randed_one == 0.0 OR $randed_one == 0.00}&nbsp;{else}{if $disabled_ifs_1 == 'false'}{$randed_one}{else}&nbsp;{/if}{/if}</span>
                                                                </li>
                                                                <li data-runnerid="{$match_team->id|con:'-': $match_team->odds->data[0]->id:'-1x2-':$last->odds->data[1]->label}" data-pick="&#1605;&#1587;&#1575;&#1608;&#1740;" data-points='' class="inplaybtn eventodd {if $randed_two == "" OR $randed_two == 0 OR $randed_two == 0.0 OR $randed_two == 0.00}disabled{/if} {if $disabled_ifs_2 == 'true'}disabled{/if}"><i></i>
                                                                    {if $disabled_ifs_2 == 'false' AND $_COOKIE[str_replace(".","_",$randed_two)|con:"_":$match_team->id:"_":$last->odds->data[1]->label] == ""}
																		<blink>
																		{if isset($_COOKIE[$match_team->id|con:"_last_drawOdd"]) AND $randed_two < $_COOKIE[$match_team->id|con:"_last_drawOdd"]}
																			<i style="color:pink !important;" class="caret-icons fa fa-caret-down"></i>
																		{elseif isset($_COOKIE[$match_team->id|con:"_last_drawOdd"]) AND $randed_two > $_COOKIE[$match_team->id|con:"_last_drawOdd"]}
																			<i style="color:lightgreen !important;" class="caret-icons fa fa-caret-up"></i>
																		{/if}
																		</blink>
																	{/if}
																	<span>{if $randed_two == "" OR $randed_two == 0 OR $randed_two == 0.0 OR $randed_two == 0.00}&nbsp;{else}{if $disabled_ifs_2 == 'false'}{$randed_two}{else}&nbsp;{/if}{/if}</span>
                                                                </li>
                                                                <li data-runnerid="{$match_team->id|con:'-': $match_team->odds->data[0]->id:'-1x2-':$last->odds->data[2]->label}" data-pick="{$match_team->visitorTeam->data->name}" data-points='' class="inplaybtn eventodd {if $randed_three == "" OR $randed_three == 0 OR $randed_three == 0.0 OR $randed_three == 0.00}disabled{/if} {if $disabled_ifs_3 == 'true'}disabled{/if}">
                                                                    {if $disabled_ifs_3 == 'false' AND $_COOKIE[str_replace(".","_",$randed_three)|con:"_":$match_team->id:"_":$last->odds->data[2]->label] == ""}
																		<blink>
																		{if isset($_COOKIE[$match_team->id|con:"_last_visitorTeamOdd"]) AND $randed_three < $_COOKIE[$match_team->id|con:"_last_visitorTeamOdd"]}
																			<i style="color:pink !important;" class="caret-icons fa fa-caret-down"></i>
																		{elseif isset($_COOKIE[$match_team->id|con:"_last_visitorTeamOdd"]) AND $randed_three > $_COOKIE[$match_team->id|con:"_last_visitorTeamOdd"]}
																			<i style="color:lightgreen !important;" class="caret-icons fa fa-caret-up"></i>
																		{/if}
																		</blink>
																	{/if}
																	<span>{if $randed_three == "" OR $randed_three == 0 OR $randed_three == 0.0 OR $randed_three == 0.00}&nbsp;{else}{if $disabled_ifs_3 == 'false'}{$randed_three}{else}&nbsp;{/if}{/if}</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <a class="has-tip fa fa-plus-circle more" title="&#1588;&#1585;&#1591; &#1607;&#1575;&#1740; &#1576;&#1740;&#1588;&#1578;&#1585;" href="{site_url}bets/InplayOdds/{$match_team->id}"></a>
                                                    </td>
                                                </tr>
											{/if}
                                            {assign var=i value=$i+1}
											{/foreach}
                                        {/foreach}
									{if $i == 0 OR $i == "0"}
                                        <tr>
                                            <td>
                                                &#1583;&#1585; &#1581;&#1575;&#1604; &#1581;&#1575;&#1590;&#1585; &#1607;&#1740;&#1670; &#1605;&#1587;&#1575;&#1576;&#1602;&#1607; &#1740; &#1586;&#1606;&#1583;&#1607; &#1575;&#1740; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;
                                            </td>
                                        </tr>
									{/if}
                                    {else}
                                        <tr>
                                            <td>
                                                &#1583;&#1585; &#1581;&#1575;&#1604; &#1581;&#1575;&#1590;&#1585; &#1607;&#1740;&#1670; &#1605;&#1587;&#1575;&#1576;&#1602;&#1607; &#1740; &#1586;&#1606;&#1583;&#1607; &#1575;&#1740; &#1608;&#1580;&#1608;&#1583; &#1606;&#1583;&#1575;&#1585;&#1583;
                                            </td>
                                        </tr>
                                    {/if}
                                </tbody>
                            </table>
                        </li>
                        <li class="inplay-controller">
                            <div class="margin-left-3px">
                                <div>
                                    <table class="livescore betslip" style="margin-top:3px;">
                                        <tbody><tr><th>&#1662;&#1740;&#1588; &#1576;&#1740;&#1606;&#1740; &#1607;&#1575;&#1740; &#1605;&#1606;</th></tr>
                                            <tr>
                                                <td>
                                                    <div class="nobet">
                                                        &#1607;&#1606;&#1608;&#1586; &#1607;&#1740;&#1670; &#1588;&#1585;&#1591;&#1740; &#1576;&#1587;&#1578;&#1607; &#1606;&#1588;&#1583;&#1607; &#1575;&#1587;&#1578;. &#1576;&#1585;&#1575;&#1740; &#1662;&#1740;&#1588; &#1576;&#1740;&#1606;&#1740; &#1576;&#1585;&#1608;&#1740; &#1590;&#1585;&#1740;&#1576; &#1605;&#1608;&#1585;&#1583; &#1606;&#1592;&#1585; &#1582;&#1608;&#1583; &#1705;&#1604;&#1740;&#1705; &#1705;&#1606;&#1740;&#1583;.
                                                    </div>
                                                    <div class="selectedodds">
                                                        <div class="betlist">
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody></table>
                                    <div class="bettotal hidden">

                                        <table class="livescore multiple"></table>
                                        <ul class="bettotal">
                                            <li>&#1605;&#1580;&#1605;&#1608;&#1593; &#1605;&#1576;&#1575;&#1604;&#1594; <span class="totalstake">0</span></li>
                                            <li>&#1576;&#1585;&#1583; &#1575;&#1581;&#1578;&#1605;&#1575;&#1604;&#1740; (&#1578;&#1608;&#1605;&#1575;&#1606;) <span class="totalwin">0</span></li>
                                        </ul>
                                        <table class="livescore">
                                            <tbody><tr>
                                                    <td><a class="deleteall" href="javascript:void(0)">&#1581;&#1584;&#1601; &#1607;&#1605;&#1607;</a></td>
                                                    <td><button class="totobutton smallbutton placebet disabled">&#1579;&#1576;&#1578; &#1588;&#1585;&#1591;</button></td>
                                                </tr>
                                            </tbody></table>
                                    </div>
                                </div>
                                <div class="alertbox alertbox2 hidden"></div>
                                <a href="https://t.me/melobet90/" target="_blank" class="floatright margin-left-3px">
                                    <img class="margin-left-3px floatright" style="margin-top:5px;width:256px;" src="/assets/default/bet2016/images/1.gif" />
                                </a>
                                <a href="../" class="floatright margin-left-3px">
                                    <img class="margin-left-3px floatright" style="margin-top:5px;width:256px;" src="/assets/default/bet2016/images/2.gif" />
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>