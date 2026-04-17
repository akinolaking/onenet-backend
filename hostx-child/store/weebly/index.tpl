<link href="{assetPath file='store.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx_responsive.css'}" rel="stylesheet">

<div class="landing-page bg-white weebly">

    <div class="hero sitebuilder-banner p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-left">
                    <h1>{lang key="store.websiteBuilder.headline"}</h1>
                    <p>{lang key="store.websiteBuilder.tagline"}</p>
                    <a href="#" class="button-style hx-primary-btn">learn more</a>
                </div>
                <div class="col-md-6">
                    <div class="hero-right-img">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/weebly/{$layoutStyle}/weebly-banner.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
   <!--  <div class="hero">
        <div class="container">
            <div class="logo-container">
                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/weebly/{$layoutStyle}/logo.png">
            </div>
            <h2>{lang key="store.websiteBuilder.headline"}</h2>
            <h3>{lang key="store.websiteBuilder.tagline"}</h3>
        </div>
    </div> -->

    <nav class="navbar navbar-light bg-light navbar-expand-lg p-0">
      <div class="container">
        <span class="navbar-brand"></span>
        <button type="button" class="navbar-toggler collapsed" data-toggle="collapse" data-target="#nav-landing-page" aria-expanded="false">
          <span class="sr-only">{lang key="toggleNav"}</span>
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="nav-landing-page">
          <ul class="nav navbar-nav">
            <li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#overview');return false">{lang key="store.websiteBuilder.tab.overview"}</a></li>
            <li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#features');return false">{lang key="store.websiteBuilder.tab.features"}</a></li>
            <li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#pricing');return false">{lang key="store.websiteBuilder.tab.pricing"}</a></li>
            <li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#faq');return false">{lang key="store.websiteBuilder.tab.faq"}</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="content-block image-standout p-vertical" id="overview">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/weebly/{$layoutStyle}/dragdropeditor.png">
                </div>
                <div class="col-sm-6">
                    <h3>{lang key="store.websiteBuilder.ddEditor"}</h3>
                    <p>{lang key="store.websiteBuilder.introduction"}</p>
                    <p>{lang key="store.websiteBuilder.ddEditorDescription"}</p>
                </div>
            </div>
        </div>
    </div>

    <div class="content-block features p-vertical" id="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="feature">
                    <div class="icon"><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/weebly/{$layoutStyle}/builder.png"></div>
                    <h6>{lang key="store.websiteBuilder.features.builder"}</h6>
                    <p>{lang key="store.websiteBuilder.features.builderDescription"}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="feature">
                    <div class="icon"><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/weebly/{$layoutStyle}/ecommerce.png"></div>
                    <h6>{lang key="store.websiteBuilder.features.ecommerce"}</h6>
                    <p>{lang key="store.websiteBuilder.features.ecommerceDescription"}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="feature">
                    <div class="icon"><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/weebly/{$layoutStyle}/forms.png"></div>
                    <h6>{lang key="store.websiteBuilder.features.forms"}</h6>
                    <p>{lang key="store.websiteBuilder.features.formsDescription"}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="feature">
                    <div class="icon"><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/weebly/{$layoutStyle}/templates.png"></div>
                    <h6>{lang key="store.websiteBuilder.features.templates"}</h6>
                    <p>{lang key="store.websiteBuilder.features.templatesDescription"}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="feature">
                    <div class="icon"><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/weebly/{$layoutStyle}/gallery.png"></div>
                    <h6>{lang key="store.websiteBuilder.features.gallery"}</h6>
                    <p>{lang key="store.websiteBuilder.features.galleryDescription"}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="feature">
                    <div class="icon"><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/weebly/{$layoutStyle}/blogging.png"></div>
                    <h6>{lang key="store.websiteBuilder.features.blogging"}</h6>
                    <p>{lang key="store.websiteBuilder.features.bloggingDescription"}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="feature">
                    <div class="icon"><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/weebly/{$layoutStyle}/video.png"></div>
                    <h6>{lang key="store.websiteBuilder.features.video"}</h6>
                    <p>{lang key="store.websiteBuilder.features.videoDescription"}</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="feature">
                    <div class="icon"><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/weebly/{$layoutStyle}/seo.png"></div>
                    <h6>{lang key="store.websiteBuilder.features.seo"}</h6>
                    <p>{lang key="store.websiteBuilder.features.seoDescription"}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="content-block pricing p-vertical" id="pricing">
        <div class="container">

            <div class="row weebly-price">
                <div class="col-md-9">
                    <div class="btn-group" role="group">
                        {foreach $billingCycles as $cycle}
                            <button type="button" class="btn btn-default cycle-change{if $cycle@first} active{/if}" data-cycle="{$cycle}">
                                {lang key={'orderpaymentterm'|cat:$cycle}}
                            </button>
                        {/foreach}
                    </div>
                    <br><br>
                </div>
                {if !$loggedin && $currencies}
                    <div class="col-md-3">
                        <form method="post" action="">
                            <select name="currency" class="form-control currency-selector" onchange="submit()">
                                <option>{lang key="changeCurrency"} ({$activeCurrency.prefix} {$activeCurrency.code})</option>
                                {foreach $currencies as $currency}
                                    <option value="{$currency['id']}">{$currency['prefix']} {$currency['code']}</option>
                                {/foreach}
                            </select>
                        </form>
                    </div>
                {/if}
            </div>

            {if $litePlan}
                <div class="weebly-lite-plan">
                    <div class="weebly-lite-inner">
                        <div class="weebly-price-left">
                            <h4>{lang key="store.websiteBuilder.pricing.free.headline"}</h4>
                            <h5>{lang key="store.websiteBuilder.pricing.free.tagline"}</h5>
                            <p>{$litePlan->description}</p>
                        </div>
                         <div class="pricing">
                            {foreach $litePlan->pricing()->allAvailableCycles() as $pricing}
                                <h4 class="pricing-text {$pricing->cycle()}{if !$pricing@first} w-hidden{/if}">
                                    {$pricing->toFullString()}
                                </h4>
                            {foreachelse}
                                {if $inPreview}
                                    -
                                {/if}
                            {/foreach}
                            <h4 class="pricing-text not-available w-hidden">-</h4>
                            <form method="post" action="{routePath('cart-order')}">
                            <input type="hidden" name="pid" value="{$litePlan->id}">
                            <input type="hidden" name="billingcycle" value="">
                            <button type="submit" class="btn btn-default btn-signup hx-primary-btn button-style">
                                {lang key='getStartedNow'}
                            </button>
                        </form>
                        </div>
                    </div>
                </div>
            {/if}

            <div class="row weebly-plans">
                {if count($products) > 0}
                    {foreach $products as $key => $product}
                        <div class="{if count($products) == 1}col-sm-8 offset-sm-2 col-md-6 offset-md-3 col-lg-4 offset-lg-4{elseif count($products) == 2}col-sm-6{if $key == 0} offset-sm-1{/if}{elseif count($products) == 3}col-md-4{else}col-sm-3{/if}">
                            <div class="pricing-item">
                                <div class="pricing-item-inner">
                                <div class="header">
                                    <h4>{$product->name}</h4>
                                    <h5>{lang key="store.websiteBuilder.pricing.idealFor" for=$product->idealFor}</h5>
                                </div>
                                <div class="price">
                                    {foreach $product->pricing()->allAvailableCycles() as $pricing}
                                        <span class="pricing-text {$pricing->cycle()}{if !$pricing@first} w-hidden{/if}">
                                            {$pricing->toFullString()}
                                        </span>
                                    {foreachelse}
                                        {if $inPreview}
                                            -
                                        {/if}
                                    {/foreach}
                                    <span class="pricing-text not-available w-hidden">
                                        -
                                    </span>
                                </div>
                                <div class="feature-heading border-heading">{lang key="store.websiteBuilder.pricing.siteFeatures"}</div>
                                <ul class="site-features">
                                    {foreach $product->siteFeatures as $langKey => $feature}
                                        <li>
                                            {lang key="store.websiteBuilder.pricing.features.$langKey"}
                                        </li>
                                    {/foreach}
                                </ul>
                                <div class="feature-heading">{lang key="store.websiteBuilder.pricing.eCommerceFeatures"}</div>
                                <ul class="ecommerce-features">
                                    {foreach $product->ecommerceFeatures as $langKey => $feature}
                                        <li>
                                            {lang key="store.websiteBuilder.pricing.features.$langKey"}
                                        </li>
                                    {/foreach}
                                </ul>
                            </div>
                                 <form method="post" action="{routePath('cart-order')}">
                                <input type="hidden" name="pid" value="{$product->id}">
                                <input type="hidden" name="billingcycle" value="">
                                <button type="submit" class="btn btn-primary btn-block btn-signup button-style hx-primary-btn">{lang key="signup"}</button>
                            </form>
                            </div>
                           
                        </div>
                    {/foreach}
                {elseif $inPreview}
                    <div class="col-12 lead text-center">
                        {lang key="store.websiteBuilder.adminPreview"}
                    </div>
                {/if}
            </div>

        </div>
    </div>

    <div class="content-block commom-faq p-vertical" id="faq">
        <div class="container">
            <h2 class="text-center">{lang key="store.websiteBuilder.faq.title"}</h2>
            <div class="row-custom accordion" id="accordion_weebly">
                {foreach [[1,2,3], [4,5,6], [7,8]] as $columns}
                    {foreach $columns as $row}
                        <div class="card">
                          <div class="card-header" onclick="wgsAccordianStyleList(this,'accordion_weebly','websiteBuilder{$row}');">
                            <a class="card-link" data-toggle="collapse">
                              {lang key="store.websiteBuilder.faq.q$row"}
                              <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                            </a>
                          </div>
                          <div id="websiteBuilder{$row}" class="collapse">
                            <div class="card-body">
                                {lang key="store.websiteBuilder.faq.a$row"}
                            </div>
                          </div>
                        </div>                   
                    {/foreach}
                {/foreach}
            </div>
        </div>
    </div>

    <div class="content-block trusted-by p-vertical">
        <div class="container">
                <div class="trusted-by-inner">
                    <h3>{lang key="store.websiteBuilder.trust"}</h3>
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/weebly/logo.png">
                    
                </div>
           
        </div>
    </div>

</div>

<script>
    jQuery(document).ready(function(){
        jQuery('.landing-page.weebly .cycle-change').on('click', function() {
            var newCycle = jQuery(this).data('cycle');
            jQuery('.row.weebly-plans .pricing-text').hide();
            jQuery('.landing-page.weebly .' + newCycle).show();
            jQuery('.landing-page.weebly .cycle-change').removeClass('active');
            jQuery(this).addClass('active');
            jQuery('.landing-page.weebly .pricing input[name="billingcycle"]').val(newCycle);
            jQuery('.weebly-plans div.pricing-item').each(function(index) {
                if (jQuery(this).find('.' + newCycle).length <= 0) {
                    jQuery(this).find('span.not-available').show();
                    jQuery(this).parent('div').find('.btn-signup').prop('disabled', true);
                    jQuery(this).fadeTo('slow', 0.5);
                } else {
                    jQuery(this).find('span.not-available').hide();
                    jQuery(this).parent('div').find('.btn-signup').prop('disabled', false);
                    jQuery(this).fadeTo('slow', 1);
                }
            });
        });

        var startCycle = jQuery('.btn.cycle-change.active').data('cycle');
        jQuery('.landing-page.weebly .pricing input[name="billingcycle"]').val(startCycle);
    });
</script>
