<div class="top-header-bar header-top-most-menu-V4">
	<div class="container">
		<ul class="top-header-list">
			{if $hostx_theme_settings.phone_display eq 'yes'}
				{if empty($hostx_theme_settings.phone)}
					<li class="latest-telephone top-header-list-item">
						<a href="tel:+{$LANG.headerphone}"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/calling-image.svg" class="phone-image-top-most">{$LANG.headerphone}</a>
					</li>
				{else}
					<li class="latest-telephone top-header-list-item">
						<a href="tel:+{$hostx_theme_settings.country_calling_code_phone}{$hostx_theme_settings.phone}"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/calling-image.svg" class="phone-image-top-most"> +{$hostx_theme_settings.country_calling_code_phone} {$hostx_theme_settings.phone}</a>
					</li>
				{/if}
			{/if}
			{if $languagechangeenabled && count($locales) > 1}
				<li class="latest-language-header-menu"><a href="#" data-toggle="dropdown">
					<span id="sLanguage"><img src="{$WEB_ROOT}/templates/{$template}/images/blank.gif" class="flag flag-{$hxselectedlanguage.flagcode}" alt="{$hxselectedlanguage.localisedName}" /> {$hxselectedlanguage.localisedName}</span> <i class="fas fa-chevron-down"></i></a>
					<div class="dropdown-menu flag_drop language-drop-latest-block"> 
						{foreach $hxlanguagesflags as $locale}
							<a class="dropdown-item" href="{$currentpagelinkback}language={$locale.language}"><img src="{$WEB_ROOT}/templates/{$template}/images/blank.gif" class="flag flag-{$locale.flagcode}" alt="{$locale.localisedName}" /> {$locale.localisedName}</a>
						{/foreach}
					</div>
				</li> 
			{/if}
			{if !$loggedin && $currencies && ($hostx_theme_settings.disable_multi_crrency) == 'on' }
				<li class="latest-currency top-header-list-item">
					<a href="#" class=" dropdown-toggle" data-toggle="dropdown">{$hxselectedcurrency.prefix} {$hxselectedcurrency.code} <i class="fas fa-chevron-down"></i></a>
					<div class="dropdown-menu"> 
						{foreach from=$currencies item=listcurr}
							<a class="dropdown-item-currency" href="{$currentpagelinkback}currency={$listcurr.id}">{$listcurr.prefix} {$listcurr.code}</a>
						{/foreach}
					</div>
				</li>
			{/if}
			<li class="dashboard-logedin-user">
				<a href="{$WEB_ROOT}/clientarea.php"><i class="fas {if $loggedin}fa-home{else}fa-user{/if}"></i></a>
			</li>
			<li class="latest-cart cart-view-list top-header-list-item">
				<a href="{$WEB_ROOT}/cart.php?a=view"><i class="fas fa-shopping-cart"></i></a>
			</li>
		</ul>
		<div class="mobile-menu-toggle-drop"><div class="bar1"></div><div class="bar2"></div><div class="bar3"></div></div>
	</div>
</div>