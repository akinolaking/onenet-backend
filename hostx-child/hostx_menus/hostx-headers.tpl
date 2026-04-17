{if $whmcsDefaultPagesHostx eq 'true' &&  $loggedin}
    <div class="whmcs-client-area-header">
        <nav class="navbar navbar-light">
            {if !empty($hostx_theme_settings.header_logo)}
                <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}" {if $hostx_theme_settings.enable_header_target eq 'on'}target="_blank"{/if}  class="navbar-brand">
                    <img src="{$hostx_theme_settings.header_logo}" alt="{$companyname}" {if $hostx_theme_settings.header_logo_height neq ''}height="{$hostx_theme_settings.header_logo_height}"{/if} {if $hostx_theme_settings.header_logo_width neq ''}width="{$hostx_theme_settings.header_logo_width}" {/if}>
                </a>
            {else}
                <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}" class="navbar-brand" {if $hostx_theme_settings.enable_header_target eq 'on'}target="_blank"{/if}>{$companyname}</a>
            {/if}
            <button class="side-bar-toggle"><span class="bars1"></span><span class="bars2"></span><span class="bars3"></span></button>
            <div class="right-header-client-area">
                <ul class="nav navbar-nav navbar-right right-list-client-detail d-flex">
                    {if $hostx_theme_settings.phone_display eq 'yes'}
                        {if empty($hostx_theme_settings.phone)}
                            <li>
                                <a href="tel:+{$LANG.headerphone}" class="telephone-client-area" title="{$LANG.headerphone}"><i class="fas fa-phone-alt"></i></a>
                            </li>
                        {else}
                            <li>
                                <a href="tel:+{$hostx_theme_settings.country_calling_code_phone}{$hostx_theme_settings.phone}" class="telephone-client-area" title="(+{$hostx_theme_settings.country_calling_code_phone}) {$hostx_theme_settings.phone}"><i class="fas fa-phone-alt"></i></a>
                            </li>
                        {/if}
                    {/if}
                    <li class="cart-view-area-client-area">
                        <a href="{$WEB_ROOT}/cart.php?a=view">
                            <i class="fas fa-shopping-cart"></i>
                            <span class="badge badge-primary {if $cartitemcount > 0}blink-iteam-icon{/if}">{$cartitemcount}</span>
                        </a>
                    </li>
                    <li class="notification-list">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">
                            <i class="fas fa-bell"></i>
                            {if count($clientAlerts) > 0}
                                <span class="badge badge-primary blink-iteam-icon">{count($clientAlerts)}</span>
                            {else}
                                <span class="badge badge-primary">0</span>
                            {/if}
                        </a>
                        <ul class="dropdown-menu client-alerts">
                            {foreach $clientAlerts as $alert}
                                <li>
                                    <a href="{$alert->getLink()}">
                                        <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                        <div class="message">{$alert->getMessage()}</div>
                                    </a>
                                </li>
                            {foreachelse}
                                <li class="none">
                                    {lang key='notificationsnone'}
                                </li>
                            {/foreach}
                        </ul>
                    </li>
                    {if $languagechangeenabled && count($locales) > 1}
                        <li class="language-list">
                            <a class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">
                                <img src="{$WEB_ROOT}/templates/{$template}/images/blank.gif" class="flag flag-{$hxselectedlanguage.flagcode}" alt="{$hxselectedlanguage.localisedName}" />
                            </a>
                            <ul class="dropdown-menu language-data">
                                {foreach $hxlanguagesflags as $locale}
                                    <li class="lang-list">
                                        <a class="dropdown-item" href="{$currentpagelinkback}language={$locale.language}">
                                            <img src="{$WEB_ROOT}/templates/{$template}/images/blank.gif" class="flag flag-{$locale.flagcode}" alt="{$locale.localisedName}" /> {$locale.localisedName}
                                        </a>
                                    </li>
                                {/foreach}
                            </ul>
                        </li>
                    {/if}
                    {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar rightDrop=true}                   
                </ul>
            </div>
        </nav>
    </div>
{else}
    {if $hostx_theme_settings.menu_layout eq 'dropdown_menu'}
        <div class="container-custom-header-hostx-wrapper hostx-nav-drop-down-style">
            {include file="$template/hostx_menus/top-most-header/drop-down-top-most.tpl"}
            {include file="$template/hostx_menus/main-headers/top-menu-dropdown.tpl"}
            {include file="$template/hostx_menus/mobile-menus/drop-down-mega-mobile-menu.tpl"}
        </div>
    {elseif $hostx_theme_settings.menu_layout eq 'mega_menu'}
        <div class="container-custom-header-hostx-wrapper hostx-nav-mega-menu-style">
            {include file="$template/hostx_menus/top-most-header/mega-menu-default-top-most.tpl"}
            {include file="$template/hostx_menus/main-headers/top-mega-menu-default.tpl"}
            {include file="$template/hostx_menus/mobile-menus/drop-down-mega-mobile-menu.tpl"}
        </div>
    {elseif $hostx_theme_settings.menu_layout eq 'mega_menu_latest'}
        <div class="container-custom-header-hostx-wrapper hostx-nav-mega-menu-latest-style">
            {include file="$template/hostx_menus/top-most-header/mega-menu-latest-top-most.tpl"}
            {include file="$template/hostx_menus/main-headers/top-mega-menu-latest.tpl"}
            {include file="$template/hostx_menus/mobile-menus/drop-down-mega-mobile-menu.tpl"}
        </div>
    {elseif $hostx_theme_settings.menu_layout eq 'menu_V4'}
        <div class="container-custom-header-hostx-wrapper hostx-nav-v4-style">
            {include file="$template/hostx_menus/top-most-header/header-menu-v4-top-most.tpl"}
            {include file="$template/hostx_menus/main-headers/top-header-menu-v4.tpl"}
            {include file="$template/hostx_menus/mobile-menus/drop-down-mega-mobile-menu.tpl"}
        </div>		
    {/if}
{/if}