<script type="text/javascript">
	jQuery(document).ready(function(){
		self.resetOddsCount = 0;
		setTimeout(resetOdds, 1);
	});
	function clearAllSetInterval(){
		var intervalID=window.setInterval(function(){},0);
		while(intervalID--){
			window.clearInterval(intervalID);
		}
	}
	function resetOdds(){
		self.resetOddsCount = parseInt(self.resetOddsCount + 1);
		if(self.resetOddsCount <= 99){
			jQuery.ajax({
				type: 'POST',
				url: '{site_url}bets/resetInplayDetails/{$match_id}',
				success: function($result){
					var $json = JSON.parse($result);
					jQuery('.home-team').html($json.visitorTeam_name);
					jQuery('.host').val($json.visitorTeam_name);
					jQuery('.away-team').html($json.localTeam_name);
					jQuery('.guest').val($json.localTeam_name);
					jQuery('.home-score').html($json.visitorTeam_score);
					jQuery('.away-score').html($json.localTeam_score);
					jQuery('.home-cards').html($json.localTeam_cards);
					jQuery('.away-cards').html($json.visitorTeam_cards);
					jQuery('.home-table-rank').html($json.localTeam_position);
					jQuery('.away-table-rank').html($json.visitorTeam_position);
					jQuery('.home-formation').html($json.localTeam_formation);
					jQuery('.away-formation').html($json.visitorTeam_formation);
					jQuery('.home-penalties').html($json.localTeam_penalties);
					jQuery('.away-penalties').html($json.visitorTeam_penalties);
					jQuery('.home-corners').html($json.localTeam_corners);
					jQuery('.away-corners').html($json.visitorTeam_corners);
					jQuery('.weather-icon').html($json.weather_icon);
					jQuery('.weather-temperature').html($json.weather_temperature);
					jQuery('.weather-wind').html($json.weather_wind);
					jQuery('.venue-name').html($json.venue_name);
					jQuery('.venue-city').html($json.venue_city);
					jQuery('.venue-capacity').html($json.venue_capacity);
					jQuery('.title-bg').html($json.leagua);
					if(jQuery('.eninplaytime').val() == 'HT' || jQuery('.eninplaytime').val() == ''){
						if($json.eninplaytime !== '' && $json.eninplaytime != null && $json.eninplaytime != undefined && $json.eninplaytime != 'undefined'){
							jQuery('.eninplaytime').val($json.eninplaytime);
						}else{
							jQuery('.eninplaytime').val('94:00');
						}
					}
					jQuery('.has-tip').frosty();
					clearAllSetInterval();
					setTimeout(resetOdds, 3500);
					setTimeout(function(){
						jQuery('.red-arrow').each(function(){
							jQuery(this).remove();
						});
						jQuery('.green-arrow').each(function(){
							jQuery(this).remove();
						});
					}, 1500);
					setInterval(function(){
						updateTimers();
					}, 1000);
					jQuery.ajax({
						type: 'POST',
						url: '{site_url}bets/resetInplayOdds/{$match_id}',
						success: function($result){
							jQuery('.soccer-game-details-loader').fadeOut(500, function(){
								jQuery('.soccer-game-details').fadeIn(500);
							});
							jQuery('.market-types').html($result).fadeIn(500);
							prepareButtonEvents();
						}
					});
				}
			});
		}else{
			window.location = window.location;
		}
	}
</script>
<div>
	<div class="cell">
		<div class="container">
			<div class="maincontent clearfix">
				<div class="content">
					<ul class="odds inplay">
						<li>
							<div class="col-lg-3">
								<div class="stream-bar" style="margin-top: 10px !important;">
									<div class="title" align="center">
										<div data="1" style="width: {if empty($param_address)}100%{else}50%{/if} !important;" class="stream-tab stream-tab-1 left single-tab text-center">گرافیک زنده <div class="symbol" style="transform: translate(50%,-4px);"><span class="fa fa-caret-up"></span></div></div>
										{if !empty($param_address)}
										<div data="2" style="width: 50% !important;" class="stream-tab stream-tab-2 left double-tab tab-border">پخش زنده <div class="symbol" style="display: none;transform: translate(50%,-4px);"><span class="fa fa-caret-up"></span></div></div>
										{/if}
										<div class="clear"></div>					
									</div>
									<div id="stream-type-1" class="stream-container"><iframe src="http://href.li/?https://cs.betradar.com/ls/widgets/?/hkjc/en/page/widgets_lmts#matchId={$game_id}" width="100%" height="300" scrolling="no" seamless="seamless" style="border: 0px; overflow:hidden; display: block;"></iframe></div>
									{if !empty($param_address)}
									<div id="stream-type-2" class="stream-container" style="display: none;"></div>
									<script>
										init_tv_player = function() {
											if(jQuery('#stream-type-2').html() != ''){
												return false;
											}else{
												jQuery('#stream-type-2').html('<object type="application/x-shockwave-flash" data="{site_url}assets/default/plugins/player.swf" width="100%" height="170" style="display: block;"><param name="movie" value="{site_url}assets/default/plugins/player.swf" /><param name="bgcolor" value="#000000" /><param name="FlashVars" value="src=rtmp://{$param_address}" /><param name="allowscriptaccess" value="sameDomain" /><param name="allowFullScreen" value="true" /></object>');
											}
										};
										jQuery(document).ready(function() {
											jQuery('.stream-tab').click(function() {
												jQuery('.stream-bar .stream-container').hide();
												var $tab_id = jQuery(this).attr('data');
												if($tab_id == '2' || $tab_id == 2){
													init_tv_player();
												}else{
													jQuery('#stream-type-2').html('');
												}
												jQuery('#stream-type-' + $tab_id).show();
												jQuery('.stream-bar .symbol').hide();
												jQuery('.stream-bar .stream-tab-' + $tab_id + ' .symbol').show();
											});
										});
									</script>
									{/if}
								</div>
								<div style="margin-top: 10px !important;" class="sidebar-desktop-casino-games">
									<a href="{site_url}casino/crash"><img style="margin-bottom: 10px !important; width: 100%; display: inline;" src="{site_url}casino/templates/images/logoes/crash.gif"></a>
									<a href="{site_url}casino/baccarat"><img style="margin-bottom: 10px !important; width: 100%; display: inline;" src="{site_url}casino/templates/images/logoes/baccarat.gif"></a>
									<a href="{site_url}casino/blackjack"><img style="margin-bottom: 10px !important; width: 100%; display: inline;" src="{site_url}casino/templates/images/logoes/blackjack.gif"></a>
									<a href="{site_url}casino/royal_roulette"><img style="margin-bottom: 10px !important; width: 100%; display: inline;" src="{site_url}casino/templates/images/logoes/royal_roulette.gif"></a>
									<a href="{site_url}casino/seven_clubs"><img style="margin-bottom: 10px !important; width: 100%; display: inline;" src="{site_url}casino/templates/images/logoes/seven_clubs.gif"></a>
									<a href="{site_url}casino/two_verdicts"><img style="margin-bottom: 10px !important; width: 100%; display: inline;" src="{site_url}casino/templates/images/logoes/two_verdicts.gif"></a>
								</div>
							</div>
							<div class="col-lg-6">
								<input type="hidden" class="host" value="{$matches->localTeam->data->name|fa}">
								<input type="hidden" class="guest" value="{$matches->visitorTeam->data->name|fa}">
								<div class="event-container" style="margin-top: 10px !important;">
									<div class="center border info football">
										<div class="title title-bg">Loading...</div>
										<div class="team team-bg mt15 ts left left-align">
											<div class="mt5 medium home-team text-center">Loading...</div>
											<span class="away-cards"></span>
										</div>
										<div class="left score">
											<div class="score-box score-bg ts left mt15">
												<span class="home-score"></span>
												<div class="line-1"></div>
												<div class="line-2"></div>
											</div>
											<div class="score-box score-middle score-bg ts left mt15">
												:
												<div class="line-1"></div>
												<div class="line-2"></div>
											</div>					
											<div class="score-box score-bg ts left mt15">
												<span class="away-score"></span>
												<div class="line-1"></div>
												<div class="line-2"></div>
											</div>
											<div class="left time">
												<span class="event-minute"></span>
												<span class="period" style="font-size: 18px !important;"><small>in Progress</small></span>
												<input class="eninplaytime" type="hidden" value="">
											</div>
											<div class="clear"></div>
										</div>
										<div class="team team-bg mt15 ts left right-align">
											<div class="mt5 medium away-team text-center">Loading...</div>
											<span class="home-cards"></span>
										</div>
										<div class="clear"></div>
									</div>
									<div class="clear"></div>
									<div class="stream-bar" style="margin: 12px auto 10px auto !important;">
										<div class="title" align="center">
											<div style="width: 100% !important; cursor: auto !important;" class="stream-tab left single-tab text-center">جزئیات بازی</div>
											<div class="clear"></div>					
										</div>
										<div class="stream-container" style="padding: 10px !important;">
											<div class="soccer-game-details">
												<table class="table no-hover" style="margin-bottom: 10px !important;">
													<thead>
														<tr style="background-color: #333 !important;">
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;"></td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;">نام تیم</td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;"></td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;" class="hidden-xs"><img class="soccer-inplayodds-icons has-tip" title="جایگاه تیم در جدول رده بندی" src="{assets_url}/icons/soccer/rank.svg" /></td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;" class="hidden-xs"><img class="soccer-inplayodds-icons has-tip" title="ترکیب تیم" src="{assets_url}/icons/soccer/formation.svg" /></td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;"><img class="soccer-inplayodds-icons has-tip" title="پنالتی های تیم" src="{assets_url}/icons/soccer/penalty.svg" /></td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;"><img class="soccer-inplayodds-icons has-tip" title="تعداد کرنر (Corners)" src="{assets_url}/icons/soccer/corner.svg" /></td>
														</tr>
													</thead>
													<tbody>
														<tr style="background-color: #333 !important;">
															<td style="padding: 10px !important; border-top: 2px solid white !important; cursor: auto !important;" colspan="3"><div class="away-team"></div></td>
															<td style="padding: 10px !important; border-top: 2px solid white !important; cursor: auto !important;" class="hidden-xs home-table-rank"></td>
															<td style="padding: 10px !important; border-top: 2px solid white !important; cursor: auto !important;" class="hidden-xs home-formation"></td>
															<td style="padding: 10px !important; border-top: 2px solid white !important; cursor: auto !important;" class="home-penalties"></td>
															<td style="padding: 10px !important; border-top: 2px solid white !important; cursor: auto !important;" class="home-corners"></td>
														</tr>
														<tr style="background-color: #333 !important;">
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;" colspan="3"><div class="home-team"></div></td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;" class="hidden-xs away-table-rank"></td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;" class="hidden-xs away-formation"></td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;" class="away-penalties"></td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;" class="away-corners"></td>
														</tr>
													</tbody>
												</table>
												<h4 class="hidden-lg hidden-md hidden-sm" style="text-align: center !important; color: white !important;margin: 20px;">مشخصات آب و هوا</h4>
												<table class="table no-hover" style="margin-bottom: 10px !important;">
													<tbody>
														<tr style="background-color: #333 !important;">
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;" class="hidden-xs" rowspan="2">وضعیت آب و هوا</td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;">نوع آب و هوا</td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;">دمای هوا</td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;">سرعت باد</td>
														</tr>
														<tr style="background-color: #333 !important;">
															<td style="padding: 10px !important; border-top: 2px solid white !important; cursor: auto !important;" class="weather-icon"></td>
															<td style="padding: 10px !important; border-top: 2px solid white !important; cursor: auto !important;" class="weather-temperature"></td>
															<td style="padding: 10px !important; border-top: 2px solid white !important; cursor: auto !important;" class="weather-wind"></td>
														</tr>
													</tbody>
												</table>
												<h4 class="hidden-lg hidden-md hidden-sm" style="text-align: center !important; color: white !important;margin: 20px;">مشخصات استادیوم</h4>
												<table class="table no-hover" style="margin-bottom: 0 !important;">
													<tbody>
														<tr style="background-color: #333 !important;">
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;" class="hidden-xs" rowspan="2">مشخصات استادیوم</td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;">نام</td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;">شهر</td>
															<td style="padding: 10px !important; border-top: none !important; cursor: auto !important;">ظرفیت</td>
														</tr>
														<tr style="background-color: #333 !important;">
															<td style="padding: 10px !important; border-top: 2px solid white !important; cursor: auto !important;" class="venue-name"></td>
															<td style="padding: 10px !important; border-top: 2px solid white !important; cursor: auto !important;" class="venue-city"></td>
															<td style="padding: 10px !important; border-top: 2px solid white !important; cursor: auto !important;" class="venue-capacity"></td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="soccer-game-details-loader"><i class="fa text-white m10 fa-5x fa-spinner fa-pulse"></i></div>
										</div>
									</div>
									<div class="clear"></div>
									<div class="market-types" style="display: none; margin-top: 10px;"></div>
								</div>
							</div>
							<div class="col-lg-3">
								<div style="margin-top: 10px !important;">
									<table class="livescore betslip">
										<tbody>
											<tr><th style="color: #ffd33b  !important;">پیش بینی های من</th></tr>
											<tr>
												<td>
													<div class="nobet">برای پیش بینی، ضریب بازی مورد نظر خود را انتخاب کنید</div>
													<div class="selectedodds"><div class="betlist"></div><div style="margin-top: 20px !important; display: none;" class="alert alert-danger" id="error_for_mix_form">امکان ثبت شرط میکس بیشتر از 8 تایی وجود ندارد</div></div>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="bettotal" style="display: none; width: 100%;">
										<table class="livescore multiple"></table>
										<ul class="bettotal">
											<li>مبلغ شرط: <span class="totalstake">0</span> تومان</li>
											<li>برد احتمالی: <span class="totalwin">0</span> تومان</li>
										</ul>
										<table class="livescore" style="width:100% !important;">
											<tbody>
												<tr>
													<td>
														<button style="height: 40px !important;" class="deleteall form-button red-button" href="javascript:void(0)">حذف همه</button>
														<button style="height: 40px !important;" class="placebet form-button disabled">ثبت شرط</button>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="alertbox alertbox2 hidden"></div>
								<div style="margin-top: 10px !important;" class="sidebar-mobile-casino-games">
									<a href="{site_url}casino/crash"><img style="margin-bottom: 10px !important; width: 100%; display: inline;" src="{site_url}casino/templates/images/logoes/crash.gif"></a>
									<a href="{site_url}casino/baccarat"><img style="margin-bottom: 10px !important; width: 100%; display: inline;" src="{site_url}casino/templates/images/logoes/baccarat.gif"></a>
									<a href="{site_url}casino/blackjack"><img style="margin-bottom: 10px !important; width: 100%; display: inline;" src="{site_url}casino/templates/images/logoes/blackjack.gif"></a>
									<a href="{site_url}casino/royal_roulette"><img style="margin-bottom: 10px !important; width: 100%; display: inline;" src="{site_url}casino/templates/images/logoes/royal_roulette.gif"></a>
									<a href="{site_url}casino/seven_clubs"><img style="margin-bottom: 10px !important; width: 100%; display: inline;" src="{site_url}casino/templates/images/logoes/seven_clubs.gif"></a>
									<a href="{site_url}casino/two_verdicts"><img style="margin-bottom: 10px !important; width: 100%; display: inline;" src="{site_url}casino/templates/images/logoes/two_verdicts.gif"></a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>