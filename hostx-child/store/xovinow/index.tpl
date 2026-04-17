<link href="{assetPath file='store.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='store_hostx.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx_responsive.css'}" rel="stylesheet">
{if $LANG.locale == 'ar_AR' || $LANG.locale == 'fa_IR' || $LANG.locale == 'he_IL'}
    <link href="{assetPath file='store_rtl_hostx.css'}" rel="stylesheet">
{/if}
<div class="landing-page xovinow">
    <!-- <div class="header text-center text-lg-left mb-xl-5">
        <div class="container">
            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/logo-inverse.png">
            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/header-img.png" class="header-img d-none d-lg-inline">
            <h1>{lang key="store.xoviNow.tagline" lineBreak='<div class="d-none d-lg-block"></div>'}</h1>
            <button class="btn btn-lg btn-xovinow btn-stretched" onclick="smoothScroll('#cpsPricing')">
                {lang key="store.xoviNow.getStarted"}
            </button>
        </div>
    </div> -->
    <div class="hero sitebuilder-banner p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-left">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/logo-inverse.png">
                    <h1>{lang key="store.xoviNow.tagline" lineBreak='<div class="d-none d-lg-block"></div>'}</h1>
                    <button type="button" class="btn button-style hx-primary-btn" onclick="smoothScroll('#cpsPricing')">
                            {lang key="store.xoviNow.getStarted"}
                    </button>
                    <!-- <a href="#" class="button-style hx-primary-btn">learn more</a> -->
                </div>
                <div class="col-md-6">
                    <div class="hero-right-img">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/xovinow-banner-img.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content-block feature-carousel mt-lg-3 p-vertical">
        <div class="carousel-container">
            <!-- <h2 class="mt-md-4 mb-4 mb-md-5">{lang key="store.xoviNow.productTourTitle"}</h2> -->
            <h2 class="text-center">{lang key="store.xoviNow.measureResultsTitle"}</h2>
            <p>{lang key="store.xoviNow.measureResults1" startBold="<strong>" endBold="</strong>"}</p>
            <p>{lang key="store.xoviNow.measureResults2" startBold="<strong>" endBold="</strong>"}</p>

            <div id="xovinow-screenshots" class="carousel slide" data-ride="carousel" data-interval="10000">
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/slider-one.png">
                    </div>
                    <div class="carousel-item">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/rankings.svg">
                    </div>
                    <div class="carousel-item">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/keyword_research_keywords.svg">
                    </div>
                    <div class="carousel-item">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/tracked_keywords.png">
                    </div>
                    <div class="carousel-item">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/projects.png">
                    </div>
                    <div class="carousel-item">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/site_audit.svg">
                    </div>
                    <div class="carousel-item">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/advisor_overview_column.svg">
                    </div>
                    <div class="carousel-item">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/advisor_task_details.svg">
                    </div>
                </div>
                <a class="left carousel-control" href="#xovinow-screenshots" role="button" data-slide="prev">
                    <span class="fas fa-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">{lang key="tablepagesprevious"}</span>
                </a>
                <a class="right carousel-control" href="#xovinow-screenshots" role="button" data-slide="next">
                    <span class="fas fa-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">{lang key="tablepagesnext"}</span>
                </a>
            </div>
        </div>
       <!--  <div class="container">
          
            <br>
            <div class="row">
                <div class="col-lg-6">
                    <p>{lang key="store.xoviNow.measureResults1" startBold="<strong>" endBold="</strong>"}</p>
                </div>
                <div class="col-lg-6">
                    <p>{lang key="store.xoviNow.measureResults2" startBold="<strong>" endBold="</strong>"}</p>
                </div>
            </div>
        </div> -->
    </div>
    <div class="content-block feature-tabs bg-white  ">
        <div class="feature-tabs-sec">
            <div class="container">
                <ul class="nav nav-tabs mt-sm-4 mt-md-4 mt-lg-5" role="tablist">
                    <li role="presentation" class="nav-item"><a href="#keywords" aria-controls="keywords" role="tab" data-toggle="tab" class="nav-link active">{lang key="store.xoviNow.features.keywords.title"}</a></li>
                    <li role="presentation" class="nav-item"><a href="#advisor" aria-controls="advisor" role="tab" data-toggle="tab" class="nav-link">{lang key="store.xoviNow.features.advisor.title"}</a></li>
                    <li role="presentation" class="nav-item"><a href="#ranktracker" aria-controls="ranktracker" role="tab" data-toggle="tab" class="nav-link">{lang key="store.xoviNow.features.rankTracker.title"}</a></li>
                    <li role="presentation" class="nav-item"><a href="#siteaudit" aria-controls="siteaudit" role="tab" data-toggle="tab" class="nav-link">{lang key="store.xoviNow.features.siteAudit.title"}</a></li>
                    <li role="presentation" class="nav-item"><a href="#textoptimizer" aria-controls="textoptimizer" role="tab" data-toggle="tab" class="nav-link">{lang key="store.xoviNow.features.textOptimizer.title"}</a></li>
                    <li role="presentation" class="nav-item"><a href="#benchmarking" aria-controls="benchmarking" role="tab" data-toggle="tab" class="nav-link">{lang key="store.xoviNow.features.benchmarking.title"}</a></li>
                </ul>
            </div>
        </div>
        <div class="container">
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="keywords">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/keywords.svg">
                        </div>
                        <div class="col-md-6">
                            <h3>{lang key="store.xoviNow.features.keywords.title"}</h3>
                            <p>{lang key="store.xoviNow.features.keywords.line1"}</p>
                            <ul>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.keywords.bullet1"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.keywords.bullet2"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.keywords.bullet3"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.keywords.bullet4"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.keywords.bullet5"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.keywords.bullet6"}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="advisor">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/advisor.svg">
                        </div>
                        <div class="col-md-6">
                            <h3>{lang key="store.xoviNow.features.advisor.title"}</h3>
                            <p>{lang key="store.xoviNow.features.advisor.line1"}</p>
                            <ul>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.advisor.bullet1"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.advisor.bullet2"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.advisor.bullet3"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.advisor.bullet4"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.advisor.bullet5"}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="ranktracker">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/rank-tracker.svg">
                        </div>
                        <div class="col-md-6">
                            <h3>{lang key="store.xoviNow.features.rankTracker.title"}</h3>
                            <p>{lang key="store.xoviNow.features.rankTracker.line1"}</p>
                            <ul>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.rankTracker.bullet1"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.rankTracker.bullet2"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.rankTracker.bullet3"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.rankTracker.bullet4"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.rankTracker.bullet5"}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="siteaudit">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/site-audit-neww.svg">
                        </div>
                        <div class="col-md-6">
                            <h3>{lang key="store.xoviNow.features.siteAudit.title"}</h3>
                            <p>{lang key="store.xoviNow.features.siteAudit.line1"}</p>
                            <ul>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.siteAudit.bullet1"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.siteAudit.bullet2"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.siteAudit.bullet3"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.siteAudit.bullet4"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.siteAudit.bullet5"}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="textoptimizer">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/text-optimizer.svg">
                        </div>
                        <div class="col-md-6">
                            <h3>{lang key="store.xoviNow.features.textOptimizer.title"}</h3>
                            <p>{lang key="store.xoviNow.features.textOptimizer.line1"}</p>
                            <ul>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.textOptimizer.bullet1"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.textOptimizer.bullet2"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.textOptimizer.bullet3"}</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="benchmarking">
                    <div class="row">
                        <div class="col-md-6 text-center">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/benchmarking.svg">
                        </div>
                        <div class="col-md-6">
                            <h3>{lang key="store.xoviNow.features.benchmarking.title"}</h3>
                            <p>{lang key="store.xoviNow.features.benchmarking.line1"}</p>
                            <ul>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.benchmarking.bullet1"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.benchmarking.bullet2"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.benchmarking.bullet3"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.benchmarking.bullet4"}</li>
                                <li><i class="fas fa-check-circle"></i>{lang key="store.xoviNow.features.benchmarking.bullet5"}</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content-block audience text-center">
        <div class="container">
            <div class="row mt-lg-3 mb-lg-3">
                <div class="col-md-6">
                    <div class="audience-inner">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/freelancing.png">
                        <h6>{lang key="store.xoviNow.audience.freelancersTitle"}</h6>
                        <p>{lang key="store.xoviNow.audience.freelancersDesc"}</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="audience-inner">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/small-business.png">
                        <h6>{lang key="store.xoviNow.audience.smbizTitle"}</h6>
                        <p>{lang key="store.xoviNow.audience.smbizDesc"}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content-block pricing bg-white p-vertical" id="cpsPricing">
        <div class="container">
            <div class="money-back text-center mb-4  mb-sm-5">
                <p>{lang key="store.xoviNow.moneyBackGuarantee" guaranteeStart="<br><span>" guaranteeEnd="</span>"}</p>
            </div>

            <div class="row justify-content-md-center">
                <div class="col-xl-10">
                    <div class="row no-gutters">
                        <div class="col-md-4 d-none d-md-block">
                            <div class="plan-features">
                                <div class="plan-header">
                                   <!--  <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/logo.png"> -->
                                </div>
                                {foreach $plans[0]->features as $feature => $value}
                                    <div class="plan-feature{if is_bool($value)} || $value < 2} row-highlight{/if}">
                                        {lang key="store.xoviNow.featurematrix."|cat:$value@iteration}
                                     </div>
                                    
                                {/foreach}
                            </div>
                             <div class="plan-feature-bottom">
                                     </div>
                        </div>
                        {foreach $plans as $plan}
                            <div class="col-md-4 col-sm-6">
                                <div class="plan{if $plan->is_featured} featured{/if}">
                                    <div class="plan-header">
                                        <div class="plan-name">
                                            {$plan->productGroup->name}
                                            {$plan->name}
                                        </div>
                                        <div class="plan-price">
                                            {if $plan->isFree()}
                                                {lang key='orderpaymenttermfree'}
                                            {elseif $plan->pricing()->first()}
                                                {$plan->pricing()->first()->toPrefixedString()}
                                            {else}
                                                -
                                            {/if}
                                        </div>
                                    </div>
                                    {foreach $plan->features as $feature => $value}
                                        <div class="plan-feature{if is_bool($value)} || $value < 2} row-highlight{/if}">
                                            {if is_bool($value)}
                                                <i class="fas fa-check-circle"></i>
                                                <i class="fas fa-check  d-md-none"></i>
                                            {else}
                                                {$value}
                                            {/if}
                                            <span class="d-md-none">{lang key="store.xoviNow.featurematrix."|cat:$value@iteration}</span>
                                        </div>
                                    {/foreach}
                                    <div class="plan-feature">
                                        <div class="buy-btn">
                                            <form action="{routePath('cart-order')}" method="post">
                                                <input type="hidden" name="pid" value="{$plan->id}">
                                                <button type="submit" class="btn button-style hx-primary-btn {if $plan->is_featured}btn-xovinow{else}btn-default{/if}">
                                                    {lang key="ordernowbutton"}
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/foreach}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="content-block faq commom-faq xovinow-faq p-vertical">
        <div class="container">

            <h3 class="text-center">{lang key="store.xoviNow.faqTitle"}</h3>

            <div class="row justify-content-md-center">
                <div class="col-lg-10 col-xl-8">
                    <div class="accordion" id="xovinowFAQ">
                        <div class="card">
                            <div class="card-header" id="heading1">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1">
                                        {lang key="store.xoviNow.faq1"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse1" class="collapse show" aria-labelledby="heading1" data-parent="#xovinowFAQ">
                                <div class="card-body">
                                    {lang key="store.xoviNow.faq1ans" image1=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-advisor.png' image2=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrchart.png' image3=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrpages.png'}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading2">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
                                        {lang key="store.xoviNow.faq2"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse2" class="collapse" aria-labelledby="heading2" data-parent="#xovinowFAQ">
                                <div class="card-body">
                                    {lang key="store.xoviNow.faq2ans" image1=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-advisor.png' image2=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrchart.png' image3=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrpages.png'}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading3">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapse3" aria-expanded="false" aria-controls="collapse3">
                                        {lang key="store.xoviNow.faq3"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse3" class="collapse" aria-labelledby="heading3" data-parent="#xovinowFAQ">
                                <div class="card-body">
                                    {lang key="store.xoviNow.faq3ans" image1=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-advisor.png' image2=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrchart.png' image3=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrpages.png'}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading4">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapse4">
                                        {lang key="store.xoviNow.faq4"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse4" class="collapse" aria-labelledby="heading4" data-parent="#xovinowFAQ">
                                <div class="card-body">
                                    {lang key="store.xoviNow.faq4ans" image1=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-advisor.png' image2=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrchart.png' image3=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrpages.png'}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading5">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapse5">
                                        {lang key="store.xoviNow.faq5"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse5" class="collapse" aria-labelledby="heading5" data-parent="#xovinowFAQ">
                                <div class="card-body">
                                    {lang key="store.xoviNow.faq5ans" image1=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-advisor.png' image2=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrchart.png' image3=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrpages.png'}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading6">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse6" aria-expanded="true" aria-controls="collapse6">
                                        {lang key="store.xoviNow.faq6"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse6" class="collapse" aria-labelledby="heading6" data-parent="#xovinowFAQ">
                                <div class="card-body">
                                    {lang key="store.xoviNow.faq6ans" image1=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-advisor.png' image2=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrchart.png' image3=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrpages.png'}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading7">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse7" aria-expanded="true" aria-controls="collapse7">
                                        {lang key="store.xoviNow.faq7"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse7" class="collapse" aria-labelledby="heading7" data-parent="#xovinowFAQ">
                                <div class="card-body">
                                    {lang key="store.xoviNow.faq7ans" image1=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-advisor.png' image2=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrchart.png' image3=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrpages.png'}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading8">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse8" aria-expanded="true" aria-controls="collapse8">
                                        {lang key="store.xoviNow.faq8"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse8" class="collapse" aria-labelledby="heading8" data-parent="#xovinowFAQ">
                                <div class="card-body">
                                    {lang key="store.xoviNow.faq8ans" image1=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-advisor.png' image2=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrchart.png' image3=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrpages.png'}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading9">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse9" aria-expanded="true" aria-controls="collapse9">
                                        {lang key="store.xoviNow.faq9"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse9" class="collapse" aria-labelledby="heading9" data-parent="#xovinowFAQ">
                                <div class="card-body">
                                    {lang key="store.xoviNow.faq9ans" image1=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-advisor.png' image2=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrchart.png' image3=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrpages.png'}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading10">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse10" aria-expanded="true" aria-controls="collapse10">
                                        {lang key="store.xoviNow.faq10"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse10" class="collapse" aria-labelledby="heading10" data-parent="#xovinowFAQ">
                                <div class="card-body">
                                    {lang key="store.xoviNow.faq10ans" image1=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-advisor.png' image2=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrchart.png' image3=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrpages.png'}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading11">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse11" aria-expanded="true" aria-controls="collapse11">
                                        {lang key="store.xoviNow.faq11"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse11" class="collapse" aria-labelledby="heading11" data-parent="#xovinowFAQ">
                                <div class="card-body">
                                    {lang key="store.xoviNow.faq11ans" image1='<img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/faq-advisor.png">' image2='<img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/faq-googlectrchart.png">' image3='<img src="{$WEB_ROOT}/templates/{$template}/marketconnect/xovinow/{$layoutStyle}/faq-googlectrpages.png">' googleWebmasterGuidelinesUrl="https://developers.google.com/search/docs/advanced/guidelines/webmaster-guidelines" waybackMachineUrl="https://archive.org/web/"}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading12">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse12" aria-expanded="true" aria-controls="collapse12">
                                        {lang key="store.xoviNow.faq12"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse12" class="collapse" aria-labelledby="heading12" data-parent="#xovinowFAQ">
                                <div class="card-body">
                                    {lang key="store.xoviNow.faq12ans" image1=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-advisor.png' image2=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrchart.png' image3=$WEB_ROOT|cat:'/assets/img/marketconnect/xovinow/faq-googlectrpages.png'}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
