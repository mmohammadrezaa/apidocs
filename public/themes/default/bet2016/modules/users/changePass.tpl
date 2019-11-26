<div>
    <div class="cell">
        <div class="container">
            <div class="maincontent">
                <div class="menu">
                    {include file="partials/dashboard_menu.tpl"}
                </div>
                <div class="content">
                    <header>
                        <h1>تغییر کلمه عبور</h1>
                    </header>
                    <section class="signupbox">
                        <form action="{site_url}users/changePass" method="post">
                            <div class="signupform halfwidth">
                                <div>
                                    <input class="input id" data-val="true" data-val-required="وارد کردن کلمه عبور فعلی الزامی است." id="OldPassword" name="OldPassword" placeholder="کلمه عبور فعلی" type="password">
                                    <span class="field-validation-valid error_message" data-valmsg-for="OldPassword" data-valmsg-replace="true"></span>
                                </div>
                                <div>
                                    <input class="input password" data-val="true" data-val-length="کلمه عبور جدید باید حداقل 6 حرف طول داشته باشد." data-val-length-max="100" data-val-length-min="6" data-val-required="وارد کردن کلمه عبور جدید الزامی است." id="NewPassword" name="NewPassword" placeholder="کلمه عبور جدید" type="password">
                                    <span class="field-validation-valid error_message" data-valmsg-for="NewPassword" data-valmsg-replace="true"></span>
                                </div>
                                <div class="remeberme">
                                    <input class="input password" data-val="true" data-val-equalto="کلمه عبور جدید و تکرار کلمه عبور جدید با هم یکسان نیستند." data-val-equalto-other="*.NewPassword" id="ConfirmPassword" name="ConfirmPassword" placeholder="تکرار کلمه عبور جدید" type="password">
                                    <span class="field-validation-valid error_message" data-valmsg-for="ConfirmPassword" data-valmsg-replace="true"></span>
                                </div>
                                <div>
                                    <input name="submitbtn" class="btn btn-lg btn-primary floatright" type="submit" value="تغییر کلمه عبور">
                                </div>
                            </div>
                        </form>                        </section>
                </div>
            </div>
        </div>
    </div>
</div>