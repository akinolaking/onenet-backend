<!--[if lt IE 9]>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
<![endif]-->

<link type="text/css" rel="stylesheet" href="{$BASE_PATH_CSS}/ion.rangeSlider.css" property="stylesheet" />
<link type="text/css" rel="stylesheet" href="{$BASE_PATH_CSS}/ion.rangeSlider.skinHTML5.css" property="stylesheet" />
<link href="{assetPath file='store.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx_responsive.css'}" rel="stylesheet">
{if $LANG.locale == 'ar_AR' || $LANG.locale == 'fa_IR' || $LANG.locale == 'he_IL'}
    <link href="{assetPath file='store_rtl_hostx.css'}" rel="stylesheet">
{/if}

<div class="landing-page bg-white codeguard">
    <div class="hero sitebuilder-banner codeguard-banner p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-left">
                    <h1>{lang key="store.codeGuard.headline"}</h1>
                    <p>{lang key="store.codeGuard.tagline"}</p>
                    <a href="#" class="button-style hx-primary-btn">learn more</a>
                </div>
                <div class="col-md-6">
                    <div class="hero-right-img">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/codeguard-banner.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <div class="hero">
        <div class="container">
            <div class="logo-container">
                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/logo.png">
            </div>
            <h2 class="strong-green">{lang key="store.codeGuard.headline"}</h2>
            <h3>{lang key="store.codeGuard.tagline"}</h3>
        </div>
    </div>
 -->
    <nav class="navbar navbar-light bg-light navbar-expand-lg p-0">
        <div class="container">
            <span class="navbar-brand"></span>
            <button type="button" class="navbar-toggler collapsed" data-toggle="collapse" data-target="#nav-landing-page" aria-expanded="false">
                <span class="sr-only">{lang key="toggleNav"}</span>
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="nav-landing-page">
                <ul class="nav navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#overview');return false">{lang key="store.codeGuard.tab.overview"}</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#pricing');return false">{lang key="store.codeGuard.tab.pricing"}</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#features');return false">{lang key="store.codeGuard.tab.features"}</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#faq');return false">{lang key="store.codeGuard.tab.faq"}</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="content-block image-standout" id="overview">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/hero-image-a.png">
                </div>
                <div class="col-md-6">
                    <h2 class="strong-green">{lang key="store.codeGuard.leadTitle"}</h2>
                    <p>{lang key="store.codeGuard.leadText1"}</p>
                    <p>{lang key="store.codeGuard.leadText2"}</p>
                </div>
            </div>
        </div>
    </div>

    <div class="content-block overview-features clearfix">
        <div class="container">
            <ul>
                <li>
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/backup-icon.png">
                    <span>{lang key="store.codeGuard.dailyBackup"}</span>
                </li>
                <li>
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/client-icon.png">
                    <span>{lang key="store.codeGuard.timeMachine"}</span>
                </li>
                <li>
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/wp-icon.png">
                    <span>{lang key="store.codeGuard.wpPlugin"}</span>
                </li>
                <li>
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/alert-icon.png">
                    <span>{lang key="store.codeGuard.changeAlerts"}</span>
                </li>
                <li>
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/malware-icon.png">
                    <span>{lang key="store.codeGuard.malwareProtection"}</span>
                </li>
            </ul>
        </div>
    </div>

    <div class="content-block pricing p-vertical price-backup" id="pricing">
        <div class="container">
            <div class="row">
                {if count($products) > 0}
                   <!--  <div class="col-md-3 d-none d-md-block text-center">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/pick-backup.png">
                    </div> -->
                    <div class="col-md-12">
                        {if !$loggedin && $currencies}
                            <form method="post" action="{routePath('store-product-group', $routePathSlug)}" class="float-right">
                                <select name="currency" class="form-control currency-selector" onchange="submit()">
                                    <option>{lang key="changeCurrency"} ({$activeCurrency.prefix} {$activeCurrency.code})</option>
                                    {foreach $currencies as $currency}
                                        <option value="{$currency['id']}">{$currency['prefix']} {$currency['code']}</option>
                                    {/foreach}
                                </select>
                            </form>
                        {/if}
                        <h2>{lang key='store.codeGuard.chooseBackupPlan'}</h2>
                        <div class="price-calc-container">
                            <div class="price-calc-top">
                                <input type="hidden" id="codeGuardPlanSelector" name="codeguardplan" value="" />
                            </div>
                            <div class="pricing-main-sec">
                                <div class="pricing-container">
                                    <div id="pricingAmount" class="price">--</div>
                                    <div id="pricingCycle"></div>
                                </div>
                                <form action="{routePath('cart-order')}" method="post" class="backup-right">
                                    <input id="selectedProductId" type="hidden" name="pid" value="">
                                    <button type="submit" class="btn btn-default order-btn button-style hx-primary-btn" id="product-order-button">
                                        {lang key='ordernowbutton'}
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                {elseif $inPreview}
                    <div class="col-12 lead text-center">
                        {lang key="store.codeGuard.adminPreview"}
                    </div>
                {/if}
            </div>
        </div>
    </div>

    <div class="content-block features codegurd-feature p-vertical" id="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="feature">
                        <div class="icon">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/backup-feature1.png">
                        </div>
                        <div class="feature-text-sec">
                            <h6>{lang key="store.codeGuard.features.dailyBackup"}</h6>
                            <p>{lang key="store.codeGuard.features.dailyBackupDescription"}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="feature">
                        <div class="icon">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/backup-feature2.png">
                        </div>
                        <div class="feature-text-sec">
                            <h6>{lang key="store.codeGuard.features.unlimitedFiles"}</h6>
                            <p>{lang key="store.codeGuard.features.unlimitedFilesDescription"}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="feature">
                        <div class="icon">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/backup-feature3.png">
                        </div>
                        <div class="feature-text-sec">
                            <h6>{lang key="store.codeGuard.features.oneClickRestore"}</h6>
                            <p>{lang key="store.codeGuard.features.oneClickRestoreDescription"}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="feature">
                        <div class="icon">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/backup-feature4.png">
                        </div>
                        <div class="feature-text-sec">
                            <h6>{lang key="store.codeGuard.features.malwareMonitoring"}</h6>
                            <p>{lang key="store.codeGuard.features.malwareMonitoringDescription"}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="feature">
                        <div class="icon">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/backup-feature5.png">
                        </div>
                        <div class="feature-text-sec">
                            <h6>{lang key="store.codeGuard.features.wp"}</h6>
                            <p>{lang key="store.codeGuard.features.wpDescription"}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="feature">
                        <div class="icon">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/backup-feature6.png">
                        </div>
                        <div class="feature-text-sec">
                            <h6>{lang key="store.codeGuard.features.fileMonitoring"}</h6>
                            <p>{lang key="store.codeGuard.features.fileMonitoringDescription"}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="feature">
                        <div class="icon">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/backup-feature7.png">
                        </div>
                        <div class="feature-text-sec">
                            <h6>{lang key="store.codeGuard.features.servers"}</h6>
                            <p>{lang key="store.codeGuard.features.serversDescription"}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="feature">
                        <div class="icon">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/backup-feature8.png">
                        </div>
                        <div class="feature-text-sec">
                            <h6>{lang key="store.codeGuard.features.email"}</h6>
                            <p>{lang key="store.codeGuard.features.emailDescription"}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="feature">
                        <div class="icon">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/backup-feature9.png">
                        </div>
                        <div class="feature-text-sec">
                            <h6>{lang key="store.codeGuard.features.api"}</h6>
                            <p>{lang key="store.codeGuard.features.apiDescription"}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="content-block faqs commom-faq p-vertical" id="faq">
        <div class="container">
            <h2 class="text-center">{lang key="store.codeGuard.faq.title"}</h2>
            <div class="row-custom accordion codegaurd-accordian" id="codegaurd-accordian-faq">
                {foreach $codeGuardFaqs as $num => $faq}
                    <div class="card">
                        <div class="card-header" onclick="wgsAccordianStyleList(this,'codegaurd-accordian-faq','codegaurd_faq{$num}');">
                            <a class="card-link" data-toggle="collapse">{$faq['question']}
                                <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                            </a>
                        </div>
                        <div id="codegaurd_faq{$num}" class="collapse">
                            <div class="card-body">
                                {$faq['answer']}
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>

   <!--  <div class="content-block">
        <div class="container">
            <div class="text-center">
                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/codeguard/{$layoutStyle}/logo.png">
            </div>
        </div>
    </div> -->

</div>

<!-- RangeSlider JS -->
<script src="{$BASE_PATH_JS}/ion.rangeSlider.js"></script>
<script>
    var sliderActivated = false,
        sliderProductNames = [
        {foreach $products as $product}
            "{$product->diskSpace}",
        {/foreach}
        ],
        allProducts = {
        {foreach $products as $num => $product}
        "{$num}": {
            "pid": "{$product->id}",
            "name": "{$product->name}",
            "desc": "{$product->formattedProductFeatures.featuresDescription|nl2br|trim}",
            "price": "{$product->pricing()->first()->price()}",
            "cycle": "{lang key={'orderpaymentterm'|cat:$product->pricing()->first()->cycle()}}"
        },
        {/foreach}
        },
        definedProducts = {
        {foreach $products as $product}
            "{$product->id}": "{$product@index}"{if !($product@last)},{/if}
        {/foreach}
        };

    {foreach $products as $product}
        {if $product->isFeatured}
            var firstFeatured = definedProducts["{$product->id}"];
            {break}
        {/if}
    {/foreach}

    var rangeSliderValues = {
        type: "single",
        grid: true,
        grid_snap: true,
        hide_min_max: true,
        step: 1,
        from: 1,
        onStart: refreshSelectedProduct,
        {if $products|@count eq 1}
            disable: true,
        {/if}
        onChange: refreshSelectedProduct,
        values: sliderProductNames
    };

    if (typeof firstFeatured !== 'undefined') {
        rangeSliderValues['from'] = firstFeatured;
    }

    function refreshSelectedProduct(data) {
        var featureName = "",
            featureMarkup = "",
            i = parseInt(data.from);

        if (isNaN(i)) {
            i = 0;
            jQuery(".irs-single").text(sliderProductNames[0]);
            jQuery(".irs-grid-text").text('');
        }
        jQuery("#selectedProductId").val(allProducts[i].pid);
        jQuery("#productDescription").html(allProducts[i].desc);
        jQuery("#pricingAmount").html(allProducts[i].price);
        jQuery("#pricingCycle").html(allProducts[i].cycle);
    }

    jQuery("#codeGuardPlanSelector").ionRangeSlider(rangeSliderValues);
    {if $products|@count eq 1}
    jQuery(".irs-single").text(sliderProductNames[0]);
    jQuery(".irs-grid-text").text('');
    {/if}
    sliderActivated = true;
</script>
