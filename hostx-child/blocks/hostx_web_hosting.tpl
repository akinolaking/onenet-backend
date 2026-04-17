<div class="price_list p-vertical">
  	<div class="container">
    	<div class="row home-page-pricing-style-1">
			{$turnsCount = 1}
			{foreach from=$defaultHomePageProductData item=homePageDeData}
			<div class="col-sm-3">
				<div class="price_grid">
				<h4>{$homePageDeData.pHomeServiceName}</h4>
				<div class="price_box pricehfirstbox">
					{if $turnsCount eq '4'}
						<div class="tag custom_paln">{$homePageDeData.pHomeHeadSortDesc}</div>
					{else}
						<div class="tag">{$homePageDeData.pHomeHeadSortDesc}</div>
					{/if}
					{if $homePageDeData.pHomePriceHasConfig eq '1'}
						<p class="has-config-vps-price-home-one">{$LANG.startingfrom}</p>
					{/if}
					{if $homePageDeData.pHomePrice eq 'Free'}
						<p class="price-home">{$homePageDeData.pHomePrice}</p>
					{else}
						<p class="price-home">{$homePageDeData.pHomePrice}</p>
					{/if}
					{if $homePageDeData.pHomePriceHasStriked && $homePageDeData.pHomePriceHasStriked['rawStriked'] gt 0}
						{if $homePageDeData.pHomePriceHasStriked['strikedType'] eq '0'}
							<div class="dicount_home_one_price">
								<div class="striked-price">{$homePageDeData.pHomePriceHasStriked['formatStriked']}</div>
								<div class="home_one_price-discount">
									{$LANG.discount_save_badge} {$homePageDeData.pHomePriceHasStriked['strikedAmount']}%
								</div>
							</div>														
						{elseif $homePageDeData.pHomePriceHasStriked['strikedType'] eq '1'}
							<div class="dicount_home_one_price">
								<div class="striked-price">{$homePageDeData.pHomePriceHasStriked['formatStriked']}</div>
								<div class="home_one_price-discount">{$LANG.discount_flat_badge} {$homePageDeData.pHomePriceHasStriked['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
							</div>														
						{/if}
					{/if}				
				</div>
				<div class="deschfirstbox">
					{$homePageDeData.pHomeDescription}
				</div>
				<div class="footcaptionhfirstbox">
					<h6>{$homePageDeData.pHomeFootCaption}</h6>
				</div>
				<div class="footsorthfirstbox">
					<p>{$homePageDeData.pHomeFootSortDesc}</p>
				</div>
				<a href="{$homePageDeData.pHomeLink}" class="button03 button-style hx-primary-btn">{$homePageDeData.pHomeButtonName}</a> 
				</div>
			</div>
			{$turnsCount = $turnsCount+1}
			{/foreach}
      	</div>      
    </div>
</div> 