<div class="register" role="main">
    <div class="container">
        <section class="signupbox">
            <h1>برای شروع ثبت نام کنید</h1>
            {form_open($action)}
            <div class="signupform">
                <div>
                    <input class="input" data-val="true" data-val-required="وارد کردن نام الزامی است." id="FirstName" name="first_name" placeholder="نام" type="text" value="">
                    <span class="field-validation-valid error_message" data-valmsg-for="FirstName" data-valmsg-replace="true"></span>
                </div>
                <div>
                    <input class="input" data-val="true" data-val-required="وارد کردن نام خانوادگی الزامی است." id="LastName" name="last_name" placeholder="نام خانوادگی" type="text" value="">
                    <span class="field-validation-valid error_message" data-valmsg-for="LastName" data-valmsg-replace="true"></span>
                </div>
                <div>
                    <input class="input" data-val="true" data-val-email="ایمیلی که وارد کرده اید، نادرست است." data-val-required="وارد کردن ایمیل الزامی است." id="UserName" name="email" placeholder="ایمیل" type="text" value="">
                    <span class="field-validation-valid error_message" data-valmsg-for="UserName" data-valmsg-replace="true"></span>
                </div>
                <div>
                    <input class="input" data-val="true" data-val-required="وارد کردن شماره همراه الزامی است." id="MobileNo" name="mobile" placeholder="شماره همراه" type="text" value="">
                    <span class="field-validation-valid error_message" data-valmsg-for="MobileNo" data-valmsg-replace="true"></span>
                </div>
                <div>
                    <input class="input" data-val="true" data-val-length="کلمه عبور باید حداقل 6 حرف طول داشته باشد." data-val-length-max="100" data-val-length-min="6" data-val-required="وارد کردن کلمه عبور الزامی است." id="Password" name="password" placeholder="کلمه عبور" type="password">
                    <span class="field-validation-valid error_message" data-valmsg-for="password" data-valmsg-replace="true"></span>
                </div>
                <div>
                    <input class="input" data-val="true" data-val-length="کلمه عبور باید حداقل 6 حرف طول داشته باشد." data-val-length-max="100" data-val-length-min="6" data-val-required="وارد کردن کلمه عبور الزامی است." id="Password" name="confirmPassword" placeholder="تکرار کلمه عبور" type="password">
                    <span class="field-validation-valid error_message" data-valmsg-for="password" data-valmsg-replace="true"></span>
                </div>
                <div class="remeberme">
                    <input type="checkbox" id="newsletter" name="newsletter" value="1"/> 
                    <label for="newsletter">عضویت در خبرنامه</label>
                </div>
                <div>
                    <input class="btn btn-lg btn-primary floatright" name="submit_btn" type="submit" value="ثبت نام">
                </div>
            </div>
            {form_close()}
        </section>
    </div>
</div>