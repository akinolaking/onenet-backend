<nav class="top-mega-menu-latest-cls" id="myHeader">
   <div class="main-top-sec">
      <div class="container">
         <div class="main-sec">
            <div class="left-sec">
               <div class="logo-sec">
                  {if !empty($hostx_theme_settings.header_logo)}
                     <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}" {if $hostx_theme_settings.enable_header_target eq 'on'}target="_blank"{/if}  class="logo mega-latest-menu"><img src="{$hostx_theme_settings.header_logo}" alt="{$companyname}" {if $hostx_theme_settings.header_logo_height neq ''}height="{$hostx_theme_settings.header_logo_height}"{/if} {if $hostx_theme_settings.header_logo_width neq ''}width="{$hostx_theme_settings.header_logo_width}" {/if}>
                     </a>
                  {else}
                     <a href="{if $hostx_theme_settings.header_logo_link neq ''}{$hostx_theme_settings.header_logo_link}{else}{$systemurl}{/if}" class="logo logo-text mega-latest-menu" {if $hostx_theme_settings.enable_header_target eq 'on'}target="_blank"{/if}>{$companyname}
                     </a>
                  {/if}
               </div>
               {if $languagechangeenabled && count($locales) > 1}
                  <div class="country-sec">
                     <ul class="counrty-inner">
                        <li class="country-list-menu-btn">
                           <a href="javascript:void(0);"><i class="fas fa-globe"></i>{$hxselectedlanguage.localisedName}<i class="fas fa-chevron-down"></i></a>
                           <div class="country-dropdown"> 
                              {foreach $hxlanguagesflags as $locale}
                                 <a class="dropdown-item" href="{$currentpagelinkback}language={$locale.language}"><img src="{$WEB_ROOT}/templates/{$template}/flags/blank.gif" class="flag flag-{$locale.flagcode}" alt="{$locale.localisedName}" /> {$locale.localisedName}</a>
                              {/foreach}
                           </div>
                        </li>
                     </ul>
                  </div> 
               {/if}
            </div>
            <div class="right-sec">
               <ul class="list-menu top-menu-ul-header-latest">
                  {foreach $topMenusData as $topMenuData}
                     <li class="top-menu-li-header">
                        <a href="{if $topMenuData.menuthirdparty eq '1'}{$topMenuData.url}{else}
                        {if $topMenuData.menutype eq '3' || $topMenuData.menutype eq '2'}javascript:void(0){else}{$WEB_ROOT}/{$topMenuData.url}{/if}{/if}" class="top-menu-parent {if $topMenuData.submenu}have-child{/if}" {if $topMenuData.menunewtab eq '1'}target="_blank"{/if}>{$topMenuData.name} {if $topMenuData.menutype neq '1'}<i class="fa fa-chevron-down"></i>{/if}</a>
                        {if $topMenuData.menutype neq '1'}
                        <div class="drop-down-menu">
                           <div class="row">
                              {if $topMenuData.menutype eq '3'}
                                 <div class="col-md-4 border-right-mnu">
                                    <div class="left-side">
                                       <ul class="left-list">
                                          {foreach $topMenuData.submenu as $submenu}
                                             {if $submenu.childsubmenu}
                                                <li class="left-list-inner">
                                                   <div class="li-descp-head-title-data hidden">{$submenu.menu_head_line}</div>
                                                   <div class="li-descp-head-descp-data hidden">{if $submenu.menu_side_description neq ''}<ul class="nav side-description-menu">{$submenu.menu_side_description}</ul>{/if}</div>
                                                   <div class="li-right-button-last hidden">{if $submenu.menu_bottom_sec_head_line neq ''}<div class="botton-description-button">{$submenu.menu_bottom_sec_head_line|html_entity_decode}</div>{/if}</div>
                                                   <a class="first-list cursorPointerCss">
                                                      <div class="icon-sec {if $submenu.menu_icon_type eq '2'} have-image-icon{/if}">
                                                         <div class="icon-img-new">
                                                            {if $submenu.menu_icon_type eq '2'}
                                                               <img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$submenu.icon}" class="sub-menu-img-icon-lt-menu">
                                                            {else}
                                                               <i class="{if $submenu.icon neq ''}{$submenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>
                                                            {/if}
                                                         </div>
                                                      </div>
                                                      <div class="text-sec">
                                                         <h5>{$submenu.name}</h5>
                                                      </div>
                                                   </a>
                                                   <div class="child-link-data hidden">
                                                      <div class="bottom-sec">
                                                         <div class="bottom-sec-ul">
                                                            <h5>{$submenu.menu_tag_line}</h5>
                                                            <ul class="nav bottomChildLinks">
                                                               {foreach $submenu.childsubmenu as $childsubmenu}
                                                                  <li class="nav-item {if $childsubmenu.menu_icon_type eq '2'} have-image-icon-li{/if}">
                                                                     <a href="{if $childsubmenu.menuthirdparty eq '1'}{$childsubmenu.url}{else}{$WEB_ROOT}/{$childsubmenu.url}{/if}" {if $childsubmenu.menunewtab eq '1'}target="_blank"{/if}>
                                                                     {if $childsubmenu.menu_icon_type eq '2'}<img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$childsubmenu.icon}" class="child-menu-img-icon-lt-menu">{else}<i class="{if $childsubmenu.icon neq ''}{$childsubmenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>{/if}{$childsubmenu.name}</a>
                                                                  </li>
                                                               {/foreach}
                                                            </ul>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </li>
                                             {/if}
                                          {/foreach}
                                       </ul>
                                    </div>
                                 </div>
                                 <div class="col-md-8 right-side-panel-data hidden">
                                    <div class="row right-side">
                                       <div class="col-md-6 bottom-menu-link-header-latest"></div>
                                       <div class="col-md-6"><div class="right-ul"><h5></h5></div></div>
                                    </div>
                                 </div>                                                                
                              {elseif $topMenuData.menutype eq '2'}
                                 <div class="col-md-4 border-right-mnu">
                                    <div class="left-side">
                                       <ul class="left-list">
                                          {foreach $topMenuData.submenu as $submenu}
                                                <li class="left-list-inner">
                                                   <div class="li-descp-head-title-data hidden">{$submenu.menu_head_line}</div>
                                                   <div class="li-descp-head-descp-data hidden">{if $submenu.menu_side_description neq ''}<ul class="nav side-description-menu">{$submenu.menu_side_description}</ul>{/if}</div>
                                                   <div class="li-right-button-last hidden">{if $submenu.menu_bottom_sec_head_line neq ''}<div class="botton-description-button">{$submenu.menu_bottom_sec_head_line|html_entity_decode}</div>{/if}</div>
                                                   <a class="first-list cursorPointerCss">
                                                      <div class="icon-sec {if $submenu.menu_icon_type eq '2'} have-image-icon{/if}">
                                                         <div class="icon-img-new">
                                                            {if $submenu.menu_icon_type eq '2'}
                                                               <img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$submenu.icon}" class="sub-menu-img-icon-lt-menu">
                                                            {else}
                                                               <i class="{if $submenu.icon neq ''}{$submenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>
                                                            {/if}
                                                         </div>
                                                      </div>
                                                      <div class="text-sec">
                                                         <h5>{$submenu.name}</h5>
                                                      </div>
                                                   </a>
                                                   <div class="child-link-data hidden">
                                                      <div class="bottom-sec">
                                                         <div class="bottom-sec-ul">
                                                            <h5>{$submenu.menu_tag_line}</h5>
                                                            <ul class="nav bottomChildLinks">                                                              
                                                               <li class="nav-item {if $submenu.menu_icon_type eq '2'} have-image-icon-li{/if}">
                                                                  <a href="{if $submenu.menuthirdparty eq '1'}{$submenu.url}{else}{$WEB_ROOT}/{$submenu.url}{/if}" {if $submenu.menunewtab eq '1'}target="_blank"{/if}>
                                                                     {if $submenu.menu_icon_type eq '2'}<img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$submenu.icon}" class="sub-menu-img-icon-lt-menu">{else}<i class="{if $submenu.icon neq ''}{$submenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>{/if}{$submenu.name}</a>
                                                               </li>
                                                            </ul>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </li>
                                          {/foreach}
                                       </ul>
                                    </div>
                                 </div>
                                 <div class="col-md-8 right-side-panel-data hidden">
                                    <div class="row right-side">
                                       <div class="col-md-6 bottom-menu-link-header-latest"></div>
                                       <div class="col-md-6"><div class="right-ul"><h5></h5></div></div>
                                    </div>
                                 </div>
                              {/if}
                           </div>
                        </div>
                        {/if}
                     </li>
                  {/foreach}
               </ul>
            </div>
         </div>
      </div>
   </div>
</nav>