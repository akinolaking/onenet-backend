<nav class="nav_bar navbar-expand-lg mega-menu-old" id="myHeader">

    <div class="container">

        <div class="navbar-toggleable-md wgs-new-mega-menu">

            {if !empty($hostx_theme_settings.header_logo)}

                <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}" {if $hostx_theme_settings.enable_header_target eq 'on'}target="_blank"{/if}  class="logo">

                    <img src="{$hostx_theme_settings.header_logo}" alt="{$companyname}" {if $hostx_theme_settings.header_logo_height neq ''}height="{$hostx_theme_settings.header_logo_height}"{/if} {if $hostx_theme_settings.header_logo_width neq ''}width="{$hostx_theme_settings.header_logo_width}" {/if}>

                </a>

            {else}

                <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}" class="logo logo-text" {if $hostx_theme_settings.enable_header_target eq 'on'}target="_blank"{/if}>{$companyname}</a>

            {/if}

            <ul class="nav navbar-nav">

                {foreach $topMenusData as $topMenuData}

                    <li class="{if $topMenuData.menutype neq '1'}hostx-dropdown mega-menu-default-open-on-{$hostx_theme_settings.dropdown_event}{/if}" > <a class="nav-link {if $topMenuData.menutype neq '1'}dropdown-toggle{/if} menu_top" 

                    href="{if $topMenuData.menuthirdparty eq '1'}{$topMenuData.url}{else}

                    {if $topMenuData.menutype eq '3' || $topMenuData.menutype eq '2'}javascript:void(0){else}{$WEB_ROOT}/{$topMenuData.url}{/if}{/if}" 

                    {if $topMenuData.menunewtab eq '1'}target="_blank"{/if}>{$topMenuData.name}</a>

                        {if $topMenuData.menutype neq '1'}

                            <div class="dropdown-menu megamenu">

                                <div class="container">

                                    <div class="row">

                                        <div class="col-md-9">

                                            <div class="row">

                                                {if $topMenuData.description neq ''}

                                                    <div class="col-md-3">

                                                        <div class="drow_menu">

                                                            <h3>{$topMenuData.name}</h3>

                                                            <p>{$topMenuData.description|html_entity_decode}</p>

                                                            {if $topMenuData.caption_button_name neq ''}

                                                                <a href="{$topMenuData.menu_caption_url}" class="btn btn-danger text-uppercase learn_btn"><b>{$topMenuData.caption_button_name}</b></a>

                                                            {/if}

                                                        </div>

                                                    </div>

                                                {/if}  

                                                {if $topMenuData.menutype eq '3'}

                                                    {foreach $topMenuData.submenu as $submenu}  

                                                        {if $submenu.childsubmenu}

                                                            <div class="col-md-3 drow_menu">

                                                                <h5>{$submenu.name}</h5>

                                                                <ul class="nav flex-column ">

                                                                    {foreach $submenu.childsubmenu as $childsubmenu}

                                                                        <li class="nav-item">

                                                                            <a class="nav-link active" href="{if $childsubmenu.menuthirdparty eq '1'}{$childsubmenu.url}{else}{$WEB_ROOT}/{$childsubmenu.url}{/if}" {if $childsubmenu.menunewtab eq '1'}target="_blank"{/if}>

                                                                            {if $childsubmenu.menu_icon_type eq '2'}

                                                                                <img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$childsubmenu.icon}" class="child-menu-img-icon-dft-menu">

                                                                            {else}

                                                                                <i class="{if $childsubmenu.icon neq ''}{$childsubmenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>

                                                                            {/if}                                                                     

                                                                            &nbsp; {$childsubmenu.name}

                                                                            </a>

                                                                        </li>

                                                                    {/foreach}

                                                                </ul>

                                                            </div>                            

                                                        {/if}    

                                                    {/foreach}

                                                    {if $topMenuData.submenu|@count == '1' && $topMenuData.description neq ''}

                                                        <div class="col-md-4 drow_menu empty-menu">

                                                            &nbsp;

                                                        </div>

                                                    {else if $topMenuData.submenu|@count == '1' && $topMenuData.description eq ''}

                                                        <div class="col-md-6 drow_menu empty-menu">

                                                            &nbsp;

                                                        </div>  

                                                    {else if $topMenuData.submenu|@count == '2' && $topMenuData.description eq ''}

                                                        <div class="col-md-4 drow_menu empty-menu">

                                                            &nbsp;

                                                        </div>    

                                                    {/if}

                                                {elseif $topMenuData.menutype eq '2'}

                                                    <div class="col-md-3 drow_menu">

                                                        <h5>{$topMenuData.name}</h5>

                                                        <ul class="nav flex-column ">

                                                            {foreach $topMenuData.submenu as $submenu}

                                                                <li class="nav-item">

                                                                <a class="nav-link active" href="{if $submenu.menuthirdparty eq '1'}{$submenu.url}{else}{$WEB_ROOT}/{$submenu.url}{/if}" {if $submenu.menunewtab eq '1'}target="_blank"{/if}>

                                                                    {if $submenu.menu_icon_type eq '2'}

                                                                        <img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$submenu.icon}" class="sub-menu-img-icon-dft-menu">

                                                                    {else}

                                                                        <i class="{if $submenu.icon neq ''}{$submenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>

                                                                    {/if}

                                                                    &nbsp; {$submenu.name}

                                                                </a>

                                                                </li>

                                                            {/foreach}

                                                        </ul>

                                                    </div>

                                                    <div class="col-md-{if $topMenuData.description neq ''}3{else}6{/if} drow_menu empty-menu">

                                                        &nbsp;

                                                    </div>

                                                {/if}	

                                            </div>

                                        </div>

                                    {if $tld_data['show_on_menu'] neq ''}

                                        <div class="col-md-3 tld-slider-mega-menu-data">

                                            <div class="register">

                                                <div class="slider-inner-section-meg-menu {if $tld_data['tld_count_on_menu'] gt 1}slider-intiate-header-mega-menu{/if}">

                                                    {$topMenusDataSliderData}

                                                </div>

                                            </div>

                                        </div>

                                    {/if}

                                    </div>

                                </div>

                            </div>

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

                                                    <ul class="domain-name-ul currency_style_{$currency_format} {if $tld_data['tld_count_on_menu'] gt 5 }domain-search-menu-slider{/if}">

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

                                            <img src="{$WEB_ROOT}/templates/{$template}/images/www-img.png" alt="globe">

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