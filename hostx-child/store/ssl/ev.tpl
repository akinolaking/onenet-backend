<link href="{assetPath file='store.css'}" rel="stylesheet">
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
				<h1>{lang key="store.ssl.ev.title"}</h1>
				<h3>{lang key="store.ssl.ev.tagline"}</h3>
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
    {include file="$template/store/ssl/shared/nav.tpl" current="ev"}

	 <div class="content-block standout standard-ov">
        <div class="container">
			<div class="row">
                <div class="col-md-8">
					<h2>{lang key="store.ssl.ev.descriptionTitle"}</h2>
					
					<div class="text-center d-block d-sm-none">
						<img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/ssl-subs.png">
						<br><br>
					</div>

					{lang key="store.ssl.ov.descriptionContent"}

				<h6  class="mt-3">{lang key="store.ssl.useCases.title"}</h6>
					<div class="row ideal-for ov">
						<div class="col-sm-4">
							<div class="ideal-for-col">
								<i class="fas fa-globe-americas"></i>
								<h4>{lang key="store.ssl.useCases.criticalDomains"}</h4>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="ideal-for-col">
								<i class="fas fa-shopping-cart"></i>
								<h4>{lang key="store.ssl.useCases.ecommerce"}</h4>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="ideal-for-col">
								<i class="fas fa-user-plus"></i>
								<h4>{lang key="store.ssl.useCases.signupPages"}</h4>
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
	
    {include file="$template/store/ssl/shared/certificate-pricing.tpl" type="ev"}

    <div class="content-block dashed-border standout">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5 order-2">
                    <br>
                    <h4>{lang key="store.ssl.ev.orgInfo"}</h4>
                    <p>{lang key="store.ssl.ev.orgInfoDescription"}</p>
                </div>
                <div class="col-lg-6 col-md-7 order-1">
                    <img src="{$WEB_ROOT}/assets/img/marketconnect/symantec/cert-details-ev.png">
                </div>
            </div>
        </div>
    </div>

    {include file="$template/store/ssl/shared/features.tpl" type="ev"}

    {include file="$template/store/ssl/shared/logos.tpl"}

</div>
