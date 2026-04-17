{if !$hostx_theme_settings.login_register_layout || $hostx_theme_settings.login_register_layout eq '0'}
    <div class="reset-psw-uper-info">
        <h6 class="psw-rest-title">{lang key='pwreset'}</h6>
        <p class="psw-rest-desc">{lang key='pwresetemailneeded'}</p>
    </div>
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href="{$WEB_ROOT}/login.php">{$LANG.loginbutton}</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{$WEB_ROOT}/register.php">{$LANG.register}</a>  
        </li> 
    </ul>
    <div class="tab-content min_box">
        {* {if $errorMessage}
            {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
        {/if} whmcs 8.12 *}
        <form method="post" action="{routePath('password-reset-validate-email')}" role="form">
            <div class="svg-img-ar-login-register">
                <object class="arrow-login-register" type="image/svg+xml" data="{$WEB_ROOT}/templates/{$template}/images/Shape-img.svg"></object>
            </div>
            <input type="hidden" name="action" value="reset" />
            <div class="form-group">
                <label for="inputEmail">{lang key='loginemail'}</label>
                <div class="input-group input-group-merge">
                    <input type="email" class="form-control" name="email" id="inputEmail" placeholder="name@example.com" autofocus>
                </div>
            </div>
            {if $captcha && $captcha->isEnabled() && $showCaptchaAfterLimit}
                <div class="text-center margin-bottom">
                    {include file="$template/includes/captcha.tpl"}
                </div>
            {/if}
            <div class="form-group text-center">
                 <button type="submit" id="resetPasswordButton" {if $showCaptchaAfterLimit}data-captcha-required="true"{/if} class="btn btn-primary{$captcha->getButtonClass($captchaForm)}">
                    {lang key='pwresetsubmit'}
                </button>
            </div>
        </form>
    </div>
{elseif $hostx_theme_settings.login_register_layout eq '1'}
    <div class="reset-psw-uper-info latest-reset-psw-v">
        <h6 class="psw-rest-title">{lang key='pwreset'}</h6>
        <p class="psw-rest-desc">{lang key='pwresetemailneeded'}</p>
    </div>
    <div class="latest-login-form latest-reset-psw-v-form">
        {* {if $errorMessage}
            {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
        {/if} whmcs 8.13*}
        <form method="post" action="{routePath('password-reset-validate-email')}" role="form">
            <div class="svg-img-ar-login-register">
                <object class="arrow-login-register" type="image/svg+xml" data="{$WEB_ROOT}/templates/{$template}/images/Shape-img.svg"></object>
            </div>
            <input type="hidden" name="action" value="reset" />
            <div class="form-group">
                <div class="input-group input-group-merge">
                    <input type="email" class="form-control" name="email" id="inputEmail" placeholder="{lang key='loginemail'}" autofocus>
                </div>
            </div>
            {if $captcha && $captcha->isEnabled() && $showCaptchaAfterLimit}
                <div class="text-center margin-bottom">
                    {include file="$template/includes/captcha.tpl"}
                </div>
            {/if}
            <div class="form-group text-center">
                 <button type="submit" id="resetPasswordButton" {if $showCaptchaAfterLimit}data-captcha-required="true"{/if} class="btn btn-primary{$captcha->getButtonClass($captchaForm)}">
                    {lang key='pwresetsubmit'}
                </button>
            </div>
        </form>
    </div>
{/if}

