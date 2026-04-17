<link href="{assetPath file='store.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx_responsive.css'}" rel="stylesheet">
{if $LANG.locale == 'ar_AR' || $LANG.locale == 'fa_IR' || $LANG.locale == 'he_IL'}
    <link href="{assetPath file='store_rtl_hostx.css'}" rel="stylesheet">
{/if}

<div class="landing-page bg-white ox">
    <!-- <div class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 text-center order-lg-2 mb-4">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/{$layoutStyle}/display-email.png" class="header-img">
                </div>
                <div class="col-lg-6 order-lg-1">
                    <div class="header-content">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/logo-inv.png" class="logo-img">
                        <h1>{lang key="store.ox.promoHeading"}</h1>
                        <button type="button" class="btn btn-success" onclick="smoothScroll('#oxPricing')">
                            {lang key="store.ox.viewPricing"}
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <div class="hero sitebuilder-banner p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-left">
                     <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/{$layoutStyle}/logo-inv.png" class="logo-img">
                    <h1>{lang key="store.ox.promoHeading"}</h1>
                     <button type="button" class="btn button-style hx-primary-btn" onclick="smoothScroll('#oxPricing')">
                            {lang key="store.ox.viewPricing"}
                        </button>
                    <!-- <a href="#" class="button-style hx-primary-btn">learn more</a> -->
                </div>
                <div class="col-md-6">
                    <div class="hero-right-img">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/ox-banner-img.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="stand-out p-vertical" >
        <div class="container">
            <h2>Choose your level of validation</h2>
            <div class="row text-center">
                <div class="col-xl-4 col-md-6 text-md-left">
                    <div class="wrapper">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/{$layoutStyle}/validation-one.png" alt="validation-one">
                        <h6>{lang key="store.ox.standout.feature1.title"}</h6>
                        <ul>
                            <li>{lang key="store.ox.standout.feature1.bullet1"}</li>
                            <li>{lang key="store.ox.standout.feature1.bullet2"}</li>
                            <li>{lang key="store.ox.standout.feature1.bullet3"}</li>
                            <li>{lang key="store.ox.standout.feature1.bullet4"}</li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-4 col-md-6">
                    <div class="wrapper">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/{$layoutStyle}/validation-two.png" alt="validation-two">
                        <h6>{lang key="store.ox.standout.feature2.title"}</h6>
                        <p>{lang key="store.ox.standout.feature2.detail"}</p>
                    </div>
                </div>
                <div class="col-xl-4 col-md-12">
                    <div class="wrapper">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/{$layoutStyle}/validation-three.png" alt="validation-three">
                        <h6>{lang key="store.ox.standout.feature3.title"}</h6>
                        <p>{lang key="store.ox.standout.feature3.detail"}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="ox-features p-vertical">
        <div class="container">
            <h2>{lang key="store.ox.featuresHeadline"}</h2>
            <div class="row">
                    <div class="col-md-4">
                        <div class="feature-block">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/{$layoutStyle}/feature1.png" alt="feature1">
                            <h6 class="title">{lang key="store.ox.feature1.title"}</h6>
                            <p>{lang key="store.ox.feature1.detail"}</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature-block">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/{$layoutStyle}/feature2.png" alt="feature2">
                            <h6 class="title">{lang key="store.ox.feature2.title"}</h6>
                            <p>{lang key="store.ox.feature2.detail"}</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature-block">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/{$layoutStyle}/feature3.png" alt="feature3">
                            <h6 class="title">{lang key="store.ox.feature3.title"}</h6>
                            <p>{lang key="store.ox.feature3.detail"}</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature-block">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/{$layoutStyle}/feature4.png" alt="feature4">
                            <h6 class="title">{lang key="store.ox.feature4.title"}</h6>
                            <p>{lang key="store.ox.feature4.detail"}</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature-block">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/{$layoutStyle}/feature5.png" alt="feature5">
                            <h6 class="title">{lang key="store.ox.feature5.title"}</h6>
                            <p>{lang key="store.ox.feature5.detail"}</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature-block">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/ox/{$layoutStyle}/feature6.png" alt="feature6">
                            <h6 class="title">{lang key="store.ox.feature6.title"}</h6>
                            <p>{lang key="store.ox.feature6.detail"}</p>
                        </div>
                    </div>
            </div>
        </div>
    </div>
    <div class="pricing p-vertical" id="oxPricing">
        <div class="container">
            <h2>{lang key="store.ox.pricingHeadline"}</h2>
            <div class="row">
                <div class="col-xl-12">
                    <table>
                        <tr>
                            <td class="no-border"></td>
                            {foreach $plans as $plan}
                                <th{if $plan.configoption1 == 'ox_productivity'} class="feature"{/if}>{$plan->name}</th>
                            {/foreach}
                        </tr>
                        {foreach $plans[0]['features'] as $feature => $value}
                            <tr>
                                <td>{$feature}</td>
                                {foreach $plans as $plan}
                                    <td>
                                        {if is_bool($plan['features'][$feature])}
                                            <i class="fas fa-check-circle"></i>
                                        {else}
                                            {$plan['features'][$feature]}
                                        {/if}
                                    </td>
                                {/foreach}
                            </tr>
                        {/foreach}
                        <tr>
                            <td class="no-border no-bg"></td>
                            {foreach $plans as $plan}
                                <td class="no-border buy">
                                     <form method="post" action="{routePath('cart-order')}">
                                        <input type="hidden" name="pid" value="{$plan->id}">
                                        <button type="submit" class="btn button-style hx-primary-btn">
                                            {lang key="store.ssl.landingPage.buyNow"}
                                        </button>
                                    </form>
                                    <div class="pricing-label">
                                        {if $inPreview}
                                            -
                                        {else}
                                            {$plan->pricing()->first()->toFullString()}<small>/{{lang key="user"}|lower}</small>
                                        {/if}
                                    </div>
                                   
                                </td>
                            {/foreach}
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="faqs p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="col-lg-6">
                            <h6 class="question">{lang key="store.ox.faq1.question"}</h6>
                            <p>{lang key="store.ox.faq1.answer"}</p>
                            <h6 class="question">{lang key="store.ox.faq2.question"}</h6>
                            <p>{lang key="store.ox.faq2.answer"}</p>
                            <h6 class="question">{lang key="store.ox.faq9.question"}</h6>
                            <p>{lang key="store.ox.faq9.answer"}</p>
                            <h6 class="question">{lang key="store.ox.faq3.question"}</h6>
                            <p>{lang key="store.ox.faq3.answer"}</p>
                            <h6 class="question">{lang key="store.ox.faq4.question"}</h6>
                            <p>{lang key="store.ox.faq4.answer"}</p>
                                <p>{lang key="store.ox.faq4.devices"}</p>
                        </div>
                        <div class="col-lg-6">
                            <h6 class="question">{lang key="store.ox.faq5.question"}</h6>
                            <p>{lang key="store.ox.faq5.answer"}</p>
                            <h6 class="question">{lang key="store.ox.faq6.question"}</h6>
                            <p>{lang key="store.ox.faq6.answer"}</p>
                            <h6 class="question">{lang key="store.ox.faq7.question"}</h6>
                            <p>{lang key="store.ox.faq7.answer"}</p>
                            <h6 class="question">{lang key="store.ox.faq8.question"}</h6>
                            <p>{lang key="store.ox.faq8.answer"}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

