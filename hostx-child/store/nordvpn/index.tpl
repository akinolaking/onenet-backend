<link href="{assetPath file='store.css'}?v={$versionHash}" rel="stylesheet">
<link href="{assetPath file='store_hostx.css'}" rel="stylesheet">
<link href="{assetPath file='store_hostx_responsive.css'}" rel="stylesheet">
{if $LANG.locale == 'ar_AR' || $LANG.locale == 'fa_IR' || $LANG.locale == 'he_IL'}
    <link href="{assetPath file='store_rtl_hostx.css'}" rel="stylesheet">
{/if}

<div class="landing-page bg-white nordvpn">

    <div class="hero nordvpn-banner p-vertical">
        <div class="container">
            <div class="hero-bg">
                <div class="row h-100">
                    <div class="col-12 col-md-7 my-auto">
                        <!-- <img class="hero-image" src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/header-logo.png"> -->
                        <h1>{lang key="store.nordvpn.hero.title" tagOpen="<span class=\"blue-text\">" tagClose="</span>" tagBreak="<br class=\"br-md-space br-lg-reg br-xl-space\">"}</h1>
                        <p>{lang key="store.nordvpn.hero.tagline" tagBreak="<br class=\"br-xs-space br-sm-space br-md-reg br-lg-space\">"}</p>
                        <div class="available-sec">
                            <p>{lang key="store.nordvpn.hero.available"}</p>
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/header-icons.svg" alt="header-icons-nordvpn" width="570" height="73">
                            <p class="guarantee-text">{lang key="store.nordvpn.hero.guarantee"}</p>
                            <button class="btn button-style hx-primary-btn" onclick="smoothScroll('#nordPricing')">
                                {lang key="store.nordvpn.shared.get"}
                            </button>
                        </div>
                    </div>
                    <div class="col-md-5 d-lg-block my-auto">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/header-image.svg" alt="banner-img" width="390" height="360">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- <div class="hero sitebuilder-banner market-go-banner p-vertical">
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
    </div> -->

    <div class="feature icon-new-vpn p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2>{lang key="store.nordvpn.features.icon.title1"}</h2>
                </div>
                <div class="col-md-6">
                    <div class="feature-vpn-left-sec">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/with-vpn.svg" width="522" height="508">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="feature-vpn-right-sec">
                        <div class="vpn-right-sec-inner">
                          <p>{lang key="store.nordvpn.features.icon.video"}</p>
                        </div>
                        <div class="vpn-right-sec-inner">
                           <p>{lang key="store.nordvpn.features.icon.global"}</p>
                        </div>
                        <div class="vpn-right-sec-inner">
                           <p>{lang key="store.nordvpn.features.icon.hacker"}</p>
                        </div>
                        <div class="vpn-right-sec-inner">
                            <p>{lang key="store.nordvpn.features.icon.property"}</p>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
    </div>

    <div class="feature comparison p-vertical why-choose-us">
        <div class="container">
            <h2>{lang key="store.nordvpn.features.comparison.title"}</h2>
            <div class="comparison-container">
                <div class="row no-gutters">
                    <div class="col-12">
                        <div class="row no-gutters">
                            <div class="col-2"></div>
                            <div class="col-2"></div>
                            <div class="col-2"></div>
                            <div class="col-2"></div>
                            <div class="col-2"></div>
                            <div class="col-2"></div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="row no-gutters">
                            <div class="col-2"></div>
                            <div class="col-2">
                                <span><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/vpn-nord.svg"></span>
                            </div>
                            <div class="col-2">
                                <span><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/vpn-express.svg"></span>
                            </div>
                            <div class="col-2">
                                <span><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/vpn-private.svg"></span>
                            </div>
                            <div class="col-2">
                                <span><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/vpn-proton.svg"></span>
                            </div>
                            <div class="col-2">
                                <span><img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/vpn-pure.svg"></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="row no-gutters">
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.speed1"}</span>
                            </div>
                            <div class="col-2">
                                <span><strong>{lang key="store.nordvpn.features.comparison.speed2"}</strong></span>
                            </div>
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.speed3"}</span>
                            </div>
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.speed4"}</span>
                            </div>
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.speed5"}</span>
                            </div>
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.speed6"}</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="row no-gutters">
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.wireguard"}</span>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                            <div class="col-2">
                                <i class="fas fa-times-circle"></i>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                            <div class="col-2">
                                <i class="fas fa-times-circle"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="row no-gutters">
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.vpn1"}</span>
                            </div>
                            <div class="col-2">
                                <span><strong>{lang key="store.nordvpn.features.comparison.vpn2"}</strong></span>
                            </div>
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.vpn3"}</span>
                            </div>
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.vpn4"}</span>
                            </div>
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.vpn5"}</span>
                            </div>
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.vpn6"}</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="row no-gutters">
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.log"}</span>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="row no-gutters">
                            <div class="col-2">
                                <span>{lang key="store.nordvpn.features.comparison.chat"}</span>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                            <div class="col-2">
                                <span><i class="fas fa-check-circle"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="row no-gutters">
                            <div class="col-2"></div>
                            <div class="col-2">
                                <span>
                                    <button class="btn btn-default button-style hx-primary-btn" onclick="smoothScroll('#nordPricing')">{lang key="store.nordvpn.shared.get"}</button>
                                </span>
                            </div>
                            <div class="col-2"></div>
                            <div class="col-2"></div>
                            <div class="col-2"></div>
                            <div class="col-2"></div>
                        </div>
                    </div>
                </div>
            </div>
            <p class="comparison-note">{lang key="store.nordvpn.features.comparison.asterisk" tagOpen="<a href=\"https://go.whmcs.com/1745/av-test-report\" target=\"_blank\">" tagClose="</a>"}</p>
        </div>
    </div>

    <div class="container line-break"></div>

    <div class="feature threat p-vertical">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-md-6">
                    <h2>{lang key="store.nordvpn.features.threat.title"}</h2>
                    <p>{lang key="store.nordvpn.features.threat.tagline" tagOpen="<strong>" tagClose="</strong>"}</p>
                </div>
            </div>
            <div class="row">
                <div class="col-12  col-md-4 offset-md-0">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/thread-protect1.svg">
                    <p>{lang key="store.nordvpn.features.threat.protection" tagOpen="<strong>" tagClose="</strong>"}</p>
                </div>
                <div class="col-12  col-md-4 offset-md-0">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/thread-protect2.svg">
                    <p>{lang key="store.nordvpn.features.threat.malware" tagOpen="<strong>" tagClose="</strong>"}</p>
                </div>
                <div class="col-12  col-md-4 offset-md-0">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/thread-protect3.svg">
                    <p>{lang key="store.nordvpn.features.threat.safe" tagOpen="<strong>" tagClose="</strong>"}</p>
                </div>
            </div>
        </div>
    </div>
    <div class="feature device">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="device-left">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/wifi-vpn.svg"> 
                        <h3>{lang key="store.nordvpn.features.device.title1"}</h3>
                        <p>{lang key="store.nordvpn.features.device.tagline1"}</p>
                   </div>
                </div>
                <div class="col-md-6">
                    <div class="device-left">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/device-vpn.svg">
                        <h3>{lang key="store.nordvpn.features.device.title2"}</h3>
                        <p>{lang key="store.nordvpn.features.device.tagline2"}</p>
                    </div>
                </div>
            </div>
            <div class="feature-nordvpn">
                <p>Available on</p>
                <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/icons-available-black.svg">
            </div>
        </div>
    </div>

    <div class="feature world p-vertical">
        <div class="container">
                <!-- <div class="col-6 d-none d-xl-block">
                    <img class="world-image" src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/img-world.png">
                </div> -->
                    <!-- <img class="d-xl-none world-image" src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/img-world.png"> -->
                    <div class="world-desc">
                        <div class="world-desc-heading">
                            <h2>{lang key="store.nordvpn.features.world.title"}</h2>
                            <p class="world-tagline">{lang key="store.nordvpn.features.world.tagline" tagBreak="<br class=\"br-xs-space br-lg-space br-xl-reg\">"}</p>
                        </div>
                        <div class="row world-data">
                            <div class="col-md-3">
                                <div class="world-data-inner">
                                    <p>{lang key="store.nordvpn.features.world.bullet1"}</p>
                                    <p>{lang key="store.nordvpn.features.world.count1"}</p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="world-data-inner">
                                    <p>{lang key="store.nordvpn.features.world.bullet2"}</p>
                                    <p>{lang key="store.nordvpn.features.world.count2"}</p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="world-data-inner">
                                    <p>{lang key="store.nordvpn.features.world.bullet3"}</p>
                                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/speed.svg">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="world-data-inner">
                                    <p>{lang key="store.nordvpn.features.world.bullet4"}</p>
                                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/unlimited-width.svg">
                                </div>
                            </div>
                        </div>
                        <button class="btn button-style hx-primary-btn" onclick="smoothScroll('#nordPricing')">
                            {lang key="store.nordvpn.features.world.getDeal"}
                        </button>
                    </div>
        </div>
    </div>

    <div class="feature logo p-vertical">
        <div class="container">
            <div class="row h-100">
                <div class="col-6 col-sm-4 col-lg-2 my-auto">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/logomarks1.svg" alt="logomarks1" width="143" height="18">
                </div>
                <div class="col-6 col-sm-4 col-lg-2 my-auto">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/logomarks2.svg" alt="logomarks2"  width="119" height="22">
                </div>
                <div class="col-6 col-sm-4 col-lg-2 my-auto">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/logomarks3.svg" alt="logomarks3" width="121" height="40">
                </div>
                <div class="col-6 col-sm-4 col-lg-2 my-auto">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/logomarks4.svg" alt="logomarks4" width="114" height="34">
                </div>
                <div class="col-6 col-sm-4 col-lg-2 my-auto">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/logomarks5.svg" alt="logomarks5" width="116" height="34">
                </div>
                <div class="col-6 col-sm-4 col-lg-2 my-auto">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/logomarks6.svg" alt="logomarks6" width="99" height="26">
                </div>
            </div>
        </div>
    </div>

    <div class="feature security p-vertical">
        <div class="container">
            <div class="row h-100">
                <div class="col-12  col-lg-6 offset-lg-0 my-auto">
                    <h2>{lang key="store.nordvpn.features.security.title1"}</h2>
                    <p>{lang key="store.nordvpn.features.security.tagline1"}</p>
                    <p>{lang key="store.nordvpn.features.security.tagline2" tagOpen="<strong>" tagClose="</strong>"}</p>
                </div>
                <div class="col-12 col-lg-6 my-auto text-center">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/security-vpn.svg" alt="security-vpn" width="595" height="480">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                   <div class="extra-feature-security">
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/xtra-vpn.svg" alt="xtra-vpn" width="605" height="515">
                   </div>
                </div>
                <div class="col-md-6">
                    <h2>{lang key="store.nordvpn.features.security.title4"}</h2>
                    <p>{lang key="store.nordvpn.features.security.tagline5" tagOpen="<strong>" tagClose="</strong>"}</p>
                    <div class="security-right-sec">
                        <div class="security-right-sec-inner">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/wifi-vpn.svg" alt="security-right-wifi-vpn" width="68" height="52">
                            <h3>{lang key="store.nordvpn.features.security.title2"}</h3>
                            <p>{lang key="store.nordvpn.features.security.tagline3"}</p>
                        </div>
                        <div class="security-right-sec-inner">
                            <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/device-vpn.svg" alt="security-device-vpn" width="68" height="52">
                            <h3>{lang key="store.nordvpn.features.security.title3"}</h3>
                            <p>{lang key="store.nordvpn.features.security.tagline4"}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="feature icon p-vertical">
        <div class="container">
            <h2>{lang key="store.nordvpn.features.icon.title2"}</h2>
            <div class="row">
                <div class="col-12  col-md-12 offset-md-0 col-lg-4">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/high-speed.svg">
                    <h3>{lang key="store.nordvpn.features.icon.check1"}</h3>
                    <p>{lang key="store.nordvpn.features.icon.check2"}</p>
                </div>
                <div class="col-12  col-md-12 offset-md-0 col-lg-4">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/malwar-protect.svg">
                    <h3>{lang key="store.nordvpn.features.icon.bug1"}</h3>
                    <p>{lang key="store.nordvpn.features.icon.bug2"}</p>
                </div>
                <div class="col-12  col-md-12 offset-md-0 col-lg-4">
                    <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/blocker.svg">
                    <h3>{lang key="store.nordvpn.features.icon.shield1"}</h3>
                    <p>{lang key="store.nordvpn.features.icon.shield2"}</p>
                </div>
            </div>
        </div>
    </div>

    <div class="feature use p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="title-heading">
                        <h2>{lang key="store.nordvpn.features.use.title1"}</h2>
                        <p>{lang key="store.nordvpn.features.use.tagline1" tagOpen="<strong>" tagClose="</strong>" tagBreak="<br class=\"br-sm-space br-lg-reg\">"}</p>
                        <img src="{$WEB_ROOT}/templates/{$template}/marketconnect/nordvpn/{$layoutStyle}/use-case-img.svg" alt="use-feature">
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="use-feature-right">
                        <div class="row">
                            <div class="col-md-6">
                                <h3>{lang key="store.nordvpn.features.use.title2"}</h3>
                                <p>{lang key="store.nordvpn.features.use.tagline2"}</p>
                            </div>
                            <div class="col-md-6">
                                <h3>{lang key="store.nordvpn.features.use.title3"}</h3>
                                <p>{lang key="store.nordvpn.features.use.tagline3"}</p>
                            </div>
                            <div class="col-md-6">
                                  <h3>{lang key="store.nordvpn.features.use.title4"}</h3>
                                <p>{lang key="store.nordvpn.features.use.tagline4"}</p>
                            </div>
                            <div class="col-md-6">
                                <h3>{lang key="store.nordvpn.features.use.title5"}</h3>
                                <p>{lang key="store.nordvpn.features.use.tagline5"}</p>
                            </div>
                            <div class="col-md-6">
                                <h3>{lang key="store.nordvpn.features.use.title6"}</h3>
                                <p>{lang key="store.nordvpn.features.use.tagline6"}</p>
                            </div>
                            <div class="col-md-6">
                                <h3>{lang key="store.nordvpn.features.use.title7"}</h3>
                                <p>{lang key="store.nordvpn.features.use.tagline7"}</p>
                            </div>
                        </div>
                    </div>
                   <!--  <div class="d-lg-none row">
                        <div class="col-10 offset-1 col-md-6 offset-md-0">
                            <h3>{lang key="store.nordvpn.features.use.title2"}</h3>
                            <p>{lang key="store.nordvpn.features.use.tagline2"}</p>
                        </div>
                        <div class="col-10 offset-1 col-md-6 offset-md-0">
                            <h3>{lang key="store.nordvpn.features.use.title3"}</h3>
                            <p>{lang key="store.nordvpn.features.use.tagline3"}</p>
                        </div>
                        <div class="col-10 offset-1 col-md-6 offset-md-0">
                            <h3>{lang key="store.nordvpn.features.use.title4"}</h3>
                            <p>{lang key="store.nordvpn.features.use.tagline4"}</p>
                        </div>
                        <div class="col-10 offset-1 col-md-6 offset-md-0">
                            <h3>{lang key="store.nordvpn.features.use.title5"}</h3>
                            <p>{lang key="store.nordvpn.features.use.tagline5"}</p>
                        </div>
                        <div class="col-10 offset-1 col-md-6 offset-md-0">
                            <h3>{lang key="store.nordvpn.features.use.title6"}</h3>
                            <p>{lang key="store.nordvpn.features.use.tagline6"}</p>
                        </div>
                        <div class="col-10 offset-1 col-md-6 offset-md-0">
                            <h3>{lang key="store.nordvpn.features.use.title7"}</h3>
                            <p>{lang key="store.nordvpn.features.use.tagline7"}</p>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
    </div>
    <div class="feature pricing" id="nordPricing">
        <div class="container">
            <h2>{lang key="store.nordvpn.features.pricing.title"}</h2>
            <div class="row">
                {foreach $plans as $plan}
                    {foreach $pricings[$plan->id] as $pricing}
                        <div class="{if $pricing@total == 1}col-sm-4 offset-sm-4{elseif $pricing@total == 2}col-sm-6{elseif $pricing@total == 2}col-sm-6{elseif $pricing@total == 3}col-md-4 col-sm-4{elseif $pricing@total == 4}col-xl-3 col-sm-6{elseif $pricing@total == 5}col-md-4 col-sm-6{else}col-lg-3 col-sm-4{/if}">
                            <div class="nordPricing-inner">
                                <span class="billing-cycle">
                                {if $inPreview}
                                    -
                                {else}
                                    {lang key="orderpaymentterm{$pricing->cycle()}"}
                                {/if}
                            </span>
                            <p class="billing-price">
                                {if $inPreview}
                                    -
                                {else}
                                    {$pricing->monthlyPrice()}
                                {/if}
                            </p>
                            <p class="billing-save">
                                {if $inPreview}
                                    -
                                {elseif $pricing->calculatePercentageDifference($highestMonthlyPrice) > 0}
                                   <span> {lang key="store.nordvpn.features.pricing.save" amount=$pricing->calculatePercentageDifference($highestMonthlyPrice)}</span>
                                {else}
                                
                                {/if}
                            </p>
                            <div>
                                <form method="post" action="{routePath('cart-order-addtocart')}">
                                    <input type="hidden" name="checkout" value="1">
                                    <input type="hidden" name="pid" value="{$plan->id}">
                                    {if !$inPreview}
                                        <input type="hidden" name="billingcycle" value="{$pricing->cycle()}">
                                        <button class="btn button-style hx-primary-btn btn-get-{$pricing->cycle()}" type="submit">
                                            {lang key="store.nordvpn.features.pricing.get"}
                                        </button>
                                    {/if}
                                </form>
                            </div>
                        </div>
                        </div>
                    {/foreach}
                {/foreach}
            </div>
        </div>
    </div>

    <div class="container line-break"></div>

    <div class="feature faq commom-faq p-vertical">
        <div class="container">
            <h2 class="text-center">{lang key="store.nordvpn.features.faq.title"}</h2>
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <div class="accordion" id="nordvpnFaq">
                        <div class="card">
                            <div class="card-header" id="heading1">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse1" aria-expanded="true" aria-controls="collapse1">
                                        {lang key="store.nordvpn.features.faq.question1"}
                                        <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse1" class="collapse show" aria-labelledby="heading1" data-parent="#nordvpnFaq">
                                <div class="card-body">
                                    {lang key="store.nordvpn.features.faq.answer1" tagOpen="<strong>" tagClose="</strong>"}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading2">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse2" aria-expanded="true" aria-controls="collapse2">
                                        {lang key="store.nordvpn.features.faq.question2"}
                                       <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse2" class="collapse" aria-labelledby="heading2" data-parent="#nordvpnFaq">
                                <div class="card-body">
                                    {lang key="store.nordvpn.features.faq.answer2"}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading3">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse3" aria-expanded="true" aria-controls="collapse3">
                                        {lang key="store.nordvpn.features.faq.question3"}
                                       <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse3" class="collapse" aria-labelledby="heading3" data-parent="#nordvpnFaq">
                                <div class="card-body">
                                    {lang key="store.nordvpn.features.faq.answer3"}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading4">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse4" aria-expanded="true" aria-controls="collapse4">
                                        {lang key="store.nordvpn.features.faq.question4"}
                                       <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse4" class="collapse" aria-labelledby="heading4" data-parent="#nordvpnFaq">
                                <div class="card-body">
                                    {lang key="store.nordvpn.features.faq.answer4"}
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="heading5">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapse5" aria-expanded="true" aria-controls="collapse5">
                                        {lang key="store.nordvpn.features.faq.question5"}
                                       <span class="arrow-new"><i class="fas fa-chevron-right"></i></span>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse5" class="collapse" aria-labelledby="heading5" data-parent="#nordvpnFaq">
                                <div class="card-body">
                                    {lang key="store.nordvpn.features.faq.answer5"}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<script>
    jQuery(document).ready(function() {
        jQuery('.accordion .card-header .btn').on('click', function() {
            var icon = jQuery(this).find('i');
            if (icon.hasClass('fa-plus')) {
                jQuery('.accordion .card-header .btn i.fa-minus').removeClass('fa-minus').addClass('fa-plus');
                icon.removeClass('fa-plus').addClass('fa-minus');
            } else {
                icon.removeClass('fa-minus').addClass('fa-plus');
            }
        });
    });
</script>
