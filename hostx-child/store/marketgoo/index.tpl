<link href="{assetPath file='store.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx_responsive.css'}" rel="stylesheet">
{if $LANG.locale == 'ar_AR' || $LANG.locale == 'fa_IR' || $LANG.locale == 'he_IL'}
    <link href="{assetPath file='store_rtl_hostx.css'}" rel="stylesheet">
{/if}

<div class="landing-page bg-white marketgoo">
    <div class="hero sitebuilder-banner market-go-banner p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-left">
                    <h1>{lang key="store.marketgoo.headline"} {lang key="store.marketgoo.tagline"}</h1>
                    <a href="#" class="button-style hx-primary-btn">learn more</a>
                </div>
                <div class="col-md-6">
                    <div class="hero-right-img">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/marketgoo/{$layoutStyle}/market-go-banner.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <div class="hero">
        <div class="container">
            <div class="logo">
                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/marketgoo/{$layoutStyle}/logo.svg">
            </div>
            <h2 class="strong-green">{lang key="store.marketgoo.headline"}</h2>
            <h2>{lang key="store.marketgoo.tagline"}</h2>
        </div>
    </div>
 -->
    <div class="video-banner p-vertical">
        <div class="container">
            <div class="embed-responsive">
                <iframe src="https://player.vimeo.com/video/394484913" class="embed-responsive-item" allow="autoplay; fullscreen" allowfullscreen></iframe>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-light navbar-light bg-light navbar-expand-lg p-0">
        <div class="container">
            <span class="navbar-brand"></span>
            <button type="button" class="navbar-toggler collapsed" data-toggle="collapse" data-target="#nav-landing-page" aria-expanded="false">
                <span class="sr-only">{lang key="toggleNav"}</span>
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="nav-landing-page">
                <ul class="nav navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#how');return false">{lang key="store.marketgoo.tab.how"}</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#features');return false">{lang key="store.marketgoo.tab.features"}</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#testimonials');return false">{lang key="store.marketgoo.tab.testimonials"}</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" onclick="smoothScroll('#faqs');return false">{lang key="store.marketgoo.tab.faqs"}</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="content-block feature-blocks market-go-feature p-vertical" id="how">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-sm-6">
                    <div class="block">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/marketgoo/{$layoutStyle}/1-signup.png">
                        <span>1. {lang key="store.marketgoo.features.1"}</span>
                        <p><p>{lang key="store.marketgoo.featuresdetail.1"}</p></p>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6">
                    <div class="block">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/marketgoo/{$layoutStyle}/2-get-seo-plan.png">
                        <span>2. {lang key="store.marketgoo.features.2"}</span>
                         <p>{lang key="store.marketgoo.featuresdetail.1"}</p>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6">
                    <div class="block">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/marketgoo/{$layoutStyle}/3-follow-instructions.png">
                        <span>3. {lang key="store.marketgoo.features.3"}</span>
                        <p>{lang key="store.marketgoo.featuresdetail.3"}</p>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6">
                    <div class="block">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/marketgoo/{$layoutStyle}/4-start-improving.png">
                        <span>4. {lang key="store.marketgoo.features.4"}</span>
                        <p>{lang key="store.marketgoo.featuresdetail.4"}</p>
                    </div>
                </div>
                <div class="col-md-2 col-sm-6">
                    <div class="block">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/marketgoo/{$layoutStyle}/5-track-monitor.png">
                        <span>5. {lang key="store.marketgoo.features.5"}</span>
                        <p>{lang key="store.marketgoo.featuresdetail.5"}</p>
                    </div>
                </div>
                
            </div>
        </div>
    </div>

   <!--  <div class="content-block feature-blocks">
        <div class="container">
            <div class="feature-wrapper">
                <div class="row">
                    
                    
                </div>
            </div>
        </div>
    </div> -->

    <div class="clearfix content-block pricing-marketgo p-vertical" id="features">
        <div class="container">
            {if count($plans) > 0}
                <div class="d-block d-sm-none">
                    <form method="post" action="">
                        <select name="currency" class="form-control" onchange="submit()">
                            <option>{lang key="changeCurrency"} ({$activeCurrency.prefix} {$activeCurrency.code})</option>
                            {foreach $currencies as $currency}
                                <option value="{$currency['id']}">{$currency['prefix']} {$currency['code']}</option>
                            {/foreach}
                        </select>
                    </form>
                    <br>
                </div>
                <div class="header-top">
                    {if !$loggedin && $currencies}
                        <br>
                        <form method="post" action="" class="d-none d-sm-block">
                            <select name="currency" class="form-control currency-selector" onchange="submit()">
                                <option>{lang key="changeCurrency"} ({$activeCurrency.prefix} {$activeCurrency.code})</option>
                                {foreach $currencies as $currency}
                                    <option value="{$currency['id']}">{$currency['prefix']} {$currency['code']}</option>
                                {/foreach}
                            </select>
                        </form>
                    {/if}
                </div>
                <div class="plan-container-main">
                <div class="plan-container">
                    {foreach $plans as $plan}
                        <div class="plan labels">
                            <div class="header"></div>
                            <ul>
                                {foreach $plan->features as $label => $value}
                                    <li><span>{lang key="store.marketgoo.featurematrix."|cat:$value@iteration}</span></li>
                                {/foreach}
                            </ul>
                        </div>
                        <div class="plan {$plan->configoption1}">
                            <div class="header">
                                <div class="header-inner">
                                <h4>
                                    <span>{$plan->name}</span>
                                    <span class="best-value">{lang key='store.marketgoo.labelBestValue'}</span>
                                </h4>
                            
                                <span class="pricing">
                                    {if $plan->isFree()}
                                        {lang key='orderpaymenttermfree'}
                                    {elseif $plan->pricing()->first()}
                                        {$plan->pricing()->first()->toPrefixedString()}
                                    {else}
                                        -
                                    {/if}
                                </span>
                                </div>
                            </div>
                            <ul>
                                {foreach $plan->features as $label => $value}
                                    <li>
                                        {if is_bool($value)}
                                            <i class="fas fa-check-circle"></i>
                                        {else}
                                            {$value}
                                        {/if}
                                    </li>
                                {/foreach}
                            </ul>
                            <form action="{routePath('cart-order')}" method="post">
                                <input type="hidden" name="pid" value="{$plan->id}">
                                <button type="submit" class="btn button-style hx-primary-btn btn-signup">
                                    {lang key='store.marketgoo.signup'}
                                </button>
                            </form>
                        </div>
                    {/foreach}
                </div>
            </div>
            {elseif $inPreview}
                <div class="lead text-center">
                    {lang key="store.marketgoo.adminPreview"}
                </div>
            {/if}
        </div>
    </div>

    <div class="content-block testimonials p-vertical" id="testimonials">
        <div class="container">
            <div id="marketgoo-testimonials" class="carousel slide" data-ride="carousel" data-interval="10000">
                <ol class="carousel-indicators">
                    <li data-target="#marketgoo-testimonials" data-slide-to="0" class="active"></li>
                    <li data-target="#marketgoo-testimonials" data-slide-to="1"></li>
                    <li data-target="#marketgoo-testimonials" data-slide-to="2"></li>
                    <li data-target="#marketgoo-testimonials" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <div class="testimonial">
                            "marketgoo made the complicated simple for me. I never knew where to start with SEO until I started using this service. Literally, I more than doubled my traffic when I started using this."
                        </div>
                        <div class="user">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/marketgoo/user-testimonial-1.jpg">
                            <div class="bio">
                                <span>Heather Figi</span>
                                <em>Music for Young Violinists</em>
                                <a href="https://www.marketgoo.com/blog-post/2018/08/30/review-music-for-violinists/" target="_blank">{lang key="store.marketgoo.testimonials.casestudy"}</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="testimonial">
                            "Without marketgoo I would never have been able to have my website on the first page of google for all the keywords that are linked to my business, its ease of use and the customer service when I’ve needed help has been first class."
                        </div>
                        <div class="user">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/marketgoo/user-testimonial-2.jpg">
                            <div class="bio">
                                <span>Ian Glass</span>
                                <em>Ian Glass Fitness</em>
                                <a href="https://www.marketgoo.com/blog-post/2019/10/29/review-ian-glass-fitness/" target="_blank">{lang key="store.marketgoo.testimonials.casestudy"}</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="testimonial">
                            "Such a simple reliable platform! It’s helped me see where we stand next to our local competitors. Its part of our day to day. The best feature is the keyword tool."
                        </div>
                        <div class="user">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/marketgoo/user-testimonial-3.jpg">
                            <div class="bio">
                                <span>Simon Saleh</span>
                                <em>Wanderlust Ironworks</em>
                                <a href="https://www.marketgoo.com/blog-post/2019/09/09/review-wanderlust-ironworks/" target="_blank">{lang key="store.marketgoo.testimonials.casestudy"}</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="testimonial">
                            "marketgoo reports give me everything I need to know for my site’s SEO. I am constantly fine tuning my site to work towards a higher rating. I read various marketgoo reports then immediately work out how to implement recommendations."
                        </div>
                        <div class="user">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/marketgoo/user-testimonial-4.jpg">
                            <div class="bio">
                                <span>Svein Koningen</span>
                                <em>Koningen Art</em>
                                <a href="https://www.marketgoo.com/blog-post/2018/06/24/marketgoo-review-koningen-art/" target="_blank">{lang key="store.marketgoo.testimonials.casestudy"}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="content-block faqs commom-faq mb-0 p-vertical" id="faqs">
        <div class="container">
            <h2 class="text-center">{lang key="store.marketgoo.faqs.title"}</h2>
            <div class="row-custom accordion market-go-accordian" id="accordion_market_go">
                <div class="card">
                    <div class="card-header" onclick="wgsAccordianStyleList(this,'accordion_market_go','marketgo_faq1');">
                        <a class="card-link" data-toggle="collapse">{lang key="store.marketgoo.faqs.q1"}
                            <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                        </a>
                    </div>
                    <div id="marketgo_faq1" class="collapse">
                        <div class="card-body">
                            {lang key="store.marketgoo.faqs.a1"}
                            <a href="https://vimeo.com/whmcs/marketgoo-lite-vs-pro" target="_blank">
                                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/marketgoo/video-comparison.png">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" onclick="wgsAccordianStyleList(this,'accordion_market_go','marketgo_faq2');">
                        <a class="card-link" data-toggle="collapse">{lang key="store.marketgoo.faqs.q2"}
                            <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                        </a>
                    </div>
                    <div id="marketgo_faq2" class="collapse">
                        <div class="card-body">
                            {lang key="store.marketgoo.faqs.a2"}
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" onclick="wgsAccordianStyleList(this,'accordion_market_go','marketgo_faq3');">
                        <a class="card-link" data-toggle="collapse">{lang key="store.marketgoo.faqs.q3"}
                            <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                        </a>
                    </div>
                    <div id="marketgo_faq3" class="collapse">
                        <div class="card-body">
                            {lang key="store.marketgoo.faqs.a3"}
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" onclick="wgsAccordianStyleList(this,'accordion_market_go','marketgo_faq4');">
                        <a class="card-link" data-toggle="collapse">{lang key="store.marketgoo.faqs.q4"}
                            <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                        </a>
                    </div>
                    <div id="marketgo_faq4" class="collapse">
                        <div class="card-body">
                           {lang key="store.marketgoo.faqs.a4"}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
