{if $templatefile eq 'homepage'}
	{if $seodata->banner->image}
		<div class="banner p-vertical home-page-banner" style="background-image: url({$WEB_ROOT}/templates/{$template}/banners/{$seodata->banner->image});">
		   {eval var=$seodata->banner->description}
		</div>
	{else}
		<div class="banner p-vertical home-page-banner-wi">
		   {eval var=$seodata->banner->description}
		</div>
	{/if}
{else}
	<div class="banner p-vertical banner-page-{$currentPageClass}">
	   {eval var=$seodata->banner->description}
	</div>
{/if}





