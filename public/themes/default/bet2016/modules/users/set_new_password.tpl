
<div class="register" role="main">
    <div class="container">
        <section class="signupbox">
            <h1>بازیابی کلمه عبور</h1>
            {form_open()}
            <div class="signupform clearfix">
                <div class="wrapsignupinput">
                    <input class="input" data-val="true" id="UserName" name="password" placeholder="کلمه عبور جدید" type="text">
                    <span class="field-validation-valid error_message" data-valmsg-for="UserName" data-valmsg-replace="true"></span>
                    <input type="hidden" value="{$user_id}"  name="user_id"/>
                    <input type="hidden" value="{$reminder_code}" name="reminder_code"/>
                </div>
                <div>
                    <input class="btn btn-lg btn-primary floatright" type="submit" id="submit_reset" value="بازیابی">
                </div>
            </div>
            </form>   
        </section>
    </div>
</div>