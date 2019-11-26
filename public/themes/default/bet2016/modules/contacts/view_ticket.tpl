<div>
    <div class="cell">
        <div class="container">
            <div class="maincontent clearfix">
                <div class="content content-full">
                    <header class="clearfix">
                        <h1>پشتیبانی</h1>
                        <div class="row">
                            <ul>
                                <li>
                                    <b>شناسه تیکت :</b> TK-{$Ticket->id}
                                </li>
                                <li>
                                    <b>عنوان تیکت :</b> {$Ticket->subject}
                                </li>
                                <li>
                                    <b>زمان ثبت :</b> {jdate format='j F Y - H:i' date=$Ticket->created_at}
                                </li>
                            </ul>
                        </div>
                    </header>
                    <section class="formbox row_100 clearfix">
                        <table class="ticketdetails row">
                            <tbody>
                                {foreach $Ticket->replies as $val}
                                    <tr>
                                        <td>
                                            {if $val.user_id == $logged_in_user_id}
                                                <img width="100" src="{assets_url}/images/user.png">
                                                <div style="margin-top:-15px;">
                                                    {jdate format='j F Y - H:i' date=$val->created_at}
                                                </div>
                                            {/if}
                                        </td>
                                        <td>
                                            <div class="{if $val.user_id == $logged_in_user_id }bubble{else}bubblereply{/if}">
                                                {$val->content}
                                            </div>

                                        </td>
                                        <td>

                                            {if $val.user_id != $logged_in_user_id}
                                                <img width="100" src="{assets_url}/images/support.png">
                                                <div style="margin-top:-15px;">
                                                    {jdate format='j F Y - H:i' date=$val->created_at}
                                                </div>
                                            {/if}
                                        </td>
                                    </tr>
                                {/foreach}
                            </tbody>
                        </table>

                        <form action="{$action}" method="post">
                            <div class="support_form createform">
                                <div class="signupform halfwidth">
                                    <div class="wrapsignupinput">
                                        <textarea class="input textarea" cols="20" data-val="true" data-val-required="وارد کردن متن تیکت الزامی است." id="Message" name="content" placeholder="متن تیکت" rows="2"></textarea>
                                    </div>
                                    <div>
                                        <input class="btn btn-lg btn-primary floatright" type="submit" value="ارسال">
                                    </div>
                                </div>
                            </div>
                        </form>                    </section>
                    <div class="row">
                        <p>
                            کاربران گرامی توجه داشته باشند، برای هر مورد یک تیکت ایجاد نمایید و تا حل شدن کامل مشکل، تیکت مربوطه را ادامه دهید و جهت تسریع در رفع مشکلات کاربری لطفا از ایجاد تیکت های جدید و متنوع اجتناب فرمایید.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>