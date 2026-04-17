<!doctype html>
<html lang="en">
<head>
    {include file="$template/hostx_seo/seo-meta-tags.tpl"}
    {include file="$template/includes/head.tpl"}
    {include file="$template/hostx_seo/seo-trackers.tpl"}
    {include file="$template/hostx_seo/livechatoptions.tpl"}
    {include file="$template/hostx_others_file/page-css.tpl"}
    {$headoutput}
    {include file="$template/hostx_seo/seo-markup-schema.tpl"}
</head>
<body class="primary-bg-color {if $inShoppingCart}whmcs-in-cart-pages {/if}whmcs-templatefile-{$templatefile|replace:'/':'-'} {$marketConnectStorePages} whmcs-user-{if $loggedin}loggedin{else}loggedout{/if} {if $whmcsDefaultPagesHostx eq 'true'}in-whmcs-default-pages{/if}{if !$inShoppingCart && $hostx_theme_settings.enable_primary_sidebar_left neq 'on' && $whmcsDefaultPagesHostx eq 'true' && $loggedin} left-side-bar-present{/if}{if $hostx_color_layout neq ''} {$hostx_color_layout}{/if} hostx-navigation-selected-{if $hostx_theme_settings.menu_layout eq 'dropdown_menu'}drop-down-type{elseif $hostx_theme_settings.menu_layout eq 'mega_menu'}mega-menu-old{elseif $hostx_theme_settings.menu_layout eq 'mega_menu_latest'}mega-menu-latest{elseif $hostx_theme_settings.menu_layout eq 'custom_menu_style_1'}custom-style-layout-first{/if} header-menu-open-on-{$hostx_theme_settings.dropdown_event} {if $hostx_theme_settings.enable_sticky_header eq 'on'}header-is-sticky{/if} {$sideBarHostxBodyClass} {if $smarty.get.m}{$smarty.get.m}{/if}" data-phone-cc-input="{$phoneNumberInputStyle}">
    {if $marketConnectStorePages neq ''}{assign skipMainBodyContainer true}{/if}
    {if $templatefile == 'contact' && !$loggedin}{assign sidebarHostxRemove true}{/if}
    {if $captcha}{$captcha->getMarkup()}{/if}
    {$headeroutput}
    {if $hostx_theme_settings.login_register_layout eq '1'}
        {if $templatefile != 'login' && $templatefile != 'clientregister' && $templatefile != 'password-reset-container'}
            {include file="$template/hostx_menus/hostx-headers.tpl"}
        {/if}
    {else}
        {include file="$template/hostx_menus/hostx-headers.tpl"}
    {/if}
    {if $sidebarHostxRemove == 'true' || $templatefile == 'homepage'}
        <section class="hostx-pages-sections">
    {else}
        {if !$inShoppingCart && $hostx_theme_settings.enable_primary_sidebar_left neq 'on' && $whmcsDefaultPagesHostx eq 'true' && $loggedin}
            <div class="hostx-child-side-bar-custom">
                <div class="header-side-bar">
                    <div class="inner-area-user-details">
                        <div class="client-image-area">
                            {if $avtarProfilePicClientHostx}<img src="{$avtarProfilePicClientHostx}" class="gavtar-image-sec">{else}<i class="fas fa-user"></i>{/if}
                        </div>
                        <div class="client-detail-content-area">
                            <h5 class="client-name-data">{$clientsdetails.fullname}</h5>
                        </div>
                    </div>
                </div>
                
                <ul class="hostx-side-nav-list {if $hostx_theme_settings.side_menu_layout eq 'whmcs_primary_menu'}whmcs-default-primary-nav-hostx{/if}">
                    {if $hostx_theme_settings.side_menu_layout eq 'whmcs_primary_menu'}
                        {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
                    {else}
                        {include file="$template/hostx_menus/side-menu-hostx/hostx-custom-left-menu.tpl"}
                    {/if}
                </ul>
            </div>
        {/if}
    <section id="main-body" class="{if $hostx_theme_settings.enable_default_home_page eq 'on' && $templatefile == 'homepage'}default-whmcs-home-page{/if} {if $templatefile eq 'login' || $templatefile eq 'clientregister'|| $templatefile eq 'password-reset-container'}{if $hostx_theme_settings.login_register_layout eq '1'}hostx-latest-login-register-view{/if}{/if}">
        {if !$sidebarHostxRemove && $templatefile != 'homepage' && $templatefile != 'login'}
            {if $hostx_theme_settings.login_register_layout eq '1'}
                {if $templatefile != 'clientregister' &&  $templatefile != 'password-reset-container'}
                    <nav class="master-breadcrumb hostx-bread-crumb-data" aria-label="breadcrumb">
                        <div class="container">
                            {include file="$template/includes/breadcrumb.tpl"}
                        </div>
                    </nav>
                {/if}
            {else}
                <nav class="master-breadcrumb hostx-bread-crumb-data" aria-label="breadcrumb">
                    <div class="container">
                        {include file="$template/includes/breadcrumb.tpl"}
                    </div>
                </nav>
            {/if}
        {/if}
        {if $inShoppingCart}
            <div class="shoping-cart-background {if $templatefile eq 'products'}cart-product-list{elseif $templatefile eq 'configureproduct'}cart-product-configure{elseif $templatefile eq 'viewcart'}cart-view-cart{elseif $templatefile eq 'checkout'}cart-checkout-cart{elseif $templatefile eq 'complete'}cart-complete-cart{/if}"></div>
        {/if}
        <div class="{if $whmcsDefaultPagesHostx eq 'true' && $templatefile neq 'login' && $templatefile neq 'clientregister' && $templatefile neq 'password-reset-container'}whmcs-client-area-pages-section {/if}{if !$skipMainBodyContainer}container{/if} {if $marketConnectStorePages neq ''}store-pages-market-place{/if}">
            <div class="row">
            <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren()) && $templatefile != 'clientregister'}col-lg-9 col-xl-10{else}col-12{/if} primary-content">
            {include file="$template/includes/network-issues-notifications.tpl"}
            {if $whmcsDefaultPagesHostx eq 'true'}
                {include file="$template/includes/validateuser.tpl"}
                {include file="$template/includes/verifyemail.tpl"}
            {/if}
    {/if}
