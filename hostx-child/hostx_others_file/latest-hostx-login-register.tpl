<div class="latest-hostx-login-register-pg {if $templatefile == 'clientregister'}latest-register-page-v{/if}">
    <div class="logo-section-latest-view">
        <div class="left-logo-image">
            <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}" {if $hostx_theme_settings.enable_header_target eq 'on'}target="_blank"{/if} class="latest-lr-anch">           
            {if !empty($hostx_theme_settings.lg_pw_logo)}
                <img src="{$hostx_theme_settings.lg_pw_logo}" alt="logo" height="{$hostx_theme_settings.lg_pw_logo_height}" width="{$hostx_theme_settings.lg_pw_logo_width}">
            {else}
                <img src="{$hostx_theme_settings.header_logo}" alt="logo" height="{$hostx_theme_settings.lg_pw_logo_height}" width="{$hostx_theme_settings.lg_pw_logo_width}">
            {/if}
            </a>
        </div>       
    </div>
    {if $templatefile == 'login'}
        <div class="login-latest-panel">
            <div class="providerLinkingFeedback"></div>
            <div class="login-panel-heading">
                <h5 class="heading-mn">{lang key='loginbutton'}</h5>
            </div>
            <div class="head-descrp-mn-sec">
                <p class="head-descrp-mn">{lang key='userLogin.signInToContinue'}</p>
            </div>
            <div class="login-panel-social-sign-in">
                {include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}
            </div>
            <form method="post" action="{routePath('login-validate')}" class="login-form-hostx-default" role="form">
                <div class="card">
                    <div class="card-body">
                        {include file="$template/includes/flashmessage.tpl"}
                        <div class="form-input-area-login">
                            <div class="form-group">
                                <div class="input-group input-group-merge">
                                    <input type="email" class="form-control" name="username" id="inputEmail" placeholder="name@example.com" autocomplete="off" autofocus>
                                </div>
                            </div>
                            <div class="form-group mb-4 focused">
                                <div class="input-group input-group-merge">
                                    <input type="password" class="form-control pw-input" name="password" id="inputPassword" placeholder="{lang key='clientareapassword'}" autocomplete="off">
                                    <div class="input-group-append">
                                        <button class="btn btn-default btn-reveal-pw" type="button" tabindex="-1">
                                            <i class="fas fa-eye"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="rember-forgot-area">
                                <label for="remb-me" class="rember-me-login">
                                    <input type="checkbox" class="form-check-input" id="remb-me" name="rememberme" />
                                    {lang key='loginrememberme'}
                                </label>
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
                        <div class="login-btn-section">
                            <button id="login" type="submit" class="btn btn-primary{$captcha->getButtonClass($captchaForm)}">
                                {lang key='loginbutton'}
                            </button>
                        </div>

                    </div>
                </div>
            </form>
        </div>
        <div class="create-acc-section">
            <small>{lang key='userLogin.notRegistered'}</small>
            <a href="{$WEB_ROOT}/register.php" class="small font-weight-bold">{lang key='userLogin.createAccount'}</a>
        </div>
    {elseif $templatefile == 'clientregister'}
        <div class="register-page-latest-panel">
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
                        <div class="register-form-latest-v">
                            <div class="register-social-signup-view">
                                {include file="$template/includes/linkedaccounts.tpl" linkContext="registration"}
                            </div>
                            <div class="register-left-view">
                                <div id="containerNewUserSignup">
                                    <div class="card mb-4">
                                        <div class="card-body p-4" id="personalInformation">
                                            <div class="svg-img-ar-login-register">
                                                <object class="arrow-login-register" type="image/svg+xml" data="{$WEB_ROOT}/templates/{$template}/images/Shape-img.svg"></object>
                                            </div>
                                            <h3 class="card-title">{lang key='orderForm.personalInformation'}</h3>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="text" name="firstname" id="inputFirstName" class="field form-control" placeholder="{lang key='orderForm.firstName'}" value="{$clientfirstname}" {if !in_array('firstname', $optionalFields)}required{/if} autofocus>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="text" name="lastname" id="inputLastName" class="field form-control" placeholder="{lang key='orderForm.lastName'}" value="{$clientlastname}" {if !in_array('lastname', $optionalFields)}required{/if}>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="email" name="email" id="inputEmail" class="field form-control" placeholder="{lang key='orderForm.emailAddress'}" value="{$clientemail}" autocomplete="off">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="tel" name="phonenumber" id="inputPhone" class="field form-control"  placeholder="{lang key='orderForm.phoneNumber'}" value="{$clientphonenumber}">
                                                    </div>
                                                </div>
                                            </div>            
                                        </div>
                                    </div>           
                                    <div class="card mb-4">
                                        <div class="card-body p-4">
                                            <h3 class="card-title">{lang key='orderForm.billingAddress'}</h3>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="text" name="companyname" id="inputCompanyName" class="field form-control"  placeholder="{lang key='orderForm.companyName'} ({lang key='orderForm.optional'})" value="{$clientcompanyname}">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="text" name="address1" id="inputAddress1" class="field form-control" placeholder="{lang key='orderForm.streetAddress'}" value="{$clientaddress1}"  {if !in_array('address1', $optionalFields)}required{/if}>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="text" name="address2" id="inputAddress2" class="field form-control" placeholder="{lang key='orderForm.streetAddress2'}" value="{$clientaddress2}">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="text" name="city" id="inputCity" class="field form-control" placeholder="{lang key='orderForm.city'}" value="{$clientcity}"  {if !in_array('city', $optionalFields)}required{/if}>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="text" name="state" id="state" class="field form-control" placeholder="{lang key='orderForm.state'}" value="{$clientstate}"  {if !in_array('state', $optionalFields)}required{/if}>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="text" name="postcode" id="inputPostcode" placeholder="{lang key='orderForm.postcode'}" class="field form-control" value="{$clientpostcode}" {if !in_array('postcode', $optionalFields)}required{/if}>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
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
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <input type="text" name="tax_id" id="inputTaxId" class="field form-control" placeholder="{$taxLabel} ({lang key='orderForm.optional'})" value="{$clientTaxId}">
                                                        </div>
                                                    </div>
                                                {/if}
                                            </div>
                
                                        </div>
                                    </div>
                                    {if $customfields || $currencies}
                                        <div class="card mb-4">
                                            <div class="card-body p-4">
                                                <h3 class="card-title additional-info-field">{lang key='orderadditionalrequiredinfo'}<br><i><small>{lang key='orderForm.requiredField'}</small></i></h3>
                                                <div class="row">
                                                    {if $customfields}
                                                        {foreach $customfields as $customfield}
                                                            <div class="col-sm-6 custom-fields-register-form">
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
                                                        <div class="col-sm-6">
                                                            <div class="form-group">
                                                                {if $customfields}
                                                                    <label for="inputCurrency">{$LANG.choosecurrency}</label>
                                                                {/if}
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
                            </div>
                            <div class="register-right-view">
                                <div id="containerNewUserSecurity" {if $remote_auth_prelinked && !$securityquestions } class="w-hidden"{/if}>
                                    <div class="card mb-4">
                                        <div class="card-body p-4">
                                            <h3 class="card-title">{lang key='orderForm.accountSecurity'}</h3>
                                            <div id="containerPassword" class="row{if $remote_auth_prelinked && $securityquestions} hidden{/if}">
                                                <div id="passwdFeedback" class="alert alert-info text-center col-sm-12 w-hidden"></div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="password" name="password" id="inputNewPassword1" data-error-threshold="{$pwStrengthErrorThreshold}" data-warning-threshold="{$pwStrengthWarningThreshold}" class="field form-control" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if} placeholder="{lang key='clientareapassword'}">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <input type="password" name="password2" id="inputNewPassword2" class="field form-control" autocomplete="off"{if $remote_auth_prelinked} value="{$password}"{/if} placeholder="{lang key='clientareaconfirmpassword'}">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <button type="button" class="btn btn-default btn-sm btn-sm-block generate-password" data-targetfields="inputNewPassword1,inputNewPassword2">
                                                            {lang key='generatePassword.btnLabel'}
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
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
                                                    <div class="form-group col-sm-6">
                                                        <select name="securityqid" id="inputSecurityQId" class="field form-control">
                                                            <option value="">{lang key='clientareasecurityquestion'}</option>
                                                            {foreach $securityquestions as $question}
                                                                <option value="{$question.id}"{if $question.id eq $securityqid} selected{/if}>
                                                                    {$question.question}
                                                                </option>
                                                            {/foreach}
                                                        </select>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div class="form-group">
                                                            <input type="password" name="securityqans" id="inputSecurityQAns" class="field form-control" autocomplete="off" placeholder="{lang key='clientareasecurityanswer'}">
                                                        </div>
                                                    </div>
                                                </div>
                                            {/if}
                                        </div>
                
                                    </div>
                                </div>
                                {if $showMarketingEmailOptIn}
                                    <div class="card mb-4 join-mail-list-register-form">
                                        <div class="card-body p-4">
                                            <h3 class="card-title">{lang key='emailMarketing.joinOurMailingList'}</h3>
                                            <p>{$marketingEmailOptInMessage}</p>
                                            <input type="checkbox" name="marketingoptin" value="1"{if $marketingEmailOptIn} checked{/if} class="no-icheck toggle-switch-success" data-size="small" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
                                        </div>
                                    </div>
                                {/if}
                                {if $accepttos}
                                    <p class="text-center tos-condition-register">
                                        <label class="form-check">
                                            <input type="checkbox" name="accepttos" class="form-check-input accepttos">
                                            {lang key='ordertosagreement'} <a href="{$tosurl}" target="_blank">{lang key='ordertos'}</a>
                                        </label>
                                    </p>
                                {/if}
                                <div class="register-page-captcha">
                                    {include file="$template/includes/captcha.tpl"}
                                </div>
                                <p class="text-center register-page-submit-button">
                                    <input class="btn btn-lg btn-primary{$captcha->getButtonClass($captchaForm)}" type="submit" value="{lang key='clientregistertitle'}"/>
                                </p>
                            </div>
                        </div>           
                    </form>
                    <div class="create-acc-section">
                        <small>{lang key='orderForm.alreadyRegistered'}</small>
                        <a href="{$WEB_ROOT}/login.php" class="small font-weight-bold">{lang key='login'}</a>
                    </div>  
                </div>
            {/if}                
        </div>
    {/if}
</div>        