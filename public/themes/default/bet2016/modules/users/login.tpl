<div class="register">
    <div class="container">
        <section class="signupbox">
            <h1>وارد حساب کاربری خود شوید</h1>
            {form_open()}
            <div class="signupform">
                <div>
                    <input class="input id" data-val="true" data-val-email="ایمیلی که وارد کرده اید، نادرست است." data-val-required="وارد کردن ایمیل الزامی است." id="UserName" name="email" placeholder="ایمیل" type="text" value="" />
                    <span class="field-validation-valid error_message" data-valmsg-for="UserName" data-valmsg-replace="true"></span>
                </div>
                <div>
                    <input class="input password" data-val="true" data-val-required="وارد کردن کلمه عبور الزامی است." id="Password" name="password" placeholder="کلمه عبور" type="password" />
                    <span class="field-validation-valid error_message" data-valmsg-for="Password" data-valmsg-replace="true"></span>
                </div>
                <div class="remeberme">
                    <input type="checkbox" id="RememberMe" name="remember_me" value="1"/> 
                    <label for="RememberMe">مرا به خاطر بسپار</label>
                </div>
                <span class="error_message">

                </span>
                <div>
                    <input class="btn btn-lg btn-primary floatright" type="submit" value="ورود" />
                </div>
                <div class="extra">
                    <a href="{site_url}users/resetPassword">کلمه عبور خود را فراموش کرده اید؟</a>
                </div>
                <div class="extra">
                    اگر قبلا ثبت نام نکرده اید، <a href="{site_url}register">ثبت نام کنید.</a>
                </div>
            </div>
            {form_close()}    
        </section>
    </div>
</div>
