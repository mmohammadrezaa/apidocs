<div class="firstDiv">
    <header class="main_header">
        <div class="top_bar">
            <div class="floatleft">
                {if !$is_logged_in}
                    <ul class="top_bar_list">
                        <li class="header ">
                            <a class="loginLink" href="{site_url}users/login">&#1608;&#1585;&#1608;&#1583;</a>
                        </li>
                        <li class="last">
                            <a class="registerLink" href="{site_url}users/register">&#1579;&#1576;&#1578; &#1606;&#1575;&#1605;</a>
                        </li>
                    </ul>
                {else}
                    <ul class="top_bar_list">
                        <li>
                            {$user->first_name} {$user->last_name}
                            &#1593;&#1586;&#1740;&#1586; &#1582;&#1608;&#1588; &#1570;&#1605;&#1583;&#1740;&#1583;!
                        </li>
                        <li class="">&#1605;&#1608;&#1580;&#1608;&#1583;&#1740; &#1581;&#1587;&#1575;&#1576; :</li>
                        <li class="balance last">

                            <span>{$user->cash|price_format}</span>
                        </li>
                        <li>
                            <a href="{site_url}payment/credit">&#1588;&#1575;&#1585;&#1688; &#1581;&#1587;&#1575;&#1576;</a>
                        </li>
                        <li class="logout">  
                            <a href="{site_url}users/logout">&#1582;&#1585;&#1608;&#1580;</a> 
                        </li>
                    </ul>
                {/if}
            </div>
        </div>
        <div class="container">
            <nav class="mainnav">
                <ul>
                    <li><a class="{if strpos($smarty.server.REQUEST_URI, "index") !== false OR {$smarty.server.REQUEST_URI} == "" OR {$smarty.server.REQUEST_URI} == "/"}home{/if}" href="{site_url}">&#1589;&#1601;&#1581;&#1607; &#1575;&#1589;&#1604;&#1740;</a></li>
                    <li><a class="{if strpos($smarty.server.REQUEST_URI, "casino") == false AND (strpos($smarty.server.REQUEST_URI, "myrecords") !== false OR strpos($smarty.server.REQUEST_URI, "dashboard") !== false OR strpos($smarty.server.REQUEST_URI, "payment") !== false OR strpos($smarty.server.REQUEST_URI, "users") !== false)}home{/if}" href="{site_url}dashboard">&#1581;&#1587;&#1575;&#1576; &#1705;&#1575;&#1585;&#1576;&#1585;&#1740;</a></li>
                    <li><a class="{if strpos($smarty.server.REQUEST_URI, "inplayBet") !== false OR strpos($smarty.server.REQUEST_URI, "InplayOdds") !== false}home{/if}" href="{site_url}bets/inplayBet">پیش بینی زنده</a></li>
                    <li><a class="{if strpos($smarty.server.REQUEST_URI, "upComing") !== false OR strpos($smarty.server.REQUEST_URI, "preEvents") !== false}home{/if}" href="{site_url}bets/upComing">پیش بینی پیش از بازی</a></li>
                    <li><a class="{if strpos($smarty.server.REQUEST_URI, "casino") !== false}home{/if}" href="{site_url}users/casino">کازینو</a></li>
                    <li><a class="{if strpos($smarty.server.REQUEST_URI, "help") !== false OR strpos($smarty.server.REQUEST_URI, "betGuide") !== false OR strpos($smarty.server.REQUEST_URI, "mixForm") !== false OR strpos($smarty.server.REQUEST_URI, "faq") !== false}home{/if}" href="{site_url}help">&#1585;&#1575;&#1607;&#1606;&#1605;&#1575;</a></li>
                    <li>
                        <a class="{if strpos($smarty.server.REQUEST_URI, "contacts") !== false}home{/if}" href="{site_url}contacts/tickets/ticket-list">&#1662;&#1588;&#1578;&#1740;&#1576;&#1575;&#1606;&#1740;</a>
                        {if $support_badge > 0}<span class="support-badge">!</span>{/if}
                    </li>
                </ul>
            </nav>
            <h1 class="floatright" style="background:transparent">
                <a href="{site_url}"></a>
            </h1>
        </div>
    </header>
    <section class="main_body">
        <div class="container">
			{if $smarty.const.get_message != ""}
				{assign var=message_details value=(object)$smarty.const.get_message}
				{if $message_details->type == "fail"}
					{assign var=alert_type value="#cd3333"}
				{elseif $message_details->type == "warning"}
					{assign var=alert_type value="#8b7355"}
				{elseif $message_details->type == "success"}
					{assign var=alert_type value="BlueViolet"}
				{/if}
				<center><div style="text-align:right !important;margin-top:20px !important;width:500px !important;background-color:{$alert_type} !important;color:white !important;padding:20px !important;">{$message_details->message}</div></center>
			{/if}