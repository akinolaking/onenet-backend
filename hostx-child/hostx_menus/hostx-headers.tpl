{* ============================================================
   OneNet Servers — hostx-headers.tpl
   Logged-in  : HostX client-area header (unchanged)
   Logged-out : Custom .onenet-header matching main site design
   ============================================================ *}

{if $whmcsDefaultPagesHostx eq 'true' && $loggedin}
    <div class="whmcs-client-area-header">
        <nav class="navbar navbar-light">
            {if !empty($hostx_theme_settings.header_logo)}
                <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}" {if $hostx_theme_settings.enable_header_target eq 'on'}target="_blank"{/if} class="navbar-brand">
                    <img src="{$hostx_theme_settings.header_logo}" alt="{$companyname}" {if $hostx_theme_settings.header_logo_height neq ''}height="{$hostx_theme_settings.header_logo_height}"{/if} {if $hostx_theme_settings.header_logo_width neq ''}width="{$hostx_theme_settings.header_logo_width}"{/if}>
                </a>
            {else}
                <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}" class="navbar-brand" {if $hostx_theme_settings.enable_header_target eq 'on'}target="_blank"{/if}>{$companyname}</a>
            {/if}
            <button class="side-bar-toggle"><span class="bars1"></span><span class="bars2"></span><span class="bars3"></span></button>
            <div class="right-header-client-area">
                <ul class="nav navbar-nav navbar-right right-list-client-detail d-flex">
                    {if $hostx_theme_settings.phone_display eq 'yes'}
                        {if empty($hostx_theme_settings.phone)}
                            <li><a href="tel:+{$LANG.headerphone}" class="telephone-client-area" title="{$LANG.headerphone}"><i class="fas fa-phone-alt"></i></a></li>
                        {else}
                            <li><a href="tel:+{$hostx_theme_settings.country_calling_code_phone}{$hostx_theme_settings.phone}" class="telephone-client-area" title="(+{$hostx_theme_settings.country_calling_code_phone}) {$hostx_theme_settings.phone}"><i class="fas fa-phone-alt"></i></a></li>
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
                                <li class="none">{lang key='notificationsnone'}</li>
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

    {* ── CUSTOM PUBLIC HEADER ─────────────────────────────── *}
    <header class="onenet-header" id="onenet-header">
        <nav class="onenet-nav">
            <div class="onenet-nav-inner">

                {* Logo *}
                <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}"
                   class="onenet-logo"
                   {if $hostx_theme_settings.enable_header_target eq 'on'}target="_blank"{/if}>
                    {if !empty($hostx_theme_settings.header_logo)}
                        <img src="{$hostx_theme_settings.header_logo}" alt="{$companyname}"
                             {if $hostx_theme_settings.header_logo_height neq ''}height="{$hostx_theme_settings.header_logo_height}"{/if}
                             {if $hostx_theme_settings.header_logo_width neq ''}width="{$hostx_theme_settings.header_logo_width}"{/if}>
                    {else}
                        <span style="font-size:18px;font-weight:700;color:var(--on-text)">{$companyname}</span>
                    {/if}
                </a>

                {* Desktop navigation — driven by HostX topMenusData *}
                {if $topMenusData}
                <ul class="onenet-nav-list">
                    {foreach $topMenusData as $item}
                        {if $item.submenu}
                            <li class="onenet-has-dropdown">
                                <button class="onenet-trigger" type="button" aria-expanded="false">
                                    {$item.name}
                                    <svg class="onenet-chevron" width="12" height="12" viewBox="0 0 12 12" fill="none" aria-hidden="true">
                                        <path d="M2 4l4 4 4-4" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                                </button>
                                <div class="onenet-dropdown">
                                    {foreach $item.submenu as $sub}
                                        {if $sub.childsubmenu}
                                            {foreach $sub.childsubmenu as $child}
                                                <a href="{if $child.menuthirdparty eq '1'}{$child.url}{else}{$WEB_ROOT}/{$child.url}{/if}"
                                                   class="onenet-dd-item{if $child.url eq ''} onenet-dd-disabled{/if}"
                                                   {if $child.menunewtab eq '1'}target="_blank"{/if}>
                                                    <span class="onenet-dd-icon">
                                                        {if $child.menu_icon_type eq '2'}
                                                            <img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$child.icon}" style="width:18px;height:18px;object-fit:contain" alt="">
                                                        {else}
                                                            <i class="{if $child.icon neq ''}{$child.icon}{else}fas fa-circle{/if}" aria-hidden="true"></i>
                                                        {/if}
                                                    </span>
                                                    <span class="onenet-dd-text">
                                                        <strong>{$child.name}</strong>
                                                    </span>
                                                </a>
                                            {/foreach}
                                        {else}
                                            <a href="{if $sub.menuthirdparty eq '1'}{$sub.url}{else}{$WEB_ROOT}/{$sub.url}{/if}"
                                               class="onenet-dd-item{if $sub.url eq ''} onenet-dd-disabled{/if}"
                                               {if $sub.menunewtab eq '1'}target="_blank"{/if}>
                                                <span class="onenet-dd-icon">
                                                    {if $sub.menu_icon_type eq '2'}
                                                        <img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$sub.icon}" style="width:18px;height:18px;object-fit:contain" alt="">
                                                    {else}
                                                        <i class="{if $sub.icon neq ''}{$sub.icon}{else}fas fa-circle{/if}" aria-hidden="true"></i>
                                                    {/if}
                                                </span>
                                                <span class="onenet-dd-text">
                                                    <strong>{$sub.name}</strong>
                                                </span>
                                            </a>
                                        {/if}
                                    {/foreach}
                                </div>
                            </li>
                        {else}
                            <li>
                                <a href="{if $item.menuthirdparty eq '1'}{$item.url}{else}{$WEB_ROOT}/{$item.url}{/if}"
                                   class="onenet-trigger"
                                   {if $item.menunewtab eq '1'}target="_blank"{/if}>{$item.name}</a>
                            </li>
                        {/if}
                    {/foreach}
                </ul>
                {/if}

                {* Right actions *}
                <div class="onenet-right-actions">

                    {* Currency selector *}
                    {if $currencies && $hostx_theme_settings.disable_multi_crrency eq 'on'}
                    <div class="onenet-currency-wrap">
                        <button class="onenet-currency-pill" id="onenet-curr-btn" type="button" aria-expanded="false">
                            {$hxselectedcurrency.prefix}&nbsp;{$hxselectedcurrency.code}
                            <svg width="10" height="10" viewBox="0 0 10 10" fill="none" aria-hidden="true">
                                <path d="M1.5 3.5l3.5 3.5 3.5-3.5" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                            </svg>
                        </button>
                        <div class="onenet-currency-dropdown" id="onenet-curr-drop">
                            {foreach from=$currencies item=curr}
                                <a href="{$currentpagelinkback}currency={$curr.id}" class="onenet-currency-opt">{$curr.prefix} {$curr.code}</a>
                            {/foreach}
                        </div>
                    </div>
                    {/if}

                    {* Cart *}
                    <a href="{$WEB_ROOT}/cart.php?a=view" class="onenet-cart-icon-btn" aria-label="Shopping cart">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                            <circle cx="9" cy="21" r="1"/><circle cx="20" cy="21" r="1"/>
                            <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"/>
                        </svg>
                        {if $cartitemcount > 0}<span class="onenet-cart-count">{$cartitemcount}</span>{/if}
                    </a>

                    {* Auth CTAs *}
                    <a href="{$WEB_ROOT}/clientarea.php" class="onenet-login-pill">
                        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/><circle cx="12" cy="7" r="4"/>
                        </svg>
                        Login
                    </a>
                    <a href="{$WEB_ROOT}/cart.php" class="onenet-getstarted-pill">Get Started</a>

                    {* Mobile hamburger *}
                    <button class="onenet-mobile-toggle" id="onenet-hamburger" type="button" aria-label="Open menu" aria-expanded="false">
                        <span class="onenet-bar"></span>
                        <span class="onenet-bar"></span>
                        <span class="onenet-bar"></span>
                    </button>

                </div>{* /.onenet-right-actions *}
            </div>{* /.onenet-nav-inner *}
        </nav>
    </header>

    {* Mobile overlay *}
    <div class="onenet-mobile-overlay" id="onenet-overlay" aria-hidden="true"></div>

    {* Mobile sheet *}
    <div class="onenet-mobile-sheet" id="onenet-sheet" role="dialog" aria-label="Navigation menu">

        <div class="onenet-mobile-head">
            <a href="{$systemurl}" class="onenet-mobile-logo">
                {if !empty($hostx_theme_settings.header_logo)}
                    <img src="{$hostx_theme_settings.header_logo}" alt="{$companyname}">
                {else}
                    <span style="font-size:16px;font-weight:700;color:var(--on-text)">{$companyname}</span>
                {/if}
            </a>
            <button class="onenet-mobile-close" id="onenet-close" type="button" aria-label="Close menu">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                    <line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/>
                </svg>
            </button>
        </div>

        {* Quick contact CTAs *}
        <div class="onenet-mobile-quick">
            {if $hostx_theme_settings.phone_display eq 'yes' && $hostx_theme_settings.phone neq ''}
                <a href="https://wa.me/{$hostx_theme_settings.country_calling_code_phone}{$hostx_theme_settings.phone|replace:' ':''}" class="onenet-mobile-cta onenet-cta-wa" target="_blank" rel="noopener">
                    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true">
                        <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/>
                    </svg>
                    WhatsApp
                </a>
            {/if}
            <a href="{$WEB_ROOT}/submitticket.php" class="onenet-mobile-cta">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                    <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/>
                </svg>
                Support
            </a>
        </div>

        {* Phone numbers *}
        {if $hostx_theme_settings.phone_display eq 'yes' && $hostx_theme_settings.phone neq ''}
        <div class="onenet-mobile-phones">
            <a href="tel:+{$hostx_theme_settings.country_calling_code_phone}{$hostx_theme_settings.phone}" class="onenet-mobile-phone">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                    <path d="M22 16.92v3a2 2 0 01-2.18 2 19.79 19.79 0 01-8.63-3.07A19.5 19.5 0 013.07 9.81 19.79 19.79 0 01.1 1.18 2 2 0 012.11 0h3a2 2 0 012 1.72 12.84 12.84 0 00.7 2.81 2 2 0 01-.45 2.11L6.09 7.91a16 16 0 006 6l1.27-1.27a2 2 0 012.11-.45 12.84 12.84 0 002.81.7A2 2 0 0122 16.92z"/>
                </svg>
                (+{$hostx_theme_settings.country_calling_code_phone}) {$hostx_theme_settings.phone}
            </a>
        </div>
        {/if}

        {* Mobile nav accordion *}
        {if $topMenusData}
        <nav class="onenet-mobile-nav">
            {foreach $topMenusData as $item}
                {if $item.submenu}
                <div class="onenet-mob-group">
                    <button class="onenet-mob-trigger" type="button">
                        {$item.name}
                        <svg class="onenet-mob-chevron" width="14" height="14" viewBox="0 0 14 14" fill="none" aria-hidden="true">
                            <path d="M2.5 5l4.5 4.5 4.5-4.5" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </button>
                    <div class="onenet-mob-panel">
                        {foreach $item.submenu as $sub}
                            {if $sub.childsubmenu}
                                {foreach $sub.childsubmenu as $child}
                                    <a href="{if $child.menuthirdparty eq '1'}{$child.url}{else}{$WEB_ROOT}/{$child.url}{/if}"
                                       class="onenet-mob-link{if $child.url eq ''} onenet-mob-disabled{/if}"
                                       {if $child.menunewtab eq '1'}target="_blank"{/if}>{$child.name}</a>
                                {/foreach}
                            {else}
                                <a href="{if $sub.menuthirdparty eq '1'}{$sub.url}{else}{$WEB_ROOT}/{$sub.url}{/if}"
                                   class="onenet-mob-link{if $sub.url eq ''} onenet-mob-disabled{/if}"
                                   {if $sub.menunewtab eq '1'}target="_blank"{/if}>{$sub.name}</a>
                            {/if}
                        {/foreach}
                    </div>
                </div>
                {else}
                <div class="onenet-mob-group">
                    <a href="{if $item.menuthirdparty eq '1'}{$item.url}{else}{$WEB_ROOT}/{$item.url}{/if}"
                       class="onenet-mob-trigger" style="text-decoration:none"
                       {if $item.menunewtab eq '1'}target="_blank"{/if}>{$item.name}</a>
                </div>
                {/if}
            {/foreach}
        </nav>
        {/if}

        {* Mobile currency *}
        {if $currencies && $hostx_theme_settings.disable_multi_crrency eq 'on'}
        <div class="onenet-mob-currency">
            <span class="onenet-mob-currency-label">Currency</span>
            <div class="onenet-mob-currency-pills">
                {foreach from=$currencies item=curr}
                    <a href="{$currentpagelinkback}currency={$curr.id}"
                       class="onenet-mob-curr-pill{if $curr.id eq $hxselectedcurrency.id} onenet-mob-curr-active{/if}">
                        {$curr.prefix} {$curr.code}
                    </a>
                {/foreach}
            </div>
        </div>
        {/if}

        {* Mobile auth CTAs *}
        <div class="onenet-mob-ctas">
            <a href="{$WEB_ROOT}/clientarea.php" class="onenet-mob-login">Login</a>
            <a href="{$WEB_ROOT}/cart.php" class="onenet-mob-getstarted">Get Started</a>
        </div>

    </div>{* /.onenet-mobile-sheet *}

    {* Interactivity script *}
    <script>
    (function () {
        var header    = document.getElementById('onenet-header');
        var hamburger = document.getElementById('onenet-hamburger');
        var overlay   = document.getElementById('onenet-overlay');
        var sheet     = document.getElementById('onenet-sheet');
        var closeBtn  = document.getElementById('onenet-close');
        var currBtn   = document.getElementById('onenet-curr-btn');
        var currDrop  = document.getElementById('onenet-curr-drop');

        /* sticky shadow */
        window.addEventListener('scroll', function () {
            if (header) header.classList.toggle('onenet-sticky', window.scrollY > 4);
        }, { passive: true });

        /* mobile sheet open/close */
        function openSheet() {
            document.body.classList.add('onenet-mobile-open');
            if (hamburger) hamburger.setAttribute('aria-expanded', 'true');
            if (sheet) sheet.removeAttribute('aria-hidden');
        }
        function closeSheet() {
            document.body.classList.remove('onenet-mobile-open');
            if (hamburger) hamburger.setAttribute('aria-expanded', 'false');
            if (sheet) sheet.setAttribute('aria-hidden', 'true');
        }
        if (hamburger) hamburger.addEventListener('click', openSheet);
        if (closeBtn)  closeBtn.addEventListener('click', closeSheet);
        if (overlay)   overlay.addEventListener('click', closeSheet);

        /* desktop dropdowns */
        document.querySelectorAll('.onenet-has-dropdown').forEach(function (li) {
            var trigger = li.querySelector('.onenet-trigger');
            li.addEventListener('mouseenter', function () {
                li.classList.add('onenet-open');
                if (trigger) trigger.setAttribute('aria-expanded', 'true');
            });
            li.addEventListener('mouseleave', function () {
                li.classList.remove('onenet-open');
                if (trigger) trigger.setAttribute('aria-expanded', 'false');
            });
            li.addEventListener('focusin', function () { li.classList.add('onenet-open'); });
            li.addEventListener('focusout', function (e) {
                if (!li.contains(e.relatedTarget)) li.classList.remove('onenet-open');
            });
        });

        /* currency dropdown */
        if (currBtn && currDrop) {
            currBtn.addEventListener('click', function (e) {
                e.stopPropagation();
                var open = currDrop.classList.toggle('onenet-open');
                currBtn.setAttribute('aria-expanded', open ? 'true' : 'false');
            });
            document.addEventListener('click', function () { currDrop.classList.remove('onenet-open'); });
        }

        /* mobile accordion */
        document.querySelectorAll('.onenet-mob-trigger[type="button"]').forEach(function (btn) {
            btn.addEventListener('click', function () {
                var group = btn.closest('.onenet-mob-group');
                if (group) group.classList.toggle('onenet-mob-open');
            });
        });
    })();
    </script>

{/if}
