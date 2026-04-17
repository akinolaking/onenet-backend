<header class="menu-style-4 menu-V4" id="myHeader">
    <nav class="navbar navbar-style-four">
        <div class="container">
            {if !empty($hostx_theme_settings.header_logo)}
                <a class="navbar-brand-4 me-4 has-logo" href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}" target="{if $hostx_theme_settings.enable_header_target eq 'on'}_blank{else}_self{/if}">
                    <img src="{$hostx_theme_settings.header_logo}" alt="{$companyname}" height="{$hostx_theme_settings.header_logo_height}" width="{$hostx_theme_settings.header_logo_width}">
                </a>
            {else}
                <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}" target="{if $hostx_theme_settings.enable_header_target eq 'on'}_blank{else}_self{/if}" class="navbar-brand-4 me-4 has-no-logo">{$companyname}</a>
            {/if}
            <div class="navbar-style-4 d-flex justify-content-end">
                <ul class="navbar-nav-four ms-auto-2 mb-lg-0">
                    {foreach $topMenusData as $topMenuData}
                        <li class="nav-4-item dropdown-4 {if $topMenuData.submenu && count($topMenuData.submenu) > 0}parentMenuHaveChild {/if}{if $topMenuData.submenu && count($topMenuData.submenu) > 3}multi-child{/if}">
                            <a href="{if $topMenuData.menuthirdparty eq '1'}{$topMenuData.url}{else}{if $topMenuData.menutype eq '3' || $topMenuData.menutype eq '2'}javascript:void(0){else}{$systemurl}/{$topMenuData.url}{/if}{/if}" class="dropdown-4-toggle {$topMenuData.menutype}">{$topMenuData.name}</a>
                            {if $topMenuData.submenu}
                                <ul class="dropdown-4-menu {if count($topMenuData.submenu) > 3}sub-menu{/if}">
                                    {foreach $topMenuData.submenu as $submenu}
                                        <li class="submenu-list-style-4">
                                            <a class="dropdown-4-item" href="{if $submenu.menuthirdparty eq '1'}{$submenu.url}{else}{$WEB_ROOT}/{$submenu.url}{/if}" {if $submenu.menunewtab eq '1'}target="_blank"{/if}>
                                                <div class="dropdown-4-item-wrapper">
                                                    <div class="dropdown-4-icon-box icon-y">
                                                        {if $submenu.menu_icon_type eq '2'}
                                                            <img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$submenu.icon}" class="sub-menu-img-icon">
                                                        {else}
                                                            <i class="{if $submenu.icon neq ''}{$submenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>
                                                        {/if}
                                                    </div>
                                                    <div class="dropdown-4-content">
                                                        <span>{$submenu.name}</span>
                                                        {if $submenu.menu_tag_line neq ''}
                                                            <p>{$submenu.menu_tag_line}</p>
                                                        {/if}
                                                    </div>
                                                </div>
                                            </a>                                           
                                        </li>
                                    {/foreach}
                                </ul>
                            {/if}
                        </li>
                    {/foreach}
                </ul>
            </div>
        </div>
    </nav>
</header>