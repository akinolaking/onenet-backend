{if !$hostx_theme_settings.login_register_layout || $hostx_theme_settings.login_register_layout eq '0'}
    <div class="reset-psw-uper-info">
        <h6 class="psw-rest-title change-reset-psw">{lang key='pwresetenternewpw'}</h6>
    </div>
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link" href="{$WEB_ROOT}/login.php">{$LANG.loginbutton}</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="{$WEB_ROOT}/register.php">{$LANG.register}</a>  
        </li> 
    </ul>
    <form class="using-password-strength" method="POST" action="{routePath('password-reset-change-perform')}">
        <input type="hidden" name="answer" id="answer" value="{$securityAnswer}" />
        <div id="newPassword1" class="form-group has-feedback">
            <label class="control-label" for="inputNewPassword1">{lang key='newpassword'}</label>
            <input type="password" name="newpw" id="inputNewPassword1" class="form-control" autocomplete="off" />
        </div>
        <div id="newPassword2" class="form-group has-feedback">
            <label class="control-label" for="inputNewPassword2">{lang key='confirmnewpassword'}</label>
            <input type="password" name="confirmpw" id="inputNewPassword2" class="form-control" autocomplete="off" />
            <div id="inputNewPassword2Msg"></div>
        </div>
        <div class="form-group psw-length-sec">
            <label class="control-label">{lang key='pwstrength'}</label>
           {include file="$template/includes/pwstrength.tpl" maximumPasswordLength=$maximumPasswordLength}
        </div>
        <div class="form-group">
            <div class="button-reset-change-psw">
                <input class="btn btn-primary" type="submit" name="submit" value="{lang key='clientareasavechanges'}" />
                <input class="btn btn-default" type="reset" value="{lang key='cancel'}" />
            </div>
        </div>
    </form>
{elseif $hostx_theme_settings.login_register_layout eq '1'}
    <div class="reset-psw-uper-info">
        <h6 class="psw-rest-title change-reset-psw-lts">{lang key='pwresetenternewpw'}</h6>
    </div>
    <form class="using-password-strength" method="POST" action="{routePath('password-reset-change-perform')}">
        <input type="hidden" name="answer" id="answer" value="{$securityAnswer}" />
        <div id="newPassword1" class="form-group has-feedback">
            <input type="password" name="newpw" id="inputNewPassword1" placeholder="{lang key='newpassword'}" class="form-control" autocomplete="off" />
        </div>
        <div id="newPassword2" class="form-group has-feedback">
            <input type="password" name="confirmpw" id="inputNewPassword2" placeholder="{lang key='confirmnewpassword'}" class="form-control" autocomplete="off" />
            <div id="inputNewPassword2Msg"></div>
        </div>
        <div class="form-group psw-length-sec">
            <label class="control-label">{lang key='pwstrength'}</label>
           {include file="$template/includes/pwstrength.tpl" maximumPasswordLength=$maximumPasswordLength}
        </div>
        <div class="form-group">
            <div class="button-reset-change-psw">
                <input class="btn btn-primary" type="submit" name="submit" value="{lang key='clientareasavechanges'}" />
                <input class="btn btn-default" type="reset" value="{lang key='cancel'}" />
            </div>
        </div>
    </form>
{/if}
