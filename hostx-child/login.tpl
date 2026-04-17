{if !$hostx_theme_settings.login_register_layout || $hostx_theme_settings.login_register_layout eq '0'}
    {include file="$template/hostx_others_file/default-hostx-login-register.tpl"}
{elseif $hostx_theme_settings.login_register_layout eq '1'}
    {include file="$template/hostx_others_file/latest-hostx-login-register.tpl"}
{/if}
