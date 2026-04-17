<link href="{assetPath file='store.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx_responsive.css'}" rel="stylesheet">
{if $LANG.locale == 'ar_AR' || $LANG.locale == 'fa_IR' || $LANG.locale == 'he_IL'}
    <link href="{assetPath file='store_rtl_hostx.css'}" rel="stylesheet">
{/if}
<div class="landing-page bg-white ssl">
    <div class="hero ssl-banner">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-left">
                    <h1>{lang key="store.ssl.dv.title"}</h1>
                    <h3>{lang key="store.ssl.dv.tagline"}</h3>
                    <a href="#" class="button-style hx-primary-btn">learn more</a>
                </div>
                <div class="col-md-6">
                    <div class="hero-right-img">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/symantec/{$layoutStyle}/hero-img-ssl.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
    {include file="$template/store/ssl/shared/nav.tpl" current="dv"}

    <div class="content-block standout standard-dv">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <h2>{lang key="store.ssl.dv.descriptionTitle"}</h2>
                    <div class="text-center d-block d-sm-none">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/symantec/{$layoutStyle}/ssl.png">
                        <br><br>
                    </div>

                    {lang key="store.ssl.dv.descriptionContent"}

                    <br>
                    <h6>{lang key="store.ssl.useCases.title"}</h6>
                    <div class="row ideal-for dv">
                        <div class="col-sm-4">
                            <div class="ideal-for-col">
                                <i class="fas fa-comment-alt-lines"></i>
                                <h4>{lang key="store.ssl.useCases.blogs"}</h4>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="ideal-for-col">
                                <i class="fas fa-file-alt"></i>
                                <h4>{lang key="store.ssl.useCases.infoPages"}</h4>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="ideal-for-col">
                                <i class="fas fa-server"></i>
                                <h4>{lang key="store.ssl.useCases.serverComms"}</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 standard-dv-right">
                   <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/symantec/{$layoutStyle}/standard-dv-img.png">
                </div>
            </div>
        </div>
    </div>

    {include file="$template/store/ssl/shared/certificate-pricing.tpl" type="dv"}

    {include file="$template/store/ssl/shared/features.tpl" type="dv"}

    {include file="$template/store/ssl/shared/logos.tpl"}

</div>
