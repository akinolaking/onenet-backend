<div class="contact-us-page">
    <div class="register-domain-banner register-domain-banner2 contact-us-banner p-vertical"> 
        <div class="container">
        <h1>{$LANG.contactuspagemainhead}</h1>
        <p>{$LANG.contactuspagemainsubhead}</p>
        </div>
    </div>
    <div class="inner-page-contact p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 wgs-alert-contact">
                    {if $sent}
                        {include file="$template/includes/alert.tpl" type="success" msg="{lang key='contactsent'}" textcenter=true}
                    {/if}

                    {if $errormessage}
                        {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
                    {/if}
                </div>
                <div class="col-md-6">
                    <div class="left-contact-sec"> 
                    <h4>{$companyNameContact}</h4> 
                    <address>{$LANG.contactusaddress}</address>
                    <div class="tab-left-contact">
                            <div class="tab">
                                <button class="productlinks tab-active" onclick="productdetailsContactPage(event, 'size')">{$LANG.contactussalemain}</button>
                                <button class="productlinks" onclick="productdetailsContactPage(event, 'measure')">{$LANG.contactuscustomerservicemain}</button>
                                <button class="productlinks" onclick="productdetailsContactPage(event, 'technical')">{$LANG.contactustechnicalmain}</button>     
                            </div>
                            <div id="size" class="tabcontent" >
                                <div class="size-product-des">
                                <h3>{$LANG.contactussaleenquery}</h3>
                                <ul class="list-inline">
                                <li class="list-inline-item"><a href="submitticket.php" class="sales-btn button-style hx-primary-btn">{$LANG.contactusemailssaleticket}</a></li>
                                <li class="list-inline-item"><a href="#" class="live-chat-con button-style hx-secondary">{$LANG.contactuslivechat}</a></li>
                                </ul>
                                <p>{$LANG.contactushotlinesale1} +{$hostx_theme_settings.country_calling_code_phone} {$hostx_theme_settings.phone}</p>
                                <p>{$LANG.contactusbusinesshoursale}</p>
                                <p>{$LANG.contactusemailssale}</p>
                                </div>
                            </div>
                            <div id="measure" class="tabcontent" style="display:none;">
                                <div class="size-product-des">
                                    <h3>{$LANG.contactuscustomerenquery}</h3>
                                    <ul class="list-inline">
                                    <li class="list-inline-item"><a href="submitticket.php" class="sales-btn button-style hx-primary-btn">{$LANG.contactusemailscustomerticket}</a></li>
                                    <li class="list-inline-item"><a href="#" class="live-chat-con button-style hx-secondary">{$LANG.contactuslivechat}</a></li>
                                    </ul>
                                    <p>{$LANG.contactushotlinecustomer1} +{$hostx_theme_settings.country_calling_code_phone} {$hostx_theme_settings.phone}</p>
                                    <p>{$LANG.contactusbusinesshourcustomer}</p>
                                    <p>{$LANG.contactusemailscustomer}</p>
                                </div>
                            </div>
                            <div id="technical" class="tabcontent" style="display:none;">
                                <div class="size-product-des">
                                    <h3>{$LANG.contactustechenquery}</h3>
                                    <ul class="list-inline">
                                    <li class="list-inline-item"><a href="submitticket.php" class="sales-btn button-style hx-primary-btn">{$LANG.contactusemailstechnicalticket}</a></li>
                                    <li class="list-inline-item"><a href="#" class="live-chat-con button-style hx-secondary">{$LANG.contactuslivechat}</a></li>
                                    </ul>
                                    <p>{$LANG.contactushotlinetechnical1} +{$hostx_theme_settings.country_calling_code_phone} {$hostx_theme_settings.phone}</p>
                                    <p>{$LANG.contactusbusinesshourtechnical}</p>
                                    <p>{$LANG.contactusemailstechnical}</p>
                                </div>
                            </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card-body ryt-contact-sec">
                        <div class="mb-4">
                            <h4 class="mb-0">{lang key='readyforquestions'}</h4>
                        </div>
                        {if !$sent}
                            <form method="post" action="contact.php" role="form">
                            <input type="hidden" name="action" value="send" />
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="inputName" class="col-form-label text-right font-">{lang key='supportticketsclientname'}</label>
                                        <input type="text" name="name" value="{$name}" class="form-control" id="inputName" />
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="inputEmail" class="col-form-label text-right">{lang key='supportticketsclientemail'}</label>
                                            <input type="email" name="email" value="{$email}" class="form-control" id="inputEmail" />
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="inputSubject" class="col-form-label text-right">{lang key='supportticketsticketsubject'}</label>
                                        <input type="text" name="subject" value="{$subject}" class="form-control" id="inputSubject" />
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="inputMessage" class="col-form-label text-right">{lang key='contactmessage'}</label>
                                        <textarea name="message" rows="7" class="form-control" id="inputMessage">{$message}</textarea>
                                    </div>
                                    {if $captcha}
                                        <div class="text-left col-md-12 margin-bottom contact-captcha">
                                            {include file="$template/includes/captcha.tpl"}
                                        </div>
                                    {/if}
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary{$captcha->getButtonClass($captchaForm)} button-style hx-primary-btn">{lang key='contactsend'}</button>
                                    </div>
                                </div>
                            </form>
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{literal}
<script>
 function productdetailsContactPage(evt, cityName) {
	   var i, tabcontent, productlinks;
	   tabcontent = document.getElementsByClassName("tabcontent");
	   for (i = 0; i < tabcontent.length; i++) {
		 tabcontent[i].style.display = "none";
	   }
	   productlinks = document.getElementsByClassName("productlinks");
	   for (i = 0; i < productlinks.length; i++) {
		 productlinks[i].className = productlinks[i].className.replace(" tab-active", "");
	   }
	   document.getElementById(cityName).style.display = "block";
	   evt.currentTarget.className += " tab-active";
 }
</script>
{/literal}
