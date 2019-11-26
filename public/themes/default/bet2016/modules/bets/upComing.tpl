<a style="display: none !important;" rel="follow" href="http://ibet90.ml">پیش بینی فوتبال</a>
<a style="display: none !important;" rel="follow" href="http://ibet90.tk">پیش بینی فوتبال</a>
<a style="display: none !important;" rel="follow" href="http://ibet90.gq">پیش بینی فوتبال</a>
<div>
    <div class="cell">
        <div class="container">

            <div class="content">
                <header class="tabheader">
                    <ul class="tab">
                        <li class="inplay ">
                            <a href="{site_url}bets/inplayBet">پیش بینی زنده</a>
                        </li>
                        <li class="upcoming active">
                            <a href="{site_url}bets/upComing">پیش بینی پیش از بازی</a>
                        </li>
                        <li class="history ">
                            <a href="{site_url}bets/myrecords">سابقه پیش بینی ها</a>
                        </li>
                    </ul>
                </header>
            </div>
            <div class="maincontent clearfix">
                <div class="content">
                    <ul class="odds inplay">
                        <li>
                            <table class="table inplaytable nohover" style="margin-top:3px;">
                                <tbody>
                                    <tr class="branchheader inplayheader">
                                        <th>
                                            <span class="match">

                                                <b>{jdate format='j F (l) ' date="+$day day" second_date=gmdate('Y-m-d')}</b> (<span class="totalevents">{$count|persian_number}</span>)
                                            </span>
                                        </th>
                                        <th colspan="4">
                                            <select class="upcoming-select" id="upcoming-select-id">
                                                <option {if $day eq 0}selected=""{/if} value="{site_url}bets/upComing">
                                                    {jdate format='j F (l) ' date='+0 day' second_date=gmdate('Y-m-d')}
                                                </option>
                                                <option {if $day eq 1}selected=""{/if}  value="{site_url}bets/upComing/1">
                                                    {jdate format='j F (l) ' date='+1 day' second_date=gmdate('Y-m-d')}
                                                </option>
                                                <option {if $day eq 2}selected=""{/if}  value="{site_url}bets/upComing/2">
                                                    {jdate format='j F (l) ' date='+2 day' second_date=gmdate('Y-m-d')}
                                                </option>
                                                <option {if $day eq 3}selected=""{/if}  value="{site_url}bets/upComing/3">
                                                    {jdate format='j F (l) ' date='+3 day' second_date=gmdate('Y-m-d')}
                                                </option>
                                                <option {if $day eq 4}selected=""{/if}  value="{site_url}bets/upComing/4">
                                                    {jdate format='j F (l) ' date='+4 day' second_date=gmdate('Y-m-d')}
                                                </option>
                                            </select>
                                        </th>
                                    </tr>

                                    {foreach $CompetitionMatches as $key => $val}
                                        {$gotBreak = 0}
                                        {foreach $val as $match} 
										{$date1 = DateTime::createFromFormat('Y-m-d H:i:s', {gmt time={$match->starting_date|con:' ':$match->starting_time} format='Y-m-d H:i:s'})}
											{$date2 = DateTime::createFromFormat('Y-m-d H:i:s', date('Y-m-d H:i:s'))}
											
                                            {if ($day eq 0 )  AND $match->status == 'NS' AND {searchArray key='type' val='1x2' array=$match->odds->data[0]->types->data} != null} 
											   {assign var=gotBreak value=1}
                                                {break}
                                            {/if}
											  {if ($day != 0 ) AND !empty($match->odds->data) AND $match->status == 'NS' AND {searchArray key='type' val='1x2' array=$match->odds->data[0]->types->data} != null}
                                                {assign var=gotBreak value=1}
                                                {break}
                                            {/if}
                                        {/foreach}


                                        {if $gotBreak == 0}
                                            {continue}
                                        {/if}

                                        <tr class="inplayheader" data-leagueid="40818" data-rankid="620">
                                            <th><span class="match"><b>{$key|fa}</b></span></th>
                                            <th style="width:44px"><b>میزبان</b></th>
                                            <th style="width:44px"><b>مساوی</b></th>
                                            <th style="width:44px"><b>میهمان</b></th>
                                            <th style="width:25px"></th>
                                        </tr>
                                        {foreach $val as $match}
											{$date1 = DateTime::createFromFormat('Y-m-d H:i:s', {gmt time={$match->starting_date|con:' ':$match->starting_time} format='Y-m-d H:i:s'})}
											{$date2 = DateTime::createFromFormat('Y-m-d H:i:s', date('Y-m-d H:i:s'))}

                                            {if ($day eq 0 )  AND !empty($match->odds->data) AND $match->status == 'NS' AND {searchArray key='type' val='1x2' array=$match->odds->data[0]->types->data} != null }
												

										


                                                <tr data-eventid="{$match->id}" class="odddetails">
                                                    <td>
                                                        <span class="fa fa-clock-o timer"></span>
                                                        <b class="host ellipsis">{$match->homeTeam->name|fa}</b>
                                                        <span class="scoredash">-</span>
                                                        <b class="guest ellipsis">{$match->awayTeam->name|fa}</b>
                                                        <span class="inplaytime2">
                                                            {gmtfa time=$match->starting_time format='H:i'|persian_number}</span>
                                                    </td>
                                                    <td style="padding:0" colspan="3">
                                                        <div class="eventodds">
                                                            <span class="eventsuspended hidden">غیر فعال</span>
                                                            <ul class="mlodds">
                                                                {$myArray = $match->odds->data[0]->types->data[{searchArray key='type' val='1x2' array=$match->odds->data[0]->types->data}]}
                                                                <li  data-runnerid="{$match->id|con:'-': $match->odds->data[0]->bookmaker_id:'-1x2-': {$myArray->odds->data[{searchArray key='label' val='1' array=$myArray->odds->data}]->label}}" data-pick="{$match->homeTeam->name}"  data-pick="{$match->homeTeam->name}" data-points="" class="inplaybtn  eventodd">
                                                                    <i>
                                                                    </i>
                                                                    <span>
                                                                        {if isset($homeOdd)}
                                                                            {$homeOdd}
                                                                        {else}
                                                                            {$myArray->odds->data[{searchArray key='label' val='1' array=$myArray->odds->data}]->value}
                                                                        {/if}
                                                                    </span>
                                                                </li>
                                                                <li data-runnerid="{$match->id|con:'-': $match->odds->data[0]->bookmaker_id:'-1x2-':{$myArray->odds->data[{searchArray key='label' val='X' array=$myArray->odds->data}]->label}}"  data-pick="مساوی" data-points="" class="inplaybtn  eventodd">
                                                                    <i></i><span>

                                                                        {if isset($drawOdd)}
                                                                            {$drawOdd}
                                                                        {else}
                                                                            {$myArray->odds->data[{searchArray key='label' val='X' array=$myArray->odds->data}]->value}    
                                                                        {/if}
                                                                    </span>
                                                                </li>
                                                                <li data-runnerid="{$match->id|con:'-': $match->odds->data[0]->bookmaker_id:'-1x2-':{$myArray->odds->data[{searchArray key='label' val='2' array=$myArray->odds->data}]->label}}" data-pick="{$match->awayTeam->name}" data-points="" class="inplaybtn  eventodd">
                                                                    <i></i><span>
                                                                        {if isset($awayOdd)}
                                                                            {$awayOdd}
                                                                        {else}
                                                                            {$myArray->odds->data[{searchArray key='label' val='2' array=$myArray->odds->data}]->value}    
                                                                        {/if}
                                                                    </span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <a class="has-tip fa fa-plus-circle more" href="{site_url}bets/preEvents/{$match->id}" title="شرط های بیشتر"></a>
                                                    </td>
                                                </tr>
                                            {/if}
											{if ($day !=0 ) AND !empty($match->odds->data) AND $match->status == 'NS' AND {searchArray key='type' val='1x2' array=$match->odds->data[0]->types->data} != null }

                                                <tr data-eventid="{$match->id}" class="odddetails">
                                                    <td>
                                                        <span class="fa fa-clock-o timer"></span>
                                                        <b class="host ellipsis">{$match->homeTeam->name|fa}</b>
                                                        <span class="scoredash">-</span>
                                                        <b class="guest ellipsis">{$match->awayTeam->name|fa}</b>
                                                        <span class="inplaytime2">
                                                            {gmtfa time=$match->starting_time format='H:i'|persian_number}</span>
                                                    </td>
                                                    <td style="padding:0" colspan="3">
                                                        <div class="eventodds">
                                                            <span class="eventsuspended hidden">غیر فعال</span>
                                                            <ul class="mlodds">
                                                                {$myArray = $match->odds->data[0]->types->data[{searchArray key='type' val='1x2' array=$match->odds->data[0]->types->data}]}
                                                                <li  data-runnerid="{$match->id|con:'-': $match->odds->data[0]->bookmaker_id:'-1x2-': {$myArray->odds->data[{searchArray key='label' val='1' array=$myArray->odds->data}]->label}}" data-pick="{$match->homeTeam->name}"  data-pick="{$match->homeTeam->name}" data-points="" class="inplaybtn  eventodd">
                                                                    <i>
                                                                    </i>
                                                                    <span>
                                                                        {if isset($homeOdd)}
                                                                            {$homeOdd}
                                                                        {else}
                                                                            {$myArray->odds->data[{searchArray key='label' val='1' array=$myArray->odds->data}]->value}
                                                                        {/if}
                                                                    </span>
                                                                </li>
                                                                <li data-runnerid="{$match->id|con:'-': $match->odds->data[0]->bookmaker_id:'-1x2-':{$myArray->odds->data[{searchArray key='label' val='X' array=$myArray->odds->data}]->label}}"  data-pick="مساوی" data-points="" class="inplaybtn  eventodd">
                                                                    <i></i><span>

                                                                        {if isset($drawOdd)}
                                                                            {$drawOdd}
                                                                        {else}
                                                                            {$myArray->odds->data[{searchArray key='label' val='X' array=$myArray->odds->data}]->value}    
                                                                        {/if}
                                                                    </span>
                                                                </li>
                                                                <li data-runnerid="{$match->id|con:'-': $match->odds->data[0]->bookmaker_id:'-1x2-':{$myArray->odds->data[{searchArray key='label' val='2' array=$myArray->odds->data}]->label}}" data-pick="{$match->awayTeam->name}" data-points="" class="inplaybtn  eventodd">
                                                                    <i></i><span>
                                                                        {if isset($awayOdd)}
                                                                            {$awayOdd}
                                                                        {else}
                                                                            {$myArray->odds->data[{searchArray key='label' val='2' array=$myArray->odds->data}]->value}    
                                                                        {/if}
                                                                    </span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <a class="has-tip fa fa-plus-circle more" href="{site_url}bets/preEvents/{$match->id}" title="شرط های بیشتر"></a>
                                                    </td>
                                                </tr>
                                            {/if}
                                        {/foreach}
                                    {/foreach}
										
                                </tbody>
                            </table>
                            <i class="fa-loader fa fa-spinner fa-pulse" style="display: none;"></i>
                        </li>
                        <li class="inplay-controller">
                            <div class="margin-left-3px">
                                <div>
                                    <table class="livescore betslip" style="margin-top:3px;">
                                        <tbody><tr><th>پیش بینی های من</th></tr>
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
                                        </tbody></table>
                                    <div class="bettotal hidden">

                                        <table class="livescore multiple"></table>
                                        <ul class="bettotal">
                                            <li>مجموع مبالغ <span class="totalstake">0</span></li>
                                            <li>برد احتمالی (تومان) <span class="totalwin">0</span></li>
                                        </ul>
                                        <table class="livescore">
                                            <tbody><tr>
                                                    <td><a class="deleteall" href="javascript:void(0)">حذف همه</a></td>
                                                    <td><button class="totobutton smallbutton placebet disabled">ثبت شرط</button></td>
                                                </tr>
                                            </tbody></table>
                                    </div>
                                </div>
                                <div class="alertbox alertbox2 hidden"></div>
                                <a href="https://t.me/vipcasino90" target="_blank" class="floatright margin-left-3px">
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
