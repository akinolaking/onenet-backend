{* ============================================================
   OneNet Servers — hostx-headers.tpl v2
   Logged-in  : HostX client-area header (colour/style only)
   Logged-out : Custom .onenet-header matching main site design
   ============================================================ *}

{if $whmcsDefaultPagesHostx eq 'true' && $loggedin}
    <div class="whmcs-client-area-header">
        <nav class="navbar navbar-light">
            <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}"
               class="navbar-brand onenet-ca-brand"
               {if $hostx_theme_settings.enable_header_target eq 'on'}target="_blank"{/if}>
                <img src="{$WEB_ROOT}/templates/{$template}/images/onenet-logo-icon.svg"
                     alt="{$companyname}" width="28" height="28" style="display:block">
            </a>
            <button class="side-bar-toggle"><span class="bars1"></span><span class="bars2"></span><span class="bars3"></span></button>
            <div class="right-header-client-area">
                <ul class="nav navbar-nav navbar-right right-list-client-detail d-flex">
                    {if $hostx_theme_settings.phone_display eq 'yes'}
                        {if empty($hostx_theme_settings.phone)}
                            <li><a href="tel:+{$LANG.headerphone}" class="telephone-client-area" title="{$LANG.headerphone}"><i class="fas fa-phone-alt"></i></a></li>
                        {else}
                            <li><a href="tel:+{$hostx_theme_settings.country_calling_code_phone}{$hostx_theme_settings.phone}" class="telephone-client-area"><i class="fas fa-phone-alt"></i></a></li>
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

                {* Logo — icon + brand name *}
                <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}"
                   class="onenet-logo"
                   {if $hostx_theme_settings.enable_header_target eq 'on'}target="_blank"{/if}
                   aria-label="{$companyname} home">
                    <img src="{$WEB_ROOT}/templates/{$template}/images/onenet-logo-icon.svg"
                         alt="" width="30" height="30" aria-hidden="true">
                    <span class="onenet-brand-name">OneNet Servers</span>
                </a>

                {* Desktop navigation *}
                {if $topMenusData}
                <ul class="onenet-nav-list">
                    {foreach $topMenusData as $item}
                        {if $item.submenu}
                            <li class="onenet-has-dropdown">
                                <button class="onenet-trigger" type="button" aria-expanded="false" aria-haspopup="true">
                                    {$item.name}
                                    <svg class="onenet-chevron" width="12" height="12" viewBox="0 0 12 12" fill="none" aria-hidden="true">
                                        <path d="M2 4l4 4 4-4" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                                </button>
                                {* invisible bridge — prevents gap-gap mouseleave *}
                                <div class="onenet-dd-bridge" aria-hidden="true"></div>
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
                                                    {if $sub.menu_tag_line neq ''}<em>{$sub.menu_tag_line}</em>{/if}
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

                    {* Language pill *}
                    {if $languagechangeenabled && count($locales) > 1}
                    <div class="onenet-lang-wrap">
                        <button class="onenet-lang-pill" id="onenet-lang-btn" type="button" aria-expanded="false">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                                <circle cx="12" cy="12" r="10"/><line x1="2" y1="12" x2="22" y2="12"/>
                                <path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"/>
                            </svg>
                            {$hxselectedlanguage.localisedName}
                        </button>
                        <div class="onenet-lang-dropdown" id="onenet-lang-drop">
                            {foreach $hxlanguagesflags as $locale}
                                <a href="{$currentpagelinkback}language={$locale.language}" class="onenet-currency-opt">
                                    <img src="{$WEB_ROOT}/templates/{$template}/images/blank.gif" class="flag flag-{$locale.flagcode}" alt="{$locale.localisedName}">
                                    {$locale.localisedName}
                                </a>
                            {/foreach}
                        </div>
                    </div>
                    {/if}

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
            <a href="{$systemurl}" class="onenet-mobile-logo" aria-label="{$companyname} home">
                <img src="{$WEB_ROOT}/templates/{$template}/images/onenet-logo-icon.svg"
                     alt="" width="26" height="26" aria-hidden="true">
                <span class="onenet-brand-name" style="font-size:14px">OneNet Servers</span>
            </a>
            <button class="onenet-mobile-close" id="onenet-close" type="button" aria-label="Close menu">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                    <line x1="18" y1="6" x2="6" y2="18"/><line x1="6" y1="6" x2="18" y2="18"/>
                </svg>
            </button>
        </div>

        {* Quick contact CTAs *}
        <div class="onenet-mobile-quick">
            <a href="tel:+2342013309154" class="onenet-mobile-cta">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                    <path d="M22 16.92v3a2 2 0 01-2.18 2 19.79 19.79 0 01-8.63-3.07A19.5 19.5 0 013.07 9.81 19.79 19.79 0 01.1 1.18 2 2 0 012.11 0h3a2 2 0 012 1.72 12.84 12.84 0 00.7 2.81 2 2 0 01-.45 2.11L6.09 7.91a16 16 0 006 6l1.27-1.27a2 2 0 012.11-.45 12.84 12.84 0 002.81.7A2 2 0 0122 16.92z"/>
                </svg>
                Call Sales
            </a>
            <a href="https://wa.me/2342013309154" class="onenet-mobile-cta onenet-cta-wa" target="_blank" rel="noopener">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true">
                    <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/>
                </svg>
                WhatsApp
            </a>
        </div>

        {* Phone numbers *}
        <div class="onenet-mobile-phones">
            <a href="tel:+2342013309154" class="onenet-mobile-phone">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                    <path d="M22 16.92v3a2 2 0 01-2.18 2 19.79 19.79 0 01-8.63-3.07A19.5 19.5 0 013.07 9.81 19.79 19.79 0 01.1 1.18 2 2 0 012.11 0h3a2 2 0 012 1.72 12.84 12.84 0 00.7 2.81 2 2 0 01-.45 2.11L6.09 7.91a16 16 0 006 6l1.27-1.27a2 2 0 012.11-.45 12.84 12.84 0 002.81.7A2 2 0 0122 16.92z"/>
                </svg>
                +234 201 330 9154 (Nigeria)
            </a>
            <a href="tel:+447333880775" class="onenet-mobile-phone">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
                    <path d="M22 16.92v3a2 2 0 01-2.18 2 19.79 19.79 0 01-8.63-3.07A19.5 19.5 0 013.07 9.81 19.79 19.79 0 01.1 1.18 2 2 0 012.11 0h3a2 2 0 012 1.72 12.84 12.84 0 00.7 2.81 2 2 0 01-.45 2.11L6.09 7.91a16 16 0 006 6l1.27-1.27a2 2 0 012.11-.45 12.84 12.84 0 002.81.7A2 2 0 0122 16.92z"/>
                </svg>
                +44 7333 880 775 (UK)
            </a>
        </div>

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
                       class="onenet-mob-trigger" style="text-decoration:none;display:flex;align-items:center"
                       {if $item.menunewtab eq '1'}target="_blank"{/if}>{$item.name}</a>
                </div>
                {/if}
            {/foreach}
        </nav>
        {/if}

        {* Mobile language *}
        {if $languagechangeenabled && count($locales) > 1}
        <div class="onenet-mob-currency">
            <span class="onenet-mob-currency-label">Language</span>
            <div class="onenet-mob-currency-pills">
                {foreach $hxlanguagesflags as $locale}
                    <a href="{$currentpagelinkback}language={$locale.language}"
                       class="onenet-mob-curr-pill{if $locale.language eq $hxselectedlanguage.language} onenet-mob-curr-active{/if}">
                        <img src="{$WEB_ROOT}/templates/{$template}/images/blank.gif" class="flag flag-{$locale.flagcode}" alt="" style="width:16px;height:11px;vertical-align:middle;margin-right:4px">
                        {$locale.localisedName}
                    </a>
                {/foreach}
            </div>
        </div>
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

    {* ── Interactivity ───────────────────────────────────────── *}
    <script>
    (function () {
        var header    = document.getElementById('onenet-header');
        var hamburger = document.getElementById('onenet-hamburger');
        var overlay   = document.getElementById('onenet-overlay');
        var sheet     = document.getElementById('onenet-sheet');
        var closeBtn  = document.getElementById('onenet-close');
        var currBtn   = document.getElementById('onenet-curr-btn');
        var currDrop  = document.getElementById('onenet-curr-drop');
        var langBtn   = document.getElementById('onenet-lang-btn');
        var langDrop  = document.getElementById('onenet-lang-drop');

        /* sticky shadow */
        window.addEventListener('scroll', function () {
            if (header) header.classList.toggle('onenet-sticky', window.scrollY > 4);
        }, { passive: true });

        /* mobile sheet */
        function openSheet() {
            document.body.classList.add('onenet-mobile-open');
            if (hamburger) hamburger.setAttribute('aria-expanded', 'true');
        }
        function closeSheet() {
            document.body.classList.remove('onenet-mobile-open');
            if (hamburger) hamburger.setAttribute('aria-expanded', 'false');
        }
        if (hamburger) hamburger.addEventListener('click', openSheet);
        if (closeBtn)  closeBtn.addEventListener('click', closeSheet);
        if (overlay)   overlay.addEventListener('click', closeSheet);

        /* desktop dropdowns — hover with bridge + 220ms close grace */
        document.querySelectorAll('.onenet-has-dropdown').forEach(function (li) {
            var trigger = li.querySelector('.onenet-trigger');
            var timer;
            function open() {
                clearTimeout(timer);
                li.classList.add('onenet-open');
                if (trigger) trigger.setAttribute('aria-expanded', 'true');
            }
            function scheduleClose() {
                timer = setTimeout(function () {
                    li.classList.remove('onenet-open');
                    if (trigger) trigger.setAttribute('aria-expanded', 'false');
                }, 220);
            }
            li.addEventListener('mouseenter', open);
            li.addEventListener('mouseleave', scheduleClose);
            li.addEventListener('focusin',    open);
            li.addEventListener('focusout', function (e) {
                if (!li.contains(e.relatedTarget)) scheduleClose();
            });
        });

        /* currency dropdown */
        function togglePill(btn, drop) {
            if (!btn || !drop) return;
            btn.addEventListener('click', function (e) {
                e.stopPropagation();
                var open = drop.classList.toggle('onenet-open');
                btn.setAttribute('aria-expanded', open ? 'true' : 'false');
            });
        }
        togglePill(currBtn, currDrop);
        togglePill(langBtn, langDrop);
        document.addEventListener('click', function () {
            [currDrop, langDrop].forEach(function(d) { if (d) d.classList.remove('onenet-open'); });
        });

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
