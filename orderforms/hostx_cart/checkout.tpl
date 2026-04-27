{assign var=onEmbeddedCheckout value=$embeddedCheckout|default:false}
{assign var=onKeepSignupOpen value=false}
{if $errormessage
    || $clientsdetails.firstname
    || $clientsdetails.lastname
    || $clientsdetails.email
    || $clientsdetails.address1
    || $clientsdetails.city
    || $clientsdetails.postcode
}
    {assign var=onKeepSignupOpen value=true}
{/if}
<script>
    // Define state tab index value
    var statesTab = 10;
    // Do not enforce state input client side
    var stateNotRequired = true;
</script>
{if !$onEmbeddedCheckout}
{include file="orderforms/{$carttpl}/common.tpl"}
<script type="text/javascript" src="{$BASE_PATH_JS}/StatesDropdown.js"></script>
{/if}
<script type="text/javascript" src="{$BASE_PATH_JS}/PasswordStrength.js"></script>
<script type="text/javascript" src="{$BASE_PATH_JS}/VatValidator.js"></script>
<script>
    window.langPasswordStrength = "{$LANG.pwstrength}";
    window.langPasswordWeak = "{$LANG.pwstrengthweak}";
    window.langPasswordModerate = "{$LANG.pwstrengthmoderate}";
    window.langPasswordStrong = "{$LANG.pwstrengthstrong}";
    window.langVatErrorInvalidFormat = "{$LANG.tax.errorVatInvalidFormat}";
</script>
{if !$onEmbeddedCheckout}
<div id="order-standard_cart" class="hostx-cart-body-section">
    {include file="orderforms/{$carttpl}/product-group-list.tpl"}
    <div class="checkout-cart-page on-cfg-wrap on-checkout-wrap">
        <div class="secondary-cart-body on-cfg-main on-checkout-main">
                    <div class="on-cfg-product-header on-checkout-header">
                        <span class="on-added-badge">
                            <svg width="12" height="12" viewBox="0 0 12 12" fill="none" aria-hidden="true"><path d="M1.5 6L4.5 9L10.5 3" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg>
                            Order review complete
                        </span>
                        <p class="on-product-name">Secure checkout</p>
                    </div>
                    <h1 class="on-cfg-h1 on-checkout-title">Checkout</h1>
                    <p class="on-cfg-short-desc on-checkout-copy">Confirm billing details, choose payment, and place the order.</p>
                    {foreach $hookOutput as $output}
                        <div class="last-chance-market-connect">
                            {$output}
                        </div>
                    {/foreach}
{else}
<div class="on-view-checkout-stack on-cfg-stack">
{/if}

                    <div class="alert alert-danger cart-error-alert checkout-error-feedback {if !$errormessage}d-none{/if}" role="alert">
                        <p>{$LANG.orderForm.correctErrors}:</p>
                        <ul>
                            {if $errormessage}
                                {$errormessage}
                            {/if}
                            <li class="vat-error d-none"></li>
                        </ul>
                    </div>


                    <form method="post" action="{$smarty.server.PHP_SELF}?a=checkout" name="orderfrm" id="frmCheckout">
                        <input type="hidden" name="checkout" value="true" />
                        <input type="hidden" name="custtype" id="inputCustType" value="{$custtype}" />
                        {if $taxIdValidationEnabled}
                            <input type="hidden" id="validation_tax_id" value="true">
                        {/if}

                        {if $isTaxEUTaxExempt}
                            <input type="hidden" id="isTaxEUTaxExempt" value="true">
                        {/if}

                        {if $taxType !== ''}
                            <input type="hidden" id="taxType" value="{$taxType}">
                        {/if}

                        {if $isTaxInclusiveDeduct}
                            <input type="hidden" id="isTaxInclusiveDeduct" value="true">
                        {/if}
                        <div class="on-clean-accordion on-live-checkout-accordion">
                        <section class="on-acc-card on-checkout-accordion-card is-open" data-acc-card="account">
                            <button type="button" class="on-acc-toggle" data-acc-toggle>
                                <span class="on-acc-toggle-main">
                                    <span class="on-acc-step">1</span>
                                    <span>
                                        <span class="on-acc-title">Account</span><br>
                                        <span class="on-acc-summary">Sign in if you already have an account, or create one for this order.</span>
                                    </span>
                                </span>
                                <span class="on-acc-chevron">
                                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none"><path d="M4.5 7l4.5 4 4.5-4" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg>
                                </span>
                            </button>
                            <div class="on-acc-body">
                        <div class="already-registered clearfix on-checkout-section on-checkout-account-switch">
                            <div class="pull-right float-right">
                                <button type="button" class="btn btn-info on-checkout-pill-btn{if $loggedin || !$loggedin && $custtype eq "existing"} w-hidden{/if}" id="btnAlreadyRegistered">
                                    {$LANG.orderForm.alreadyRegistered}
                                </button>
                                <button type="button" class="btn btn-warning on-checkout-pill-btn{if $loggedin || $custtype neq "existing"} w-hidden{/if}" id="btnNewUserSignup">
                                    {$LANG.orderForm.createAccount}
                                </button>
                            </div>
                            <p class="text-sm-left overflow-hidden">{lang key='orderForm.enterPersonalDetails'}</p>
                        </div>
                        {if $custtype neq "new" && $loggedin}
                            <div class="on-checkout-section on-checkout-account-section">
                            <div class="sub-heading">
                                <span class="primary-bg-color">
                                    {lang key='switchAccount.title'}
                                </span>
                            </div>
                            <div id="containerExistingAccountSelect" class="row account-select-container">
                                {foreach $accounts as $account}
                                    <div class="col-sm-{if $accounts->count() == 1}12{else}6{/if}">
                                        <div class="account{if $selectedAccountId == $account->id} active{/if}">
                                            <label class="radio-inline" for="account{$account->id}">
                                                <input id="account{$account->id}" class="account-select{if $account->isClosed || $account->noPermission || $inExpressCheckout} disabled{/if}" type="radio" name="account_id" value="{$account->id}"{if $account->isClosed || $account->noPermission || $inExpressCheckout} disabled="disabled"{/if}{if $selectedAccountId == $account->id} checked="checked"{/if}>
                                                <span class="address">
                                                    <strong>
                                                        {if $account->company}{$account->company}{else}{$account->fullName}{/if}
                                                    </strong>
                                                    {if $account->isClosed || $account->noPermission}
                                                        <span class="label label-default">
                                                            {if $account->isClosed}
                                                                {lang key='closed'}
                                                            {else}
                                                                {lang key='noPermission'}
                                                            {/if}
                                                        </span>
                                                    {elseif $account->currencyCode}
                                                        <span class="label label-info">
                                                            {$account->currencyCode}
                                                        </span>
                                                    {/if}
                                                    <br>
                                                    <span class="small">
                                                        {$account->address1}{if $account->address2}, {$account->address2}{/if}<br>
                                                        {if $account->city}{$account->city},{/if}
                                                        {if $account->state} {$account->state},{/if}
                                                        {if $account->postcode} {$account->postcode},{/if}
                                                        {$account->countryName}
                                                    </span>
                                                </span>
                                            </label>
                                        </div>
                                    </div>
                                {/foreach}
                                <div class="col-sm-12">
                                    <div class="account border-bottom{if !$selectedAccountId || !is_numeric($selectedAccountId)} active{/if}">
                                        <label class="radio-inline">
                                            <input class="account-select" type="radio" name="account_id" value="new"{if !$selectedAccountId || !is_numeric($selectedAccountId)} checked="checked"{/if}{if $inExpressCheckout} disabled="disabled" class="disabled"{/if}>
                                            {lang key='orderForm.createAccount'}
                                        </label>
                                    </div>
                                </div>
                            </div>
                            </div>
                        {/if}

                        <div id="containerExistingUserSignin" class="on-checkout-section on-checkout-login-section{if $loggedin || $custtype neq "existing"} w-hidden{/if}">
                            <div class="sub-heading">
                                <span class="primary-bg-color">{$LANG.orderForm.existingCustomerLogin}</span>
                            </div>

                            <div class="alert alert-danger w-hidden" id="existingLoginMessage">
                            </div>

                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="form-group prepend-icon">
                                        <label for="inputLoginEmail" class="field-label">{$LANG.orderForm.emailAddress}</label>
                                        <input type="text" name="loginemail" id="inputLoginEmail" class="field form-control" value="{$loginemail}">
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <label for="inputLoginPassword" class="field-label">{$LANG.clientareapassword}</label>
                                        <input type="password" name="loginpassword" id="inputLoginPassword" class="field form-control">
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <div class="text-center">
                                        <button type="button" id="btnExistingLogin" class="btn button-style hx-primary-btn on-checkout-pill-btn">
                                            <span id="existingLoginButton">{lang key='login'}</span>
                                            <span id="existingLoginPleaseWait" class="w-hidden">{lang key='pleasewait'}</span>
                                        </button>
                                    </div>
                                </div>
                            </div>
                            {include file="orderforms/{$carttpl}/linkedaccounts.tpl" linkContext="checkout-existing"}
                        </div>

                        <div id="containerNewUserSignup" class="on-checkout-section on-checkout-signup-section
                            {if
                                $custtype === 'existing'
                                || (is_numeric($selectedAccountId) && $selectedAccountId > 0)
                                || (
                                    $loggedin
                                    && $selectedAccountId !== 'new'
                                    && $custtype !== 'add'
                                )
                                || !$onKeepSignupOpen
                            }
                                w-hidden
                            {/if}
                        >

                            <div class="{if $loggedin}w-hidden{else}provider-link-sec{/if}">
                                {include file="orderforms/{$carttpl}/linkedaccounts.tpl" linkContext="checkout-new"}
                            </div>
                        <div class="personal-info-sec">    
                            <div class="sub-heading">
                                <span class="primary-bg-color">{$LANG.orderForm.personalInformation}</span>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="inputFirstName" class="field-label">{$LANG.orderForm.firstName}</label>
                                        <input type="text" name="firstname" id="inputFirstName" class="field form-control" value="{$clientsdetails.firstname}" autofocus>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="inputLastName" class="field-label">{$LANG.orderForm.lastName}</label>
                                        <input type="text" name="lastname" id="inputLastName" class="field form-control" value="{$clientsdetails.lastname}">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="inputEmail" class="field-label">{$LANG.orderForm.emailAddress}</label>
                                        <input type="email" name="email" id="inputEmail" class="field form-control" value="{$clientsdetails.email}">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="inputPhone" class="field-label">{$LANG.orderForm.phoneNumber}</label>
                                        <input type="tel" name="phonenumber" id="inputPhone" class="field form-control" value="{$clientsdetails.phonenumber}">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="billing-info">
                            <div class="sub-heading">
                                <span class="primary-bg-color">{$LANG.orderForm.billingAddress}</span>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="inputCompanyName" class="field-label">{$LANG.orderForm.companyName} ({$LANG.orderForm.optional})</label>
                                        <input type="text" name="companyname" id="inputCompanyName" class="field form-control" value="{$clientsdetails.companyname}">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="inputAddress1" class="field-label">{$LANG.orderForm.streetAddress}</label>
                                        <input type="text" name="address1" id="inputAddress1" class="field form-control" value="{$clientsdetails.address1}">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="inputAddress2" class="field-label">{$LANG.orderForm.streetAddress2}</label>
                                        <input type="text" name="address2" id="inputAddress2" class="field form-control" value="{$clientsdetails.address2}">
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label for="inputCity" class="field-label">{$LANG.orderForm.city}</label>
                                        <input type="text" name="city" id="inputCity" class="field form-control" value="{$clientsdetails.city}">
                                    </div>
                                </div>
                                <div class="col-sm-5">
                                    <div class="form-group">
                                        <label for="state" class="field-label">{$LANG.orderForm.state}</label>
                                        <input type="text" name="state" id="inputState" class="field form-control" value="{$clientsdetails.state}">
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group">
                                        <label for="inputPostcode" class="field-label">{$LANG.orderForm.postcode}</label>
                                        <input type="text" name="postcode" id="inputPostcode" class="field form-control" value="{$clientsdetails.postcode}">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="inputCountry" class="field-label" id="inputCountryIcon">{$LANG.orderForm.country}</label>
                                        <select name="country" id="inputCountry" class="field form-control">
                                            {foreach $countries as $countrycode => $countrylabel}
                                                <option value="{$countrycode}"{if (!$country && $countrycode == $defaultcountry) || $countrycode eq $country} selected{/if}>
                                                    {$countrylabel}
                                                </option>
                                            {/foreach}
                                        </select>
                                    </div>
                                </div>
                                {if $showTaxIdField}
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="inputTaxId" class="field-label">{$taxLabel}</label>
                                            <input type="text" name="tax_id" id="inputTaxId" class="field form-control" value="{$clientsdetails.tax_id}" autocomplete="off">
                                        </div>
                                    </div>
                                {/if}
                            </div>
                        </div>    
                            {if $customfields}
                                <div class="custom-field-info on-checkout-subsection">
                                    <div class="sub-heading">
                                        <span class="primary-bg-color">{$LANG.orderadditionalrequiredinfo}<br><i><small>{lang key='orderForm.requiredField'}</small></i></span>
                                    </div>
                                    <div class="field-container">
                                        <div class="row">
                                            {foreach $customfields as $customfield}
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label for="customfield{$customfield.id}">{$customfield.name} {$customfield.required}</label>
                                                        {$customfield.input}
                                                        {if $customfield.description}
                                                            <span class="field-help-text">
                                                                {$customfield.description}
                                                            </span>
                                                        {/if}
                                                    </div>
                                                </div>
                                            {/foreach}
                                        </div>
                                    </div>
                                </div>
                            {/if}
                        </div>

                        {if isset($checkoutExtraFields) && !empty($checkoutExtraFields)}
                            <div class="on-checkout-section on-checkout-extra-section">
                            <div class="sub-heading">
                                <span class="primary-bg-color">{lang key='orderForm.additionalInformation'}</span>
                            </div>
                            <div class="row">
                                {foreach $checkoutExtraFields as $field}
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="{$field.name}">
                                                {$field.label|escape}
                                                {if $field.required}<span class="text-danger">*</span>{/if}
                                            </label>
                                            {$field.input}
                                            {if $field.description}
                                                <span class="field-help-text">{$field.description}</span>
                                            {/if}
                                        </div>
                                    </div>
                                {/foreach}
                            </div>
                            </div>
                        {/if}

                        {if $domainsinorder}
                            <div class="domains-contact-info-order on-checkout-section on-checkout-domain-section">
                                <div class="sub-heading">
                                    <span class="primary-bg-color">{$LANG.domainregistrantinfo}</span>
                                </div>
                                <p class="small text-muted">{$LANG.orderForm.domainAlternativeContact}</p>
                                <div class="row margin-bottom">
                                    <div class="col-sm-6">
                                        <select name="contact" id="inputDomainContact" class="field form-control">
                                            <option value="">{$LANG.usedefaultcontact}</option>
                                            {foreach $domaincontacts as $domcontact}
                                                <option value="{$domcontact.id}"{if $contact == $domcontact.id} selected{/if}>
                                                    {$domcontact.name}
                                                </option>
                                            {/foreach}
                                            <option value="addingnew"{if $contact == "addingnew"} selected{/if}>
                                                {$LANG.clientareanavaddcontact}...
                                            </option>
                                        </select>
                                    </div>
                                </div>
                                <div{if $contact neq "addingnew"} class="w-hidden"{/if}>
                                    <div class="row" id="domainRegistrantInputFields">
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="inputDCFirstName" class="field-label">{$LANG.orderForm.firstName}</label>
                                                <input type="text" name="domaincontactfirstname" id="inputDCFirstName" class="field form-control" value="{$domaincontact.firstname}">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="inputDCLastName" class="field-label">{$LANG.orderForm.lastName}</label>
                                                <input type="text" name="domaincontactlastname" id="inputDCLastName" class="field form-control" value="{$domaincontact.lastname}">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="inputDCEmail" class="field-label">{$LANG.orderForm.emailAddress}</label>
                                                <input type="email" name="domaincontactemail" id="inputDCEmail" class="field form-control" value="{$domaincontact.email}">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="inputDCPhone" class="field-label">{$LANG.orderForm.phoneNumber}</label>
                                                <input type="tel" name="domaincontactphonenumber" id="inputDCPhone" class="field form-control" value="{$domaincontact.phonenumber}">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="inputDCCompanyName" class="field-label">{$LANG.orderForm.companyName} ({$LANG.orderForm.optional})</label>
                                                <input type="text" name="domaincontactcompanyname" id="inputDCCompanyName" class="field form-control" value="{$domaincontact.companyname}">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="inputDCAddress1" class="field-label">{$LANG.orderForm.streetAddress}</label>
                                                <input type="text" name="domaincontactaddress1" id="inputDCAddress1" class="field form-control" value="{$domaincontact.address1}">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="inputDCAddress2" class="field-label">{$LANG.orderForm.streetAddress2}</label>
                                                <input type="text" name="domaincontactaddress2" id="inputDCAddress2" class="field form-control" value="{$domaincontact.address2}">
                                            </div>
                                        </div>
                                        <div class="col-sm-4">
                                            <div class="form-group">
                                                <label for="inputDCCity" class="field-label">{$LANG.orderForm.city}</label>
                                                <input type="text" name="domaincontactcity" id="inputDCCity" class="field form-control" value="{$domaincontact.city}">
                                            </div>
                                        </div>
                                        <div class="col-sm-5">
                                            <div class="form-group">
                                                <label for="inputDCState" class="field-label">{$LANG.orderForm.state}</label>
                                                <input type="text" name="domaincontactstate" id="inputDCState" class="field form-control" value="{$domaincontact.state}">
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="form-group">
                                                <label for="inputDCPostcode" class="field-label">{$LANG.orderForm.postcode}</label>
                                                <input type="text" name="domaincontactpostcode" id="inputDCPostcode" class="field form-control" value="{$domaincontact.postcode}">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="inputDCCountry" class="field-label" id="inputCountryIcon">{$LANG.orderForm.country}</label>
                                                <select name="domaincontactcountry" id="inputDCCountry" class="field form-control">
                                                    {foreach $countries as $countrycode => $countrylabel}
                                                        <option value="{$countrycode}"{if (!$domaincontact.country && $countrycode == $defaultcountry) || $countrycode eq $domaincontact.country} selected{/if}>
                                                            {$countrylabel}
                                                        </option>
                                                    {/foreach}
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label for="inputDCTaxId" class="field-label">{$taxLabel}</label>
                                                <input type="text" name="domaincontacttax_id" id="inputDCTaxId" class="field form-control" value="{$domaincontact.tax_id}" autocomplete="off">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/if}

                        {if !$loggedin}
                            <div id="containerNewUserSecurity" class="on-checkout-section on-checkout-security-section{if (!$loggedin && $custtype eq "existing") || ($remote_auth_prelinked && !$securityquestions) || !$onKeepSignupOpen} w-hidden{/if}">
                                <div class="sub-heading">
                                    <span class="primary-bg-color">{$LANG.orderForm.accountSecurity}</span>
                                </div>

                                <div id="containerPassword" class="row{if $remote_auth_prelinked && $securityquestions} w-hidden{/if}">
                                    <div id="passwdFeedback" class="alert alert-info text-center col-sm-12 w-hidden"></div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="inputNewPassword1" class="field-label">{$LANG.clientareapassword}</label>
                                            <input type="password" name="password" id="inputNewPassword1" data-error-threshold="{$pwStrengthErrorThreshold}" data-warning-threshold="{$pwStrengthWarningThreshold}" class="field form-control" {if $remote_auth_prelinked} value="{$password}"{/if}>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="inputNewPassword2" class="field-label">{$LANG.clientareaconfirmpassword}</label>
                                            <input type="password" name="password2" id="inputNewPassword2" class="field form-control" {if $remote_auth_prelinked} value="{$password}"{/if}>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <button type="button" class="btn btn-default btn-sm generate-password on-checkout-pill-btn" data-targetfields="inputNewPassword1,inputNewPassword2">
                                            {$LANG.generatePassword.btnLabel}
                                        </button>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="password-strength-meter">
                                            <div class="progress">
                                                <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="passwordStrengthMeterBar">
                                                </div>
                                            </div>
                                            <p class="small text-muted" id="passwordStrengthTextLabel">{$LANG.pwstrength}: {$LANG.pwstrengthenter}</p>
                                        </div>
                                    </div>
                                </div>
                                {if $securityquestions}
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <label for="inputSecurityQAns" class="field-label">{$LANG.clientareasecurityquestion}</label>
                                            <select name="securityqid" id="inputSecurityQId" class="field form-control">
                                                <option value="">{$LANG.clientareasecurityquestion}</option>
                                                {foreach $securityquestions as $question}
                                                    <option value="{$question.id}"{if $question.id eq $securityqid} selected{/if}>
                                                        {$question.question}
                                                    </option>
                                                {/foreach}
                                            </select>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label for="inputSecurityQAns" class="field-label">{$LANG.clientareasecurityanswer}</label>
                                                <input type="password" name="securityqans" id="inputSecurityQAns" class="field form-control">
                                            </div>
                                        </div>
                                    </div>
                                {/if}

                            </div>

                        {/if}
                            </div>
                        </section>

                        <section class="on-acc-card on-checkout-accordion-card is-open" data-acc-card="payment">
                            <button type="button" class="on-acc-toggle" data-acc-toggle>
                                <span class="on-acc-toggle-main">
                                    <span class="on-acc-step">2</span>
                                    <span>
                                        <span class="on-acc-title">Payment</span><br>
                                        <span class="on-acc-summary">Choose the payment method you want to use for this order.</span>
                                    </span>
                                </span>
                                <span class="on-acc-chevron">
                                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none"><path d="M4.5 7l4.5 4 4.5-4" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg>
                                </span>
                            </button>
                            <div class="on-acc-body">

                        <div id="applyCreditContainer" class="apply-credit-container on-checkout-section on-checkout-credit-section{if !$canUseCreditOnCheckout} w-hidden{/if}" data-apply-credit="{$applyCredit}">
                            <p>{lang key='cart.availableCreditBalance' amount=$creditBalance}</p>

                            <label class="radio">
                                <input id="useCreditOnCheckout" type="radio" name="applycredit" value="1"{if $applyCredit} checked{/if}>
                                <span id="spanFullCredit"{if !($creditBalance->toNumeric() >= $total->toNumeric())} class="w-hidden"{/if}>
                                    {lang key='cart.applyCreditAmountNoFurtherPayment' amount=$total}
                                </span>
                                <span id="spanUseCredit"{if $creditBalance->toNumeric() >= $total->toNumeric()} class="w-hidden"{/if}>
                                    {lang key='cart.applyCreditAmount' amount=$creditBalance}
                                </span>
                            </label>
                            <label class="radio">
                                <input id="skipCreditOnCheckout" type="radio" name="applycredit" value="0"{if !$applyCredit} checked{/if}>
                                {lang key='cart.applyCreditSkip' amount=$creditBalance}
                            </label>
                        </div>

                        {if !$inExpressCheckout}
                        <div class="checkout-payment-info on-checkout-section on-checkout-payment-section">
                            <div id="paymentGatewaysContainer" class="form-group">
                                <p class="small text-muted">{$LANG.orderForm.preferredPaymentMethod}</p>

                            <div class="text-center on-checkout-gateway-grid">
                                    {foreach $gateways as $gateway}
                                        <label class="radio-inline on-pay-option{if $selectedgateway eq $gateway.sysname} is-selected{/if}">
                                            <input type="radio"
                                                name="paymentmethod"
                                                value="{$gateway.sysname}"
                                                data-payment-type="{$gateway.payment_type}"
                                                data-show-local="{$gateway.show_local_cards}"
                                                data-remote-inputs="{$gateway.uses_remote_inputs}"
                                                class="payment-methods{if $gateway.type eq "CC"} is-credit-card{/if}"
                                                    {if $selectedgateway eq $gateway.sysname} checked{/if}
                                            />
                                            <span class="on-pay-head">
                                                <span class="on-pay-left">
                                                    <span class="on-pay-dot"></span>
                                                    <span class="on-pay-name">{$gateway.name}</span>
                                                </span>
                                                <span class="on-acc-chevron">
                                                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none"><path d="M4.5 7l4.5 4 4.5-4" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg>
                                                </span>
                                            </span>
                                        </label>
                                    {/foreach}
                                </div>
                            </div>

                            <div class="alert alert-danger text-center gateway-errors w-hidden"></div>

                            <div class="clearfix"></div>

                            <div class="cc-input-container{if $selectedgatewaytype neq "CC"} w-hidden{/if}" id="creditCardInputFields">
                                {if $client}
                                    <div id="existingCardsContainer" class="existing-cc-grid">
                                        {include file="orderforms/{$carttpl}/includes/existing-paymethods.tpl"}
                                    </div>
                                {/if}
                                <div class="row cvv-input" id="existingCardInfo">
                                    <div class="col-lg-3 col-sm-4">
                                        <div class="form-group">
                                            <label for="inputCardCVV2" class="field-label">{$LANG.creditcardcvvnumbershort}</label>
                                            <div class="input-group">
                                                <input type="tel" name="cccvv" id="inputCardCVV2" class="field form-control" autocomplete="cc-cvc">
                                                <span class="input-group-btn input-group-append">
                                                    <button type="button" class="btn btn-default" data-toggle="popover" data-placement="bottom" data-content="<img src='{$BASE_PATH_IMG}/ccv.gif' width='210' />">
                                                        ?
                                                    </button>
                                                </span>
                                            </div>
                                            <span class="field-error-msg">{lang key="paymentMethodsManage.cvcNumberNotValid"}</span>
                                        </div>
                                    </div>
                                </div>

                                <ul>
                                    <li>
                                        <label class="radio-inline">
                                            <input type="radio" name="ccinfo" value="new" id="new" {if !$client || $client->payMethods->count() === 0} checked="checked"{/if} />
                                            &nbsp;
                                            {lang key='creditcardenternewcard'}
                                        </label>
                                    </li>
                                </ul>

                                <div class="row" id="newCardInfo">
                                    <div id="cardNumberContainer" class="col-sm-6 new-card-container">
                                        <div class="form-group">
                                            <label for="inputCardNumber" class="field-label">{$LANG.orderForm.cardNumber}</label>
                                            <input type="tel" name="ccnumber" id="inputCardNumber" class="field form-control cc-number-field" autocomplete="cc-number" data-message-unsupported="{lang key='paymentMethodsManage.unsupportedCardType'}" data-message-invalid="{lang key='paymentMethodsManage.cardNumberNotValid'}" data-supported-cards="{$supportedCardTypes}" />
                                            <span class="field-error-msg"></span>
                                        </div>
                                    </div>
                                    <div class="col-sm-3 new-card-container">
                                        <div class="form-group">
                                            <label for="inputCardExpiry" class="field-label">MM / YY{if $showccissuestart} ({$LANG.creditcardcardexpires}){/if}</label>
                                            <input type="tel" name="ccexpirydate" id="inputCardExpiry" class="field form-control"  autocomplete="cc-exp">
                                            <span class="field-error-msg">{lang key="paymentMethodsManage.expiryDateNotValid"}</span>
                                        </div>
                                    </div>
                                    <div class="col-sm-3" id="cvv-field-container">
                                        <div class="form-group">
                                            <label for="inputCardCVV" class="field-label">{$LANG.creditcardcvvnumbershort}</label>
                                            <div class="input-group">
                                                <input type="tel" name="cccvv" id="inputCardCVV" class="field form-control" autocomplete="cc-cvc">
                                                <span class="input-group-btn input-group-append">
                                                    <button type="button" class="btn btn-default" data-toggle="popover" data-placement="bottom" data-content="<img src='{$BASE_PATH_IMG}/ccv.gif' width='210' />">
                                                        ?
                                                    </button>
                                                </span><br>
                                            </div>
                                            <span class="field-error-msg">{lang key="paymentMethodsManage.cvcNumberNotValid"}</span>
                                        </div>
                                    </div>
                                    {if $showccissuestart}
                                        <div class="col-sm-3 col-sm-offset-6 new-card-container offset-sm-6">
                                            <div class="form-group">
                                                <label for="inputCardStart" class="field-label">MM / YY ({$LANG.creditcardcardstart})</label>
                                                <input type="tel" name="ccstartdate" id="inputCardStart" class="field form-control" autocomplete="cc-exp">
                                            </div>
                                        </div>
                                        <div class="col-sm-3 new-card-container">
                                            <div class="form-group">
                                                <label for="inputCardIssue" class="field-label">{$LANG.creditcardcardissuenum}</label>
                                                <input type="tel" name="ccissuenum" id="inputCardIssue" class="field form-control">
                                            </div>
                                        </div>
                                    {/if}
                                </div>
                                <div id="newCardSaveSettings">
                                    <div class="row form-group new-card-container">
                                        <div id="inputDescriptionContainer" class="col-md-6">
                                            <div class="form-group">
                                                <label for="inputDescription" class="field-label">{$LANG.paymentMethods.descriptionInput} {$LANG.paymentMethodsManage.optional}</label>
                                                <input type="text" class="field form-control" id="inputDescription" name="ccdescription" autocomplete="off" value="" />
                                            </div>
                                        </div>
                                        {if $allowClientsToRemoveCards}
                                            <div id="inputNoStoreContainer" class="col-md-6" style="line-height: 32px;">
                                                <input type="hidden" name="nostore" value="1">
                                                <input type="checkbox" class="toggle-switch-success no-icheck" data-size="mini" checked="checked" name="nostore" id="inputNoStore" value="0" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
                                                <label for="inputNoStore" class="checkbox-inline no-padding">
                                                    &nbsp;&nbsp;
                                                    {$LANG.creditCardStore}
                                                </label>
                                            </div>
                                        {/if}
                                    </div>
                                </div>
                            </div>
                        </div>
                        {else}
                            {if $expressCheckoutOutput}
                                {$expressCheckoutOutput}
                            {else}
                                <p align="center">
                                    {lang key='paymentPreApproved' gateway=$expressCheckoutGateway}
                                </p>
                            {/if}
                        {/if}
                            </div>
                        </section>

                        {if $shownotesfield || $showMarketingEmailOptIn}
                        <section class="on-acc-card on-checkout-accordion-card" data-acc-card="details">
                            <button type="button" class="on-acc-toggle" data-acc-toggle>
                                <span class="on-acc-toggle-main">
                                    <span class="on-acc-step">3</span>
                                    <span>
                                        <span class="on-acc-title">Optional details</span><br>
                                        <span class="on-acc-summary">Add any extra order information only if you need it.</span>
                                    </span>
                                </span>
                                <span class="on-acc-chevron">
                                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none"><path d="M4.5 7l4.5 4 4.5-4" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg>
                                </span>
                            </button>
                            <div class="on-acc-body">
                        {if $shownotesfield}
                            <div class="checkout-notes on-checkout-section on-checkout-notes-section">
                                <div class="sub-heading">
                                    <span class="primary-bg-color">{$LANG.orderForm.additionalNotes}</span>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <textarea name="notes" class="field form-control" rows="4" placeholder="{$LANG.ordernotesdescription}">{$orderNotes}</textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/if}

                        {if $showMarketingEmailOptIn}
                            <div class="marketing-email-optin on-checkout-section on-checkout-marketing-section">
                                <i class="far fa-envelope"></i>
                                <h4 class="font-size-18">{lang key='emailMarketing.joinOurMailingList'}</h4>
                                <p>{$marketingEmailOptInMessage}</p>
                                <input type="checkbox" name="marketingoptin" value="1"{if $marketingEmailOptIn} checked{/if} class="no-icheck toggle-switch-success" data-size="small" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
                            </div>
                        {/if}
                            </div>
                        </section>
                        {/if}
                        </div>

                        <div class="text-center on-checkout-section on-checkout-consent-section on-checkout-consent-shell">
                            {if $accepttos}
                                <p>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="accepttos" id="accepttos" />
                                        &nbsp;
                                        {$LANG.ordertosagreement}
                                        <a href="{$tosurl}" target="_blank">{$LANG.ordertos}</a>
                                    </label>
                                </p>
                            {/if}


                            {if $captcha && $captcha->isEnabled() && $captcha->isEnabledForForm($captchaForm)}
                                {if !$captcha->isInvisible()}
                                    <div class="sub-heading">
                                        <span class="primary-bg-color">{$LANG.captchatitle}</span>
                                    </div>
                                {/if}
                                <div class="text-center">
                                    <div class="text-center margin-bottom">
                                        {include file="$template/includes/captcha.tpl"}
                                    </div>
                                </div>
                            {/if}

                            <button type="submit"
                                    id="btnCompleteOrder"
                                    class="btn btn-primary btn-lg w-hidden disable-on-click spinner-on-click{if $captcha}{$captcha->getButtonClass($captchaForm)}{/if}"
                                    {if $cartitems==0}disabled="disabled"{/if}
                            >
                                {if $inExpressCheckout}{$LANG.confirmAndPay}{else}{$LANG.completeorder}{/if}
                                &nbsp;<i class="fas fa-arrow-circle-right"></i>
                            </button>
                        </div>
                    </form>

                    {if $servedOverSsl}
                        <div class="alert alert-warning checkout-security-msg">
                            <i class="fas fa-lock"></i>
                            {$LANG.ordersecure} (<strong>{$ipaddress}</strong>) {$LANG.ordersecure2}
                            <div class="clearfix"></div>
                        </div>
                    {/if}
                {if $onEmbeddedCheckout}
                </div>
                {else}
                </div>
                <div class="secondary-cart-sidebar on-cfg-sidebar on-checkout-sidebar" id="scrollingPanelContainer">
                    <div class="order-summary on-summary-card on-checkout-summary-card" id="orderSummary">
                        <div class="loader w-hidden" id="orderSummaryLoader">
                            <i class="fas fa-fw fa-sync fa-spin"></i>
                        </div>
                        <h2 class="font-size-30 on-summary-title">{$LANG.ordersummary}</h2>
                        <div class="summary-container on-summary-body">
                            <div class="subtotal clearfix">
                                <span class="pull-left float-left">{$LANG.ordersubtotal}</span>
                                <span id="subtotal" class="pull-right float-right">{$subtotal}</span>
                            </div>
                            <div class="on-checkout-promo-shell">
                                {if $promotioncode}
                                    <div class="promo-code-view on-checkout-promo-active">
                                        <div class="view-cart-promotion-code">
                                            {$promotioncode} - {$promotiondescription}
                                        </div>
                                        <div class="remove-promo-btn">
                                            <a href="{$WEB_ROOT}/cart.php?a=removepromo" class="btn button-style hx-secondary on-checkout-pill-btn on-checkout-mini-btn">
                                                Remove
                                            </a>
                                        </div>
                                    </div>
                                {else}
                                    <div class="on-checkout-promo-form">
                                        <span class="on-checkout-promo-label">Apply promo code</span>
                                        <div class="on-checkout-promo-row">
                                            <a href="{$WEB_ROOT}/cart.php?a=view" class="btn button-style hx-secondary on-checkout-pill-btn on-checkout-mini-btn">
                                                Review cart
                                            </a>
                                        </div>
                                    </div>
                                {/if}
                            </div>
                            {if $promotioncode || $taxrate || $taxrate2}
                                <div class="bordered-totals">
                                    {if $promotioncode}
                                        <div class="clearfix">
                                            <span class="pull-left float-left">{$promotiondescription}</span>
                                            <span id="discount" class="pull-right float-right">{$discount}</span>
                                        </div>
                                    {/if}
                                    {if $taxrate}
                                        <div class="clearfix">
                                            <span class="pull-left float-left">{$taxname} @ {$taxrate}%</span>
                                            <span id="taxTotal1" class="pull-right float-right">{$taxtotal}</span>
                                        </div>
                                    {/if}
                                    {if $taxrate2}
                                        <div class="clearfix">
                                            <span class="pull-left float-left">{$taxname2} @ {$taxrate2}%</span>
                                            <span id="taxTotal2" class="pull-right float-right">{$taxtotal2}</span>
                                        </div>
                                    {/if}
                                </div>
                            {/if}
                            <div class="recurring-totals clearfix">
                                <span class="pull-left float-left">{$LANG.orderForm.totals}</span>
                                <span id="recurring" class="pull-right float-right recurring-charges">
                                    <span id="recurringMonthly" {if !$totalrecurringmonthly}style="display:none;"{/if}>
                                        <span class="cost">{$totalrecurringmonthly}</span> {$LANG.orderpaymenttermmonthly}<br />
                                    </span>
                                    <span id="recurringQuarterly" {if !$totalrecurringquarterly}style="display:none;"{/if}>
                                        <span class="cost">{$totalrecurringquarterly}</span> {$LANG.orderpaymenttermquarterly}<br />
                                    </span>
                                    <span id="recurringSemiAnnually" {if !$totalrecurringsemiannually}style="display:none;"{/if}>
                                        <span class="cost">{$totalrecurringsemiannually}</span> {$LANG.orderpaymenttermsemiannually}<br />
                                    </span>
                                    <span id="recurringAnnually" {if !$totalrecurringannually}style="display:none;"{/if}>
                                        <span class="cost">{$totalrecurringannually}</span> {$LANG.orderpaymenttermannually}<br />
                                    </span>
                                    <span id="recurringBiennially" {if !$totalrecurringbiennially}style="display:none;"{/if}>
                                        <span class="cost">{$totalrecurringbiennially}</span> {$LANG.orderpaymenttermbiennially}<br />
                                    </span>
                                    <span id="recurringTriennially" {if !$totalrecurringtriennially}style="display:none;"{/if}>
                                        <span class="cost">{$totalrecurringtriennially}</span> {$LANG.orderpaymenttermtriennially}<br />
                                    </span>
                                </span>
                            </div>

                            <div class="total-due-today total-due-today-padded">
                                <span class="amt">
                                    <span id="totalDueToday">{$total}</span>
                                    <span id="totalCartPrice" class="sr-only">{$total}</span>
                                </span>
                                <span>{$LANG.ordertotalduetoday}</span>
                            </div>

                            <div class="express-checkout-buttons">
                                {foreach $expressCheckoutButtons as $checkoutButton}
                                    {$checkoutButton}
                                    <div class="separator">
                                        - {$LANG.or|strtoupper} -
                                    </div>
                                {/foreach}
                            </div>
                            <div class="summary-checkout-btn">
                                <button class="btn button-style hx-primary-btn on-checkout-pill-btn on-checkout-submit-btn{if $cartitems == 0} disabled{/if}" id="checkout-summary" onclick="jQuery('#btnCompleteOrder').click();">{if $inExpressCheckout}{$LANG.confirmAndPay}{else}{$LANG.completeorder}{/if} <i class="fas fa-arrow-circle-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>                    
                </div>
    </div>
</div>
                {/if}
<script type="text/javascript" src="{$BASE_PATH_JS}/jquery.payment.js"></script>
<script>
    var hideCvcOnCheckoutForExistingCard = '{if $canUseCreditOnCheckout && $applyCredit && ($creditBalance->toNumeric() >= $total->toNumeric())}1{else}0{/if}';
</script>
{if !$onEmbeddedCheckout}
<script type="text/javascript" src="{$BASE_PATH_JS}/CartTotalUpdater.js"></script>
{/if}
<script>
    (function () {
        function hostxResetCheckoutScroll() {
            window.scrollTo(0, 0);
        }
        if (window.history && 'scrollRestoration' in window.history) {
            window.history.scrollRestoration = 'manual';
        }
        document.addEventListener('DOMContentLoaded', function () {
            hostxResetCheckoutScroll();
        });
        window.addEventListener('load', function () {
            [0, 120, 320, 720].forEach(function (delay) {
                setTimeout(hostxResetCheckoutScroll, delay);
            });
        });
        window.addEventListener('pageshow', function () {
            [0, 120, 320, 720].forEach(function (delay) {
                setTimeout(hostxResetCheckoutScroll, delay);
            });
        });

        function updateGatewaySelection() {
            var labels = document.querySelectorAll('#paymentGatewaysContainer .on-pay-option');
            labels.forEach(function (label) {
                var radio = label.querySelector('input[type="radio"]');
                if (!radio) {
                    return;
                }
                label.classList.toggle('is-selected', !!radio.checked);
            });
        }

        function mirrorCartTotalProxy() {
            var totalProxy = document.getElementById('totalCartPrice');
            var totalVisible = document.getElementById('totalDueToday');
            if (!totalProxy || !totalVisible) {
                return;
            }
            var sync = function () {
                if (totalProxy.textContent && totalVisible.textContent !== totalProxy.textContent) {
                    totalVisible.textContent = totalProxy.textContent;
                }
            };
            sync();
            new MutationObserver(sync).observe(totalProxy, {
                characterData: true,
                childList: true,
                subtree: true
            });
        }

        document.querySelectorAll('#order-standard_cart [data-acc-toggle]').forEach(function (toggle) {
            toggle.addEventListener('click', function () {
                var card = toggle.closest('[data-acc-card]');
                if (card) {
                    card.classList.toggle('is-open');
                }
            });
        });

        document.querySelectorAll('#paymentGatewaysContainer .on-pay-option').forEach(function (label) {
            label.addEventListener('click', function () {
                var radio = label.querySelector('input[type="radio"]');
                if (!radio) {
                    return;
                }
                radio.checked = true;
                if (window.jQuery) {
                    window.jQuery(radio).trigger('click').trigger('change');
                } else {
                    radio.dispatchEvent(new Event('change', { bubbles: true }));
                }
                updateGatewaySelection();
            });
        });

        document.querySelectorAll('#paymentGatewaysContainer input[type="radio"]').forEach(function (radio) {
            radio.addEventListener('change', updateGatewaySelection);
        });

        updateGatewaySelection();
        mirrorCartTotalProxy();
    })();
</script>
{if !$onEmbeddedCheckout}
{include file="orderforms/{$carttpl}/recommendations-modal.tpl"}
{/if}
