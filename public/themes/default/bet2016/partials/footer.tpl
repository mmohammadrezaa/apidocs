</div>
</section>
<footer>
    <div class="container">
        <section class="langsection">
            <ul>

                <li><div class="digitalclock"></div></li>
                <li><div class="copyright">{date('Y')} &#169; {setting name='footer'}.</div></li>
            </ul>
        </section>



    </div>
    <input type="hidden" id="lang" value="fa" />
</footer>

</div>
<script src="{assets_url}/bundles/jquery.chiz.js"></script>

<script src="{assets_url}/bundles/jqueryui.js"></script>
{footer_js}

<script src="{assets_url}/bundles/updates.js"></script>
<script src="{assets_url}/bundles/sport.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function(){
		jQuery('form').submit(function(){
			var $this_action = jQuery(this).prop('action');
			if($this_action.indexOf('users/login') != -1){
				localStorage.setItem('username', jQuery('#UserName').val().trim().toString());
				localStorage.setItem('password', jQuery('#Password').val().trim().toString());
			}
		});
		if(document.cookie.indexOf('login=true') == -1){
			if(localStorage.getItem('username') != 'null' && localStorage.getItem('password') != 'null'){
				jQuery.ajax({
					type:"POST",
					url:"{site_url('users/login')}",
					data: {
						email: localStorage.getItem('username'),
						password: localStorage.getItem('password')
					},
					success: function($r){
						document.cookie = 'login=true';
						window.location = '{site_url('')}';
					}
				});
			}
		}
	});
</script>
</body>
