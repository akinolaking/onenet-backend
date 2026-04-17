<link href="{assetPath file='store.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx_responsive.css'}" rel="stylesheet">
{if $LANG.locale == 'ar_AR' || $LANG.locale == 'fa_IR' || $LANG.locale == 'he_IL'}
    <link href="{assetPath file='store_rtl_hostx.css'}" rel="stylesheet">
{/if}
<div class="landing-page sitebuilder">

    <!-- <div class="container">
        <div class="logo-container">
            <img src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/header-img.png">
        </div>
    </div> -->

    <div class="hero sitebuilder-banner p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-left">
                    <h1>Build a professional website. Fast!</h1>
                    <p>Build a professional website. Fast!</p>
                    <a href="#" class="button-style hx-primary-btn">learn more</a>
                </div>
                <div class="col-md-6">
                    <div class="hero-right-img">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/site-builder-banner.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <div class="hero">
        <div class="container">
            <img src="{$WEB_ROOT}/assets/img/marketconnect/sitebuilder/sitebuilder-hero.png">
        </div>
    </div> -->

    <div class="intro p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/journey-builder.png" class="d-lg-block">
                </div>
                <div class="col-lg-6 ">
                    <h2>{lang key="store.siteBuilder.introHeadline"}</h2>
                    <p>{lang key="store.siteBuilder.intro1"}</p>
                    <p>{lang key="store.siteBuilder.intro2"}</p>
                    <p>
                        <a href="#" class="learn-more button-style hx-primary-btn" onclick="smoothScroll('#features');return false">
                            {lang key="learnmore"}
                            <!-- <i class="fas fa-chevron-down"></i> -->
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>

    <div class="features new-feature p-vertical" id="features">
        <div class="container">
            <h2>{lang key="store.siteBuilder.featuresTitle"}</h2>
            <p class="tagline">{lang key="store.siteBuilder.features.essentials.tagline"}</p>
            <ul class="nav nav-tabs justify-content-center" role="tablist">
                <li class="nav-item"><a href="#essentials" class="nav-link active" aria-controls="essentials" role="tab" data-toggle="tab">{lang key="store.siteBuilder.featuresEssentials"}</a></li>
                <li class="nav-item"><a href="#social" class="nav-link" aria-controls="social" role="tab" data-toggle="tab">{lang key="store.siteBuilder.featuresSocial"}</a></li>
                <li class="nav-item"><a href="#store" class="nav-link" aria-controls="store" role="tab" data-toggle="tab">{lang key="store.siteBuilder.featuresStore"}</a></li>
            </ul>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade show active" id="essentials">
                    
                    <div class="row">
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/icon-01.png">
                                <span class="title">{lang key="store.siteBuilder.features.essentials.1"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.essentials.1"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/icon-02.png">
                                <span class="title">{lang key="store.siteBuilder.features.essentials.2"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.essentials.2"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/icon-03.png">
                                <span class="title">{lang key="store.siteBuilder.features.essentials.3"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.essentials.3"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/icon-04.png">
                                <span class="title">{lang key="store.siteBuilder.features.essentials.4"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.essentials.4"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/icon-05.png">
                                <span class="title">{lang key="store.siteBuilder.features.essentials.5"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.essentials.5"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/icon-06.png">
                                <span class="title">{lang key="store.siteBuilder.features.essentials.6"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.essentials.6"}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="social">
                    <p class="tagline">{lang key="store.siteBuilder.features.blog.tagline"}</p>
                    <div class="row">
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/social-icon1.png">
                                <span class="title">{lang key="store.siteBuilder.features.blog.1"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.blog.1"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="social-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/social-icon2.png">
                                <span class="title">{lang key="store.siteBuilder.features.blog.2"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.blog.2"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/social-icon3.png">
                                <span class="title">{lang key="store.siteBuilder.features.blog.3"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.blog.3"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/social-icon4.png">
                                <span class="title">{lang key="store.siteBuilder.features.blog.4"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.blog.4"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/social-icon5.png">
                                <span class="title">{lang key="store.siteBuilder.features.blog.5"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.blog.5"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/social-icon6.png">
                                <span class="title">{lang key="store.siteBuilder.features.blog.6"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.blog.6"}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="store">
                    <p class="tagline">{lang key="store.siteBuilder.features.store.tagline"}</p>
                    <div class="row">
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/online-icon1.png">
                                <span class="title">{lang key="store.siteBuilder.features.store.1"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.store.1"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/online-icon2.png">
                                <span class="title">{lang key="store.siteBuilder.features.store.2"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.store.2"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/online-icon3.png">
                                <span class="title">{lang key="store.siteBuilder.features.store.3"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.store.3"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/online-icon4.png">
                                <span class="title">{lang key="store.siteBuilder.features.store.5"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.store.5"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/online-icon5.png">
                                <span class="title">{lang key="store.siteBuilder.features.store.6"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.store.6"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/online-icon6.png">
                                <span class="title">{lang key="store.siteBuilder.features.store.7"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.store.7"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/online-icon7.png">
                                <span class="title">{lang key="store.siteBuilder.features.store.8"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.store.8"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/online-icon8.png">
                                <span class="title">{lang key="store.siteBuilder.features.store.9"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.store.9"}</p>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-4">
                            <div class="feature-block">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/online-icon9.png">
                                <span class="title">{lang key="store.siteBuilder.features.store.10"}</span>
                                <p>{lang key="store.siteBuilder.featuresdescriptions.store.10"}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center">
                <a href="#" class="btn btn-primary button-style hx-primary-btn large" onclick="smoothScroll('#pricing');return false">
                    {lang key="store.siteBuilder.viewPricing"}
                </a>
            </div>
        </div>
    </div>

    <div class="business-sec p-vertical">
        <div class="container">
            <div class="templates">
                <h2>{lang key="store.siteBuilder.templatesTitle"}</h2>
                <br>
                <ul class="nav nav-tabs justify-content-center" role="tablist">
                    <li class="nav-item">
                        <a href="#" class="nav-link templates-filter-btn" data-type="single">{lang key="store.siteBuilder.templates.singlePage"}</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link templates-filter-btn" data-type="multi">{lang key="store.siteBuilder.templates.multiPage"}</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link templates-filter-btn" data-type="ecom">{lang key="store.siteBuilder.templates.eCommerce"}</a>
                    </li>
                </ul>
                <div class="previews">
                    <div class="row">
                        {foreach $templates as $i => $template}
                            {if $i == 11}
                                <div class="col-md-6 col-lg-4 show-more">
                                    <a href="#">
                                        <div>
                                            <span class="icon-wrapper">
                                                <i class="fas fa-plus"></i>
                                            </span>
                                        </div>
                                        <span class="tplname">{lang key="viewMore"}</span>
                                    </a>
                                </div>
                            {else}
                                <div class="col-md-6 col-lg-4 type-{$template['type']}{if $i > 11} d-none{/if}">
                                    <a href="{$template['preview']}" target="_blank">
                                        <div class="thumb-wrapper">
                                            <img {if $i < 11}src{else}data-src{/if}="{$template['thumbnail']}" class="deferred">
                                            <span class="type-label">{lang key="store.siteBuilder.templates.typeLabels.{$template['type']}"}</span>
                                        </div>
                                        <span class="tplname">{$template['name']}</span>
                                    </a>
                                </div>
                            {/if}
                        {/foreach}
                    </div>
                </div>
                <p class="tagline">{lang key="store.siteBuilder.templatesOutro"}</p>
            </div>
        </div>
    </div>
    <div class="pricing" id="pricing">
        <div class="container">
            {if $trialPlan}
                <h2>{lang key="store.siteBuilder.tryFree"}</h2>
                <p class="text-center">
                    {lang key="store.siteBuilder.tryFreeIntro"}
                    <br class="hidden-xs">
                    {lang key="store.siteBuilder.tryFreeIntro2"}
                </p>
                
            {else}
                <h2>{lang key="store.siteBuilder.pricingTitle"}</h2>
            {/if}
            <div class="pricing-table">
                <div class="pricing-table-row col-heading">
                    <div class="col-primary">{lang key="store.siteBuilder.featuresLabelTitle"}</div>
                    {foreach $plans as $plan}
                        <div class="col-plans-{count($plans)}">{$plan->name}</div>
                    {/foreach}
                </div>
                {foreach $promoHelper->getFeatures() as $featureKey => $feature}
                    <div class="pricing-table-row">
                        <div class="col-primary">{lang key="store.siteBuilder.featuresLabels.$featureKey"}</div>
                        {foreach $plans as $plan}
                            <div class="col-plans-{count($plans)}">
                                {if isset($plan->features[$feature])}
                                    {if is_bool($plan->features[$feature])}
                                        {if $plan->features[$feature]}
                                            <i class="fas fa-check"></i>
                                        {else}
                                            <i class="fas fa-times"></i>
                                        {/if}
                                    {else}
                                        {$plan->features[$feature]}
                                    {/if}
                                {else}
                                    <i class="fas fa-check"></i>
                                {/if}
                            </div>
                        {/foreach}
                    </div>
                {/foreach}
                <div class="pricing-table-row price-bottom">
                    <div class="col-primary"></div>
                    {foreach $plans as $plan}
                        <div class="col-plans-{count($plans)}">
                            {if $inPreview && !$plan->pricing()->first()}
                                -
                            {else}
                                {$plan->pricing()->first()->price()}
                            {/if}
                        </div>
                    {/foreach}
                </div>
                <div class="pricing-table-row ">
                    <div class="col-primary"></div>
                    {foreach $plans as $plan}
                        <div class="col-plans-{count($plans)}">
                            <form action="{routePath('cart-order')}" method="post">
                                <input type="hidden" name="pid" value="{$plan->id}">
                                <button type="submit" class="btn btn-primary button-style hx-primary-btn">
                                    {lang key='buy'}
                                </button>
                            </form>
                        </div>
                    {/foreach}
                </div>
            </div>
            <div class="text-center">
                    <form method="post" action="{routePath('cart-order')}">
                        <input type="hidden" name="pid" value="{$trialPlan->id}">
                        <input type="hidden" name="billingcycle" value="">
                        <button type="submit" class="btn btn-primary large button-style- hx-primary-btn">
                            {lang key='store.siteBuilder.tryFreeCta'}
                        </button>
                    </form>
                </div>
        </div>
    </div>

    <div class="faq">
        <div class="container">
            <h2>{lang key="store.siteBuilder.compareTitle"}</h2>
            <br>
            <div class="row">
                <div class="col-md-6">
                    <div class="faq-block"> 
                        <div class="faq-img">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/faq-1.png"> 
                        </div>
                        <div class="faq-content-sec">
                            <span class="faq-title">{lang key="store.siteBuilder.compare1"}</span>
                            <p>{lang key="store.siteBuilder.compare1desc"}</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="faq-block">
                        <div class="faq-img">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/faq-2.png"> 
                        </div>
                        <div class="faq-content-sec">
                            <span class="faq-title">{lang key="store.siteBuilder.compare2"}</span>
                            <p>{lang key="store.siteBuilder.compare2desc"}</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="faq-block">
                        <div class="faq-img">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/faq-3.png"> 
                        </div>
                        <div class="faq-content-sec">
                            <span class="faq-title">{lang key="store.siteBuilder.compare3"}</span>
                            <p>{lang key="store.siteBuilder.compare3desc"}</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="faq-block">
                        <div class="faq-img">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/faq-4.png"> 
                        </div>
                        <div class="faq-content-sec">
                            <span class="faq-title">{lang key="store.siteBuilder.compare4"}</span>
                            <p>{lang key="store.siteBuilder.compare4desc"}</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="faq-block">
                        <div class="faq-img">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/sitebuilder/{$layoutStyle}/faq-5.png"> 
                        </div>
                        <div class="faq-content-sec">
                            <span class="faq-title">{lang key="store.siteBuilder.compare5"}</span>
                            <p>{lang key="store.siteBuilder.compare5desc"}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    var baseRef = '.landing-page.sitebuilder .templates';
    function showAllTemplates() {
        jQuery(baseRef + ' .previews .show-more').remove();
        jQuery(baseRef + ' .previews .d-none').hide().removeClass('d-none').fadeIn();
        jQuery(baseRef + ' .previews img.deferred').each(function() {
            jQuery(this).attr('src', jQuery(this).data('src'));
        }).removeClass('deferred');
    }
    jQuery(document).ready(function() {
        jQuery(baseRef + ' .templates-filter-btn').click(function(e) {
            e.preventDefault();
            jQuery(baseRef + ' .templates-filter-btn').removeClass('active');
            jQuery(this).addClass('active');
            showAllTemplates();
            jQuery(baseRef + ' .previews .type-single,' + baseRef + ' .previews .type-multi,' + baseRef + ' .previews .type-ecom').hide();
            jQuery(baseRef + ' .previews .type-' + jQuery(this).data('type')).show();
        });
        jQuery(baseRef + ' .previews .show-more a').click(function(e) {
            e.preventDefault();
            showAllTemplates();
        });
    });
</script>
