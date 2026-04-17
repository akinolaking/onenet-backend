<div class="mobile-menu-global-hostx">
	<div class="mobile-menu-scrollable-area">
		<ul class="nav drop-default-mega-menu-mobile">
			{foreach $topMenusData as $topMenuData}
				<li class="nav__item">
					{if $topMenuData.url != '#' && $topMenuData.url != ''  }
						<a class="nav__link  have-link-menu" href="{if $topMenuData.menuthirdparty eq '1'}{$topMenuData.url}{else}{$WEB_ROOT}/{$topMenuData.url}{/if}" {if $topMenuData.menunewtab eq '1'}target="_blank"{/if}> {$topMenuData.name} </a>
					{else}
						<a class="nav__link" href="#">{$topMenuData.name} <i class="fas fa-chevron-right"></i></a>
						{if $topMenuData.menutype eq '3' || $topMenuData.menutype eq '2'}
							<ul class="nav__sub">
								{foreach $topMenuData.submenu as $submenu}
									<li class="nav__item">
										{if $submenu.url != '#' && $submenu.url != ''  }
											<a class="nav__link  have-link-menu" href="{if $submenu.menuthirdparty eq '1'}{$submenu.url}{else}{$WEB_ROOT}/{$submenu.url}{/if}" {if $submenu.menunewtab eq '1'}target="_blank"{/if}>
											{if $submenu.menu_icon_type eq '2'}
												<img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$submenu.icon}" class="sub-menu-img-icon-mobile-menu">
											{else}
												<i class="{if $submenu.icon neq ''}{$submenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>
											{/if}
											{$submenu.name} </a>
										{else}
											<a class="nav__link" href="#">
												{if $submenu.menu_icon_type eq '2'}
													<img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$submenu.icon}" class="sub-menu-img-icon-mobile-menu">
												{else}
													<i class="{if $submenu.icon neq ''}{$submenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>
												{/if}
												{$submenu.name} <i class="fas fa-chevron-right"></i>
											</a>
										{/if}
										{if $topMenuData.menutype eq '3'}
											<ul class="nav__sub">
												{foreach $submenu.childsubmenu as $childsubmenu}
													<li class="nav__item">
													{if $childsubmenu.url != '#' && $childsubmenu.url != ''  }
														<a class="nav__link have-link-menu" href="{if $childsubmenu.menuthirdparty eq '1'}{$childsubmenu.url}{else}{$WEB_ROOT}/{$childsubmenu.url}{/if}" {if $childsubmenu.menunewtab eq '1'}target="_blank"{/if}>
															{if $childsubmenu.menu_icon_type eq '2'}
																<img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$childsubmenu.icon}" class="child-menu-img-icon-mobile-menu">
															{else}
																<i class="{if $childsubmenu.icon neq ''}{$childsubmenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>
															{/if} 
														{$childsubmenu.name} 
													</a>
													{else}
														<a class="nav__link" href="#">
															{if $childsubmenu.menu_icon_type eq '2'}
																<img src="{$WEB_ROOT}/templates/{$template}/menu_icons/{$childsubmenu.icon}" class="child-menu-img-icon-mobile-menu">
															{else}
																<i class="{if $childsubmenu.icon neq ''}{$childsubmenu.icon}{else}fas fa-check{/if}" aria-hidden="true"></i>
															{/if} 
															{$childsubmenu.name}
														</a>
													{/if}
													</li>										
												{/foreach}
											</ul>
										{/if}
									</li>
								{/foreach}
							</ul>
						{/if}
					{/if}
				</li>
			{/foreach}
		</ul>
		{if $hostx_theme_settings.menu_layout eq 'mega_menu' || $hostx_theme_settings.menu_layout eq 'dropdown_menu'}
			{if $hostx_theme_settings.header_button_txt neq ''}
				<div class="domain-search-section-mobile">
					<form action="{$WEB_ROOT}/domainchecker.php" method="post">  
						<input type="hidden" name="register">
						<h2 class="header-title-mobile-domain">{$LANG.findyour} <span>{$LANG.headerdomain}</span> {$LANG.contactname}</h2>
						<div class="domain-name-field-container">
							<div class="domain-name-inner-mobile">
								<label class="label-icon"><i class="fas fa-search"></i></label>
								<input type="text" class="form-control domain-field-name" placeholder="{$LANG.domainBlockPlaceHolder}" name="domain">
								<button type="submit" class="btn btn-default domain-search-btn-mobile">{$LANG.domainsearch}</button> 
							</div>
						</div>
					</form>
				</div>
			{/if}
		{/if}
		{if !$loggedin}
			<div class="button-area-mobile-menu">
				<a href="{$WEB_ROOT}/clientarea.php" class="login-button-mobile">{lang key='loginbutton'}</a>
				<a href="{$WEB_ROOT}/register.php" class="register-button-mobile">{lang key='header_btn_reg_now'}</a>
			</div>
		{/if}
	</div>
	<div class="mobile-menu-below-section-area">
		{if $languagechangeenabled && count($locales) > 1 || !$loggedin && $currencies && ($hostx_theme_settings.disable_multi_crrency) == 'on'}
			<div class="language-currency-section-area">
				{if $languagechangeenabled && count($locales) > 1}
					<div class="language-section-part">
						<span class="selected-language" onClick="wgsCloseMobileTopMenu(this,'language');"><img src="{$WEB_ROOT}/templates/{$template}/images/blank.gif" class="flag flag-{$hxselectedlanguage.flagcode}" alt="{$hxselectedlanguage.localisedName}" />{$hxselectedlanguage.localisedName}</span>
						<div class="all-language-list-mobile">
							<span class="close-language-mobile" onClick="wgsCloseMobileTopMenu(this,'language');"><i class="fas fa-times"></i></span>
							{foreach $hxlanguagesflags as $locale}
								<a class="dropdown-item flag-list-mob" href="{$currentpagelinkback}language={$locale.language}"><img src="{$WEB_ROOT}/templates/{$template}/images/blank.gif" class="flag flag-{$locale.flagcode}" alt="{$locale.localisedName}" /> {$locale.localisedName}</a>
							{/foreach}	
						</div>
					</div>		
				{/if}
				{if !$loggedin && $currencies && ($hostx_theme_settings.disable_multi_crrency) == 'on' }
					<div class="currency-section-part">
						<span class="selected-currency" onClick="wgsCloseMobileTopMenu(this,'currency');">{$hxselectedcurrency.prefix} {$hxselectedcurrency.code}</span>
						<div class="all-currency-list-mobile">
							{foreach from=$currencies item=listcurr}
								<a class="dropdown-item" href="{$currentpagelinkback}currency={$listcurr.id}">{$listcurr.prefix} {$listcurr.code}</a>
							{/foreach}
						</div>
					</div>
				{/if}
			</div>
		{/if}
	</div>
</div>
<script>
	jQuery('.nav__sub').prepend('<li class="nav__item"><a class="nav__link sub__close" href="#"><img src="{$WEB_ROOT}/templates/{$template}/images/menuarrow-left.png" class="mobile-menu-back-sec">{$LANG.back}</a></li>');
	jQuery('.sub__close').click(function(e) {
		e.preventDefault();
		jQuery(this).parent().parent().removeClass('is-active');
	});
	jQuery('.nav__link').click(function(e) {
		if(!e.target.classList.contains('have-link-menu')){
			e.preventDefault();
		}
		jQuery(this).siblings().addClass('is-active');
	});
	function wgsCloseMobileTopMenu(obj,actionmenu){
		if(actionmenu == 'language'){
			jQuery('body').removeClass('mobile-menu-currency-list-open');
			jQuery('body').toggleClass('mobile-menu-language-list-open');
		}else if(actionmenu == 'currency'){
			jQuery('body').removeClass('mobile-menu-language-list-open');
			jQuery('body').toggleClass('mobile-menu-currency-list-open');
		}
	}
</script>