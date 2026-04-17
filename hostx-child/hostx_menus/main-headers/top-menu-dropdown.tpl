<nav class="nav_bar navbar-expand-lg simple-drop-down" id="myHeader">
    <div class="container">
        <div class="navbar-toggleable-md collapse navbar-collapse" id="mainNavbarCollapse">
            <ul class="ddnavbar navbar-nav justify-content-between w100p" id="hostx-drop-down-menus">
                {foreach $topMenusData as $topMenuData}
                    <li  class="{if $topMenuData.menutype neq '1'}dropdown-menu-default-open-on-{$hostx_theme_settings.dropdown_event}{/if}"> 
                        <a class="nav-link {if $topMenuData.menutype neq '1'}dropdown-toggle{/if} menu_top menu-drop-hx" 
                        href="{if $topMenuData.menuthirdparty eq '1'}{$topMenuData.url}{else}{if $topMenuData.menutype eq '3' || $topMenuData.menutype eq '2'}javascript:void(0);{else}{$WEB_ROOT}/{$topMenuData.url}{/if}{/if}"{if $topMenuData.menunewtab eq '1'}target="_blank"{/if}>{$topMenuData.name}</a>
                        {if $topMenuData.menutype eq '3' || $topMenuData.menutype eq '2'}
                            <ul class="submenu">
                                {foreach $topMenuData.submenu as $submenu} 
                                    <li class="{if $submenu.menutype eq '2'}drop-down-have-child{/if}{if $submenu.menu_icon_type eq '2'} drop-have-img-icon{/if}">
                                        <a href="{if $submenu.menuthirdparty eq '1'}{$submenu.url}{else}{if $submenu.url neq '#'}{$WEB_ROOT}/{$submenu.url}{else}javascript:void(0);{/if}{/if}" {if $submenu.menutype eq '2'} class="pmenua menu-drop-hx" {/if} {if $submenu.menunewtab eq '1'}target="_blank"{/if}>
                                        {if $submenu.menu_icon_type eq '2'}
                                            <img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$submenu.icon}" class="sub-menu-img-icon-drop-menu">
                                        {else}
                                            <i class="{if $submenu.icon neq ''}{$submenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>
                                        {/if}                                        
                                        {$submenu.name}
                                        </a>
                                        {if $topMenuData.menutype eq '3'}
                                            <ul class="childsubmenu">
                                                {foreach $submenu.childsubmenu as $childsubmenu}
                                                    <li class="{if $childsubmenu.menu_icon_type eq '2'} drop-have-img-icon{/if}">
                                                        <a class="nav-link" href="{if $childsubmenu.menuthirdparty eq '1'}{$childsubmenu.url}{else}{$WEB_ROOT}/{$childsubmenu.url}{/if}" {if $childsubmenu.menunewtab eq '1'}target="_blank"{/if}>
                                                        {if $childsubmenu.menu_icon_type eq '2'}
                                                            <img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$childsubmenu.icon}" class="child-menu-img-icon-drop-menu">
                                                        {else}
                                                            <i class="{if $childsubmenu.icon neq ''}{$childsubmenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>
                                                        {/if}
                                                        {$childsubmenu.name}</a>
                                                    </li>
                                                {/foreach}
                                            </ul>  
                                        {/if}
                                    </li>
                                {/foreach}
                            </ul>
                        {/if}  
                    </li>  
                {/foreach}
                {if $hostx_theme_settings.header_button_txt neq ''}       
                    <li class="menu-last-btn">
                        <a href="{$hostx_theme_settings.header_button_link}" class="nav-link" {if $hostx_theme_settings.header_button_link eq '#' || $hostx_theme_settings.header_button_link eq ''} role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"{/if}><i class="fas fa-search"></i> {$hostx_theme_settings.header_button_txt}</a>
                        <div class="dropdown-menu megamenu">
                            <div class="container container-domain mega-menu-domain-search">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <form action="{$WEB_ROOT}/domainchecker.php" method="post">  
                                            <input type="hidden" name="register">
                                            <div class="left-domain-bnr">
                                                <h2>{$LANG.findyour} <span class="red-sp-d">{$LANG.headerdomain}</span> {$LANG.contactname}</h2>
                                                <div class="domain-name-cintainer">
                                                    <div class="domain-name-cintainer-inner">
                                                        <label class="d-searchicon"><i class="fas fa-search"></i></label>
                                                        <input type="text" class="form-control input-domain" placeholder="{$LANG.domainBlockPlaceHolder}" name="domain">
                                                        <button type="submit" class="btn btn-default domain-search-bn">{$LANG.domainsearch}</button> 
                                                    </div>
                                                </div>
                                                {if $tld_data['tld_count_on_menu'] gt 0 }
                                                    <ul class="domain-name-ul {if $tld_data['tld_count_on_menu'] gt 5 }domain-search-menu-slider{/if}">
                                                        {foreach from=$tld_data['show_on_menu']  item=sale_item}
                                                            <li class="block-{$sale_item->tld_id}"><strong class="font-22" ><span>.</span>{$sale_item->tld_id}</strong><span>{$sale_item->register}</span></li>
                                                        {/foreach}
                                                    </ul>
                                                {/if}
                                            </div>
                                        </form>    
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="banner-right-domain-img">
                                            <img src="{$WEB_ROOT}/templates/{$template}/images/www-img.png" alt="search your domain">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li> 
                {/if}
            </ul>
        </div>
    </div>
</nav> 