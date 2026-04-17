<div class="register_page default-hostx-login-register">
    <div class="left left-section-default-login-register">
        <div class="login-side-image {if $templatefile == 'clientregister'}register-page-hostx-left{/if}">
            <div class="left-logo-image">
                {if !empty($hostx_theme_settings.lg_pw_logo)}
                    <img src="{$hostx_theme_settings.lg_pw_logo}" alt="logo" height="{$hostx_theme_settings.lg_pw_logo_height}" width="{$hostx_theme_settings.lg_pw_logo_width}">
                {else}
                    <img src="{$hostx_theme_settings.header_logo}" alt="logo" height="{$hostx_theme_settings.lg_pw_logo_height}" width="{$hostx_theme_settings.lg_pw_logo_width}">
                {/if}
            </div>
        </div>
    </div>
    <div class="right right-section-default-login-register {if $templatefile == 'clientregister'}register-page-hostx-right{/if}">
        <h1>{$LANG.welcometo} <span>{$companyname}</span></h1> 
        <ul class="nav">
            <li class="nav-item">
                <a class="nav-link {if $templatefile == 'login'}active{/if}" href="{$WEB_ROOT}/login.php">{$LANG.loginbutton}</a>
            </li>
            <li class="nav-item">
                <a class="nav-link {if $templatefile == 'clientregister'}active{/if}" href="{$WEB_ROOT}/register.php">{$LANG.register}</a>  
            </li> 
        </ul>
        <div class="tab-content min_box">
        {if $templatefile == 'login'}
            <div class="tab-pane active" id="login"> 
                <div class="providerLinkingFeedback"></div>
                <form method="post" action="{routePath('login-validate')}" class="login-form-hostx-default" role="form">
                    <div class="card">
                        <div class="card-body">
                            <div class="svg-img-ar-login-register">
                                <object class="arrow-login-register" type="image/svg+xml" data="{$WEB_ROOT}/templates/{$template}/images/Shape-img.svg"></object>
                            </div>
                            {include file="$template/includes/flashmessage.tpl"}
                            <div class="form-input-area-login">
                                <div class="form-group">
                                    <label for="inputEmail" class="form-control-label">{lang key='clientareaemail'}</label>
                                    <div class="input-group input-group-merge">
                                        <input type="email" class="form-control" name="username" id="inputEmail" placeholder="name@example.com" autocomplete="off" autofocus>
                                    </div>
                                    <label for="remb-me" class="rember-me-login">
                                        <input type="checkbox" class="form-check-input" id="remb-me" name="rememberme" />
                                        {lang key='loginrememberme'}
                                    </label>
                                </div>
                                <div class="form-group mb-4 focused">
                                    <label for="inputPassword" class="form-control-label">{lang key='clientareapassword'}</label>
                                    <div class="input-group input-group-merge">
                                        <input type="password" class="form-control pw-input" name="password" id="inputPassword" placeholder="{lang key='clientareapassword'}" autocomplete="off">
                                        <div class="input-group-append">
                                            <button class="btn btn-default btn-reveal-pw" type="button" tabindex="-1">
                                                <i class="fas fa-eye"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-between">
                                        <div class="mb-2">
                                            <a href="{routePath('password-reset-begin')}" class="small text-muted" tabindex="-1">{lang key='forgotpw'}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            {if $captcha->isEnabled()}
                                <div class="login-page-captcha">
                                    {include file="$template/includes/captcha.tpl"}
                                </div>
                            {/if}
                            <div class="float-left">
                                <button id="login" type="submit" class="btn btn-primary{$captcha->getButtonClass($captchaForm)}">
                                    {lang key='loginbutton'}
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
                {include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}
            </div>
        {elseif $templatefile == 'clientregister'}
            <div class="tab-pane active" id="register-page">
                {if $registrationDisabled}
                    {include file="$template/includes/alert.tpl" type="error" msg="{lang key='registerCreateAccount'}"|cat:' <strong><a href="'|cat:"$WEB_ROOT"|cat:'/cart.php" class="alert-link">'|cat:"{lang key='registerCreateAccountOrder'}"|cat:'</a></strong>'}
                {/if}
                {if $errormessage}
                    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
                {/if}
                {if !$registrationDisabled}
                    <div id="registration">
                        <form method="post" class="using-password-strength" action="{$smarty.server.PHP_SELF}" role="form" name="orderfrm" id="frmCheckout">
                            <input type="hidden" name="register" value="true"/>            
                            <div id="containerNewUserSignup">
                                {include file="$template/includes/linkedaccounts.tpl" linkContext="registration"}
                                <div class="card mb-4">
                                    <div class="card-body p-4" id="personalInformation">
                                        <div class="svg-img-ar-login-register">
                                            <object class="arrow-login-register" type="image/svg+xml" data="{$WEB_ROOT}/templates/{$template}/images/Shape-img.svg"></object>
                                        </div>
                                        <h3 class="card-title">{lang key='orderForm.personalInformation'}</h3>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label for="inputFirstName">{lang key='orderForm.firstName'}</label>
                                                    <input type="text" name="firstname" id="inputFirstName" class="field form-control" value="{$clientfirstname}" {if !in_array('firstname', $optionalFields)}required{/if} autofocus>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label for="inputLastName">{lang key='orderForm.lastName'}</label>
                                                    <input type="text" name="lastname" id="inputLastName" class="field form-control"  value="{$clientlastname}" {if !in_array('lastname', $optionalFields)}required{/if}>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label for="inputEmail">{lang key='orderForm.emailAddress'}</label>
                                                    <input type="email" name="email" id="inputEmail" class="field form-control" value="{$clientemail}" autocomplete="off">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label for="inputPhone">{lang key='orderForm.phoneNumber'}</label>
                                                    <input type="tel" name="phonenumber" id="inputPhone" class="field form-control" value="{$clientphonenumber}">
                                                </div>
                                            </div>
                                        </div>            
                                    </div>
                                </div>           
                                <div class="card mb-4">
                                    <div class="card-body p-4">
                                        <h3 class="card-title">{lang key='orderForm.billingAddress'}</h3>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label for="inputCompanyName" class="field-icon">{lang key='orderForm.companyName'} ({lang key='orderForm.optional'})</label>
                                                    <input type="text" name="companyname" id="inputCompanyName" class="field form-control" value="{$clientcompanyname}">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label for="inputAddress1">{lang key='orderForm.streetAddress'}</label>
                                                    <input type="text" name="address1" id="inputAddress1" class="field form-control" value="{$clientaddress1}"  {if !in_array('address1', $optionalFields)}required{/if}>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label for="inputAddress2">{lang key='orderForm.streetAddress2'}</label>
                                                    <input type="text" name="address2" id="inputAddress2" class="field form-control" value="{$clientaddress2}">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label for="inputCity">{lang key='orderForm.city'}</label>
                                                    <input type="text" name="city" id="inputCity" class="field form-control" value="{$clientcity}"  {if !in_array('city', $optionalFields)}required{/if}>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label for="stateinput" id="inputStateIcon">{lang key='orderForm.state'}</label>
                                                    <label for="stateselect" id="inputStateIcon">{lang key='orderForm.state'}</label>
                                                    <input type="text" name="state" id="state" class="field form-control" value="{$clientstate}"  {if !in_array('state', $optionalFields)}required{/if}>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label for="inputPostcode">{lang key='orderForm.postcode'}</label>
                                                    <input type="text" name="postcode" id="inputPostcode" class="field form-control" value="{$clientpostcode}" {if !in_array('postcode', $optionalFields)}required{/if}>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label for="inputCountry" id="inputCountryIcon">{$LANG.clientareacountry}</label>
                                                    <select name="country" id="inputCountry" class="field form-control" autocomplete="off">
                                                        {foreach $clientcountries as $countryCode => $countryName}
                                                            <option value="{$countryCode}"{if (!$clientcountry && $countryCode eq $defaultCountry) || ($countryCode eq $clientcountry)} selected="selected"{/if}>
                                                                {$countryName}
                                                            </option>
                                                        {/foreach}
                                                    </select>
                                                </div>
                                            </div>
                                            {if $showTaxIdField}
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label for="inputTaxId">{$taxLabel} ({lang key='orderForm.optional'})</label>
                                                        <input type="text" name="tax_id" id="inputTaxId" class="field form-control" value="{$clientTaxId}">
                                                    </div>
                                                </div>
                                            {/if}
                                        </div>
            
                                    </div>
                                </div>
                                {if $customfields || $currencies}
                                    <div class="card mb-4">
                                        <div class="card-body p-4">
                                            <h3 class="card-title">{lang key='orderadditionalrequiredinfo'}<br><i><small>{lang key='orderForm.requiredField'}</small></i></h3>
                                            <div class="row">
                                                {if $customfields}
                                                    {foreach $customfields as $customfield}
                                                        <div class="col-sm-4">
                                                            <div class="form-group">
                                                                <label for="customfield{$customfield.id}">{$customfield.name} {$customfield.required}</label>
                                                                <div class="control">
                                                                    {$customfield.input}
                                                                {if $customfield.description}
                                                                    <span class="field-help-text">{$customfield.description}</span>
                                                                {/if}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    {/foreach}
                                                {/if}
                                                {if $customfields && count($customfields)%2 > 0 }
                                                    <div class="clearfix"></div>
                                                {/if}
                                                {if $currencies}
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                            <label for="inputCurrency">{$LANG.choosecurrency}</label>
                                                            <select id="inputCurrency" name="currency" class="field form-control">
                                                                {foreach $currencies as $curr}
                                                                    <option value="{$curr.id}"{if !$smarty.post.currency && $curr.default || $smarty.post.currency eq $curr.id } selected{/if}>{$curr.code}</option>
                                                                {/foreach}
                                                            </select>
                                                        </div>
                                                    </div>
                                                {/if}
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                                <!--whmcs 9 -->
                                {if isset($accountDetailsExtraFields) && !empty($accountDetailsExtraFields)}
                                    <div class="card mb-4">
                                        <div class="card-body p-4">
                                            <h3 class="card-title account-details-extraFields">{lang key='orderForm.additionalInformation'}</h3>
                                            <div class="row">
                                                {foreach $accountDetailsExtraFields as $field}
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            {$field.input}
                                                        </div>
                                                    </div>
                                                {/foreach}
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                                <!--whmcs 9-->
                            </div>
                            <div id="containerNewUserSecurity" {if $remote_auth_prelinked && !$securityquestions } class="w-hidden"{/if}>
                                <div class="card mb-4">
                                    <div class="card-body p-4">
                                        <h3 class="card-title">{lang key='orderForm.accountSecurity'}</h3>
                                        <div id="containerPassword" class="row{if $remote_auth_prelinked && $securityquestions} hidden{/if}">
                                            <div id="passwdFeedback" class="alert alert-info text-center col-sm-12 w-hidden"></div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label for="inputNewPassword1">{lang key='clientareapassword'}</label>
                                                    <input type="password" name="password" id="inputNewPassword1" data-error-threshold="{$pwStrengthErrorThreshold}" data-warning-threshold="{$pwStrengthWarningThreshold}" class="field form-control" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label for="inputNewPassword2">{lang key='clientareaconfirmpassword'}</label>
                                                    <input type="password" name="password2" id="inputNewPassword2" class="field form-control" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if}>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <button type="button" class="btn btn-default btn-sm btn-sm-block generate-password" data-targetfields="inputNewPassword1,inputNewPassword2">
                                                        {lang key='generatePassword.btnLabel'}
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="password-strength-meter">
                                                    <div class="progress">
                                                        <div class="progress-bar bg-success bg-striped" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="passwordStrengthMeterBar">
                                                        </div>
                                                    </div>
                                                    <p class="text-center small text-muted" id="passwordStrengthTextLabel">{lang key='pwstrength'}: {lang key='pwstrengthenter'}</p>
                                                </div>
                                            </div>
                                        </div>
                                        {if $securityquestions}
                                            <div class="row">
                                                <div class="form-group col-sm-4">
                                                    <select name="securityqid" id="inputSecurityQId" class="field form-control">
                                                        <option value="">{lang key='clientareasecurityquestion'}</option>
                                                        {foreach $securityquestions as $question}
                                                            <option value="{$question.id}"{if $question.id eq $securityqid} selected{/if}>
                                                                {$question.question}
                                                            </option>
                                                        {/foreach}
                                                    </select>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="form-group">
                                                        <label for="inputSecurityQAns">{lang key='clientareasecurityanswer'}</label>
                                                        <input type="password" name="securityqans" id="inputSecurityQAns" class="field form-control" autocomplete="off">
                                                    </div>
                                                </div>
                                            </div>
                                        {/if}
                                    </div>
            
                                </div>
                            </div>
                            {if $showMarketingEmailOptIn}
                                <div class="card mb-4">
                                    <div class="card-body p-4">
                                        <h3 class="card-title">{lang key='emailMarketing.joinOurMailingList'}</h3>
                                        <p>{$marketingEmailOptInMessage}</p>
                                        <input type="checkbox" name="marketingoptin" value="1"{if $marketingEmailOptIn} checked{/if} class="no-icheck toggle-switch-success" data-size="small" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
                                    </div>
                                </div>
                            {/if}
                            <div class="register-page-captcha">
                                {include file="$template/includes/captcha.tpl"}
                            </div>
                            {if $accepttos}
                                <p class="text-center tos-condition-register">
                                    <label class="form-check">
                                        <input type="checkbox" name="accepttos" class="form-check-input accepttos">
                                        {lang key='ordertosagreement'} <a href="{$tosurl}" target="_blank">{lang key='ordertos'}</a>
                                    </label>
                                </p>
                            {/if}
                            <p class="text-center register-page-submit-button">
                                <input class="btn btn-lg btn-primary{$captcha->getButtonClass($captchaForm)}" type="submit" value="{lang key='clientregistertitle'}"/>
                            </p>
                        </form>
                    </div>
                {/if}                
            </div>
        {/if}
        </div>        
    </div>
</div>