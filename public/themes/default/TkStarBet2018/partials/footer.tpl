	<div class="help-question-div">
		<img src="{assets_url}/images/help_documention/times.png" class="close-help-div" style="height: 40px !important; width: 40px !important;" />
		<div class="tip-help">سوال یا مشکلی دارید ؟ لطفا قبل از استفاده از امکانات سایت بخش راهنما را کامل مطالعه کنید</div><a href="{site_url}users/help">
		<img src="{assets_url}/images/help_documention/question_help.png" class="main-img-help" /></a>
	</div>
	<div class="footer-links desktop">
		<div class="inline container">
			<div style="text-align: right !important; margin-right: 20px !important;">
				<a href="https://www.fb.com/#" target="_blank"><img src="{assets_url}/images/icons/facebook.svg" style="margin: auto 3px !important; width: 32px !important; height: 32px !important;"></a>
				<a href="https://www.t.me/vipcasino90" target="_blank"><img src="{assets_url}/images/icons/telegram.svg" style="margin: auto 3px !important; width: 32px !important; height: 32px !important;"></a>
				<a href="https://www.instagram.com/vipcasino90" target="_blank"><img src="{assets_url}/images/icons/instagram.svg" style="margin: auto 3px !important; width: 32px !important; height: 32px !important;"></a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="mobile mobile-bar-holder"></div>
	<div class="mobile mobile-footer-bar">
		<a href="{site_url}" class="sport {if strpos($smarty.server.REQUEST_URI, "index") !== false OR {$smarty.server.REQUEST_URI} == "" OR {$smarty.server.REQUEST_URI} == "/"}active{/if}">صفحه اصلی</a>
		<a href="{site_url}dashboard" class="account {if strpos($smarty.server.REQUEST_URI, "casino") == false AND (strpos($smarty.server.REQUEST_URI, "myrecords") !== false OR strpos($smarty.server.REQUEST_URI, "dashboard") !== false OR strpos($smarty.server.REQUEST_URI, "payment") !== false OR strpos($smarty.server.REQUEST_URI, "users") !== false)}active{/if}">حساب کاربری</a>
		<a href="{site_url}bets/inplayBet" class="live {if strpos($smarty.server.REQUEST_URI, "inplayBet") !== false OR strpos($smarty.server.REQUEST_URI, "InplayOdds") !== false}active{/if}">پیش بینی زنده</a>
		<a href="{site_url}bets/upComing" class="scores {if strpos($smarty.server.REQUEST_URI, "upComing") !== false OR strpos($smarty.server.REQUEST_URI, "preEvents") !== false}active{/if}">پیش بینی پیش از بازی</a>
		<a href="{site_url}users/casino" class="casino {if strpos($smarty.server.REQUEST_URI, "casino") !== false}active{/if}">کازینو</a>
	</div>
	<div class="splash-view">
		<div class="splash-container">
			<div class="splash-header">
				<div class="left splash-title">
				</div>
				<div class="right"><span class="fa fa-times pointer splash-close-button"></span></div>
				<div class="clear"></div>
			</div>
			<div class="splash-content">
			</div>
		</div>
	</div>
	<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery('.help-question-div').hover(function(){
				jQuery('.help-question-div .tip-help').css('display', 'inline-block');
				jQuery('.help-question-div .close-help-div').css('display', 'block');
			}, function(){
				jQuery('.help-question-div .tip-help').css('display', 'none');
				jQuery('.help-question-div .close-help-div').css('display', 'none');
			});
			jQuery('.close-help-div').click(function(){
				jQuery(this).unbind('click');
				jQuery(this).parent().fadeOut(500, function(){
					jQuery(this).remove();
				});
			});
			jQuery('.header-sub.desktop .litem').hover(function(){
				jQuery(this).find('.menu-mini-icons').fadeIn(500);
			}, function(){
				jQuery(this).find('.menu-mini-icons').hide();
			});
		});
	</script>
</body>
