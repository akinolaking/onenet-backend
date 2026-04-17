{if !$hostx_theme_settings.login_register_layout || $hostx_theme_settings.login_register_layout eq '0'}
    <div class="register_page default-hostx-login-register password-reset-process">
        <div class="left left-section-default-login-register">
            <div class="login-side-image">
                <div class="left-logo-image">
                    {if !empty($hostx_theme_settings.lg_pw_logo)}
                        <img src="{$hostx_theme_settings.lg_pw_logo}" alt="logo" height="{$hostx_theme_settings.lg_pw_logo_height}" width="{$hostx_theme_settings.lg_pw_logo_width}">
                    {else}
                        <img src="{$hostx_theme_settings.header_logo}" alt="logo" height="{$hostx_theme_settings.lg_pw_logo_height}" width="{$hostx_theme_settings.lg_pw_logo_width}">
                    {/if}
                </div>
            </div>
        </div>
        <div class="right right-section-default-login-register">
            {if $loggedin && $innerTemplate}
                <div class="reset-password-message">
                    {include file="$template/includes/alert.tpl" type="error" msg="{lang key='noPasswordResetWhenLoggedIn'}" textcenter=true}
                </div>
            {else}
                {if $successMessage}
                    <div class="reset-psw-uper-info">
                        <h6 class="psw-rest-title">{lang key='pwreset'}</h6>
                    </div>
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link" href="{$WEB_ROOT}/login.php">{$LANG.loginbutton}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{$WEB_ROOT}/register.php">{$LANG.register}</a>  
                        </li> 
                    </ul>
                    <div class="reset-password-message">
                        {include file="$template/includes/alert.tpl" type="success" msg=$successTitle textcenter=true}
                        <p>{$successMessage}</p>                       
                    </div>
                {else}
                    {if $errorMessage}
                        {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
                    {/if}
                    {if $innerTemplate}
                        {include file="$template/password-reset-$innerTemplate.tpl"}
                    {/if}
                {/if}
            {/if}
        </div>
    </div>
{elseif $hostx_theme_settings.login_register_layout eq '1'}
    <div class="latest-hostx-login-register-pg">
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
        <div class="login-latest-panel">
            {if $loggedin && $innerTemplate}
                <div class="reset-password-message">
                    {include file="$template/includes/alert.tpl" type="error" msg="{lang key='noPasswordResetWhenLoggedIn'}" textcenter=true}
                </div>
            {else}
                {if $successMessage}
                    <div class="reset-psw-uper-info">
                        <h6 class="psw-rest-title">{lang key='pwreset'}</h6>
                    </div>
                    <div class="reset-password-message">
                        {include file="$template/includes/alert.tpl" type="success" msg=$successTitle textcenter=true}
                        <p>{$successMessage}</p>                       
                    </div>
                {else}
                    {if $errorMessage}
                        {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
                    {/if}
                    {if $innerTemplate}
                        {include file="$template/password-reset-$innerTemplate.tpl"}
                    {/if}
                {/if}
            {/if}            
        </div>
    </div>
{/if}
