{if !$hostx_theme_settings.login_register_layout || $hostx_theme_settings.login_register_layout eq '0'}
    <div class="reset-psw-uper-info">
        <p class="psw-rest-desc">{lang key='pwresetsecurityquestionrequired'}</p>
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
        {if $errorMessage}
            <p class="alert alert-danger text-center">
                {$errorMessage}
            </p>
        {/if}
        <form method="post" action="{routePath('password-reset-security-verify')}"  class="form-stacked">
            <div class="form-group">
                <label for="inputAnswer">{$securityQuestion}</label>
                <input type="text" name="answer" class="form-control" id="inputAnswer" autofocus>
            </div>
            <div class="form-group text-center">
                <button type="submit" class="btn btn-primary">{lang key='pwresetsubmit'}</button>
            </div>
        </form>
    </div>
{elseif $hostx_theme_settings.login_register_layout eq '1'}
    <div class="reset-psw-uper-info">
        <p class="psw-rest-desc">{lang key='pwresetsecurityquestionrequired'}</p>
    </div>
    {if $errorMessage}
        <p class="alert alert-danger text-center">
            {$errorMessage}
        </p>
    {/if}
    <div class="latest-login-form">
        <form method="post" action="{routePath('password-reset-security-verify')}"  class="form-stacked">
            <div class="form-group">
                <input type="text" name="answer" class="form-control" id="inputAnswer" placeholder="{$securityQuestion}" autofocus>
            </div>
            <div class="form-group text-center">
                <button type="submit" class="btn btn-primary">{lang key='pwresetsubmit'}</button>
            </div>
        </form>        
    </div>
{/if}