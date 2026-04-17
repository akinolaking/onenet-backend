{if in_array('state', $optionalFields)}
<script>
    var statesTab = 10,
        stateNotRequired = true;
</script>
{/if}
<script src="{$BASE_PATH_JS}/StatesDropdown.js"></script>
<script src="{$BASE_PATH_JS}/PasswordStrength.js"></script>
<script>
window.langPasswordStrength = "{lang key='pwstrength'}";
window.langPasswordWeak = "{lang key='pwstrengthweak'}";
window.langPasswordModerate = "{lang key='pwstrengthmoderate'}";
window.langPasswordStrong = "{lang key='pwstrengthstrong'}";
jQuery(document).ready(function() {
    jQuery("#inputNewPassword1").keyup(registerFormPasswordStrengthFeedback);
});
</script>
{if !$hostx_theme_settings.login_register_layout || $hostx_theme_settings.login_register_layout eq '0'}
    {include file="$template/hostx_others_file/default-hostx-login-register.tpl"}
{elseif $hostx_theme_settings.login_register_layout eq '1'}
    {include file="$template/hostx_others_file/latest-hostx-login-register.tpl"}
{/if}
