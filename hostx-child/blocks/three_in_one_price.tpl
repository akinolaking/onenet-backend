<div class="new-hx-tabs">
    <div class="container">
      <div class="row hx-tab-inner">
        <div class="col-12">
          <div class="row">
            <div class="col-md-3 tab-leftwidth">
              <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
				{if $hostx_theme_settings.disable_domain_section_block_v2 neq 'on'}
					{if $domainSectionAllowed}
						<a class="nav-link-new active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab"
						aria-controls="v-pills-home" aria-selected="true">
						<span><img src="{if $hostx_theme_settings.domain_icon_name_pr_v2 neq ''}{$hostx_theme_settings.domain_icon_name_pr_v2}{else}{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/buy_domain.svg{/if}" alt=""></span>{$LANG.buyadomain}
						</a>
					{/if}
				{/if}
				{if $productDataNewBlock}
					{$turns = 0}
					{foreach from=$productDataNewBlock item=newBlkData}
						<a class="nav-link-new {if $hostx_theme_settings.disable_domain_section_block_v2 eq 'on' && $turns eq '0'}active{elseif !$domainSectionAllowed && $turns eq '0'}active{/if}" data-toggle="pill" id="v-pills-group-content-tab{$newBlkData.groupId}" href="#v-pills-group-content{$newBlkData.groupId}" role="tab" aria-controls="v-pills-group-content{$newBlkData.groupId}" aria-selected="false" data-group-id-block="{$newBlkData.groupId}">
						  <span><img src="{$WEB_ROOT}/templates/{$template}/caticons/{$newBlkData.groupIcon}" alt="{$newBlkData.groupIcon}"></span>
						  {$newBlkData.groupName}
						</a>
						{$turns = $turns+1}
					{/foreach}
				{/if}
              </div>
            </div>
            <div class="col-md-9 tab-rightwidth">
              <div class="tab-content" id="v-pills-tabContent">
			{if $hostx_theme_settings.disable_domain_section_block_v2 neq 'on'}
				{if $domainSectionAllowed}
					<div class="tab-pane fade active show" id="v-pills-home" role="tabpanel"
					  aria-labelledby="v-pills-home-tab">
					  <div class="hx-table-content">
						{if $captchaEnabledDomainHostx eq 'yes'}
							<div class="hx-tablesearchbar">
								{if $showAdvancedSearchOptions}
								<form method="get" action="domainchecker.php" id="domainSearchForm">
								{else}
								<form method="get" action="domainchecker.php">
								{/if}

								 <input type="hidden" name="a" value="add">
         						 <input type="hidden" name="domain" value="register">
								<div class="input-group">
								  <div class="input-group-prepend pr-0">
									<span class="input-group-text bg-transparent border-right-0 pr-0 pl-4" id="basic-addon1"><i class="fas fa-search"></i></span>
								  </div>
								  {if $showAdvancedSearchOptions}
								  <input class="form-control border-0" type="text" placeholder="{$LANG.domainBlockPlaceHolder}" name="message">
								  {else}
								  <input type="text" class="form-control border-0" name="sld" id="domainnameAjax" placeholder="{$LANG.domainBlockPlaceHolder}">
								  {/if}
								  <div class="input-group-append">
									{if !empty($domaintldextensions) && $hostx_theme_settings.disable_tld_dropdown_block neq 'on'}
										<select class="form-control hx_customdropdown" name="tld" id="tldDropdownBlock">
										{foreach from=$domaintldextensions item=tldextensionData}
											<option value="{$tldextensionData}">{$tldextensionData}</option>
										{/foreach}
										</select>
									{/if}
									<button class="btn btn-secondary" type="submit">
									  <i class="fas fa-search mr-2"></i>{$LANG.domainsearch}
									</button>
								  </div>
								</div>
								</form>
							</div>
						{else}
							<div class="hx-tablesearchbar">
								<div class="input-group">
								  <div class="input-group-prepend pr-0">
									<span class="input-group-text bg-transparent border-right-0 pr-0 pl-4" id="basic-addon1"><i class="fas fa-search"></i></span>
								  </div>
								  <input type="text" class="form-control border-0" name="sld" id="domainnameAjax" placeholder="{$LANG.domainBlockPlaceHolder}">
								  <div class="input-group-append">
									{if !empty($domaintldextensions) && $hostx_theme_settings.disable_tld_dropdown_block neq 'on'}
										<select class="form-control hx_customdropdown" id="tldDropdownBlock">
										{foreach from=$domaintldextensions item=tldextensionData}
											<option value="{$tldextensionData}">{$tldextensionData}</option>
										{/foreach}
										</select>
									{/if}
									<button class="btn btn-secondary" type="button" onclick="wgsSearchdomainAjax(this);">
									  <i class="fas fa-search mr-2"></i>{$LANG.domainsearch}
									</button>
								  </div>
								</div>
							</div>
						{/if}
						<div class="hidden" id="loaderSerachBlock">
							<img src="{$WEB_ROOT}/templates/{$template}/images/loaderforblock.gif" alt="loader">
						</div>
						<div class="hidden" id="domainErrorD"></div>
						<div class="hx_domain hidden" id="domainTakenErrorDivsBlock">
							<div class="hx_domain-header">
								<h3><span><i class="fas fa-times"></i></span>{$LANG.domainreserved1} {$LANG.domainunavailable2}</h3>
							</div>
							<div class="hx_domain-body">
								<p class="unavail-msg"><span>{$LANG.domainunavailable1}</span> 
									{$LANG.orderForm.domainIsUnavailable}
								</p>
								<p>{$LANG.domainchecker.suggestiontakenmsg}</p>
							</div>
						</div>
						{if $tld_data['show_on_price_table']}
						<div class="hx-tbl-data pt-4">
						  <table class="table table-striped" id="tbl-new-block-tld">
							<thead class="w-hidden"><tr><th>Domain Tld</th><th>Domain Price</th><th>Discount</th></tr></thead>
							<tbody id="domainSuggestionTable">
								{foreach from=$tld_data['show_on_price_table']  item=domain_item}
									<tr>
										<td class="hx-table-extensions">.{$domain_item->tld_id}</td>
										<td class="hx-table-price"> {$domain_item->register} /{$LANG.pricingCycleShort.annually}</td>									
										<td class="hx-table-noprice">{if $domain_item->registerDiscount neq ''}{$domain_item->registerDiscount}{else}-{/if}</td>
									</tr>
								{/foreach}
							</tbody>
						  </table>
						  <p><span class="hx-domain-txt cursorPointerCss" onclick="location.href='/cart.php?a=add&domain=register'">{$LANG.fullDomainPricingTxt}</span> <span class="hx-arrow"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/hx-right-arrow.svg" alt="right arrow"></span>{$LANG.promotionPriceTxt}</p>
						</div>
						{/if}
					  </div>
					  <div class="hx_supprt-sec">
						<a href="#" class="hx_hide-btn"><span class="pr-1"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/hx_hand.svg" alt="hand"></span>{$LANG.domainNoHiddenFee}
						</a>                              
						<ul class="list-inline m-0">
						  <li class="list-inline-item"><span><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/hx_headphone.svg" alt="headphone"></span>{$LANG.domain24Seven}</li>
						  <li class="list-inline-item"><span><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/hx_db.svg" alt="db"></span>{$LANG.domainFreeDnsHost}</li>
						  <li class="list-inline-item"><span><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/hx_attchment.svg" alt="attachment"></span>{$LANG.domainFreeUrlForward} </li>
						  <li class="list-inline-item"><span><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/hx-mail.svg" alt="mail"></span>{$LANG.domainFreeEmailForward}</li>
						</ul>
					  </div>
					</div>
				{/if}
			{/if}
				{if $productDataNewBlock}
					{$turns = 0}
					{foreach from=$productDataNewBlock item=newBlkData}
						<div class="tab-pane fade {if $hostx_theme_settings.disable_domain_section_block_v2 eq 'on' && $turns eq '0'}active show{elseif !$domainSectionAllowed && $turns eq '0'}active show{/if}" id="v-pills-group-content{$newBlkData.groupId}" role="tabpanel" aria-labelledby="v-pills-group-content-tab{$newBlkData.groupId}">
							<div class="hx_web-hosting-sec product-count-{$newBlkData.productArray|@count}">
							  <div class="row hx_webhost-pdng">
								<div class="col-md-4">
								  <div class="hx_web-host-heading">
									<h3>{$newBlkData.groupHead}</h3>
									<p>{$newBlkData.groupSubHead}</p>
								  </div>
								</div>
								<div class="col-md-8">
									{$newBlkData.groupDescp}
								</div>
							  </div>
							{if $newBlkData.productArray}
								<div class="row hx_webhosting_plans" id="slickSliderHostingBlock-{$newBlkData.groupId}">
									{foreach from=$newBlkData.productArray item=productArrayData}
										<div class="col-md-4 hx_brd-r">
										  <div class="hx_plans">
										  <div class="hx_wb-hostplans">
											<h3>{$productArrayData['name']}</h3>
											<div class="hx_wb-hostprice">
												{if $productArrayData['hasConfig'] eq '1'}
													<p class="has-config-op">{$LANG.startingfrom}</p>
												{/if}
												<div class="txt value">{$productArrayData['price']}</div>
												{if $productArrayData['type'] eq 'recurring'}
													<div class="txt period">/{$productArrayData['cycle']}</div>
												{elseif $productArrayData['type'] eq 'onetime'}
													<div class="txt period">{$productArrayData['cycle']}</div>
												{/if}
												{if $productArrayData['hasStrikedData'] && $productArrayData['hasStrikedData']['rawStriked'] gt 0}
													{if $productArrayData['hasStrikedData']['strikedType'] eq '0'}
														<div class="dicount_three_price">
															<div class="striked-price">{$productArrayData['hasStrikedData']['formatStriked']}</div>
															<div class="three-inprice-discount">
																{$LANG.discount_save_badge} {$productArrayData['hasStrikedData']['strikedAmount']}%
															</div>
														</div>														
													{elseif $productArrayData['hasStrikedData']['strikedType'] eq '1'}
														<div class="dicount_three_price">
															<div class="striked-price">{$productArrayData['hasStrikedData']['formatStriked']}</div>
															<div class="three-inprice-discount">{$LANG.discount_flat_badge} {$productArrayData['hasStrikedData']['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
														</div>														
													{/if}
												{/if}
											</div>
											<div class="hx_buybtn">
												{if $productArrayData['domainOption'] eq '1'}
													<a onclick="wgsAddHomePageProduct(this,'{$productArrayData['pid']}');" class="button-style hx-primary-btn cursorPointerCss">{$LANG.ordernowbutton}</a>
												{else}
													<a href="{$WEB_ROOT}/cart.php?a=add&pid={$productArrayData['pid']}" class="button-style hx-primary-btn cursorPointerCss">{$LANG.ordernowbutton}</a>
												{/if}
											</div>  
										  </div>
										  <div class="hx_description">
											{$productArrayData['description']}
										  </div>
										 </div>
										</div>
									{/foreach}
								</div>
								<div class="col-12 px-0">
								  <p class="hx_plans-find m-0"><a href="{$WEB_ROOT}/cart.php?gid={$newBlkData.groupId}">{$LANG.domainFindOutMore} <i class="fa fa-angle-right ml-2"></i></a></p>
								</div>
							{/if}
							</div>
						</div>
						{$turns = $turns+1}
					{/foreach}
				{/if}
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
<script>
	var addCartButtonLang = "{$LANG.orderForm.addToCart}";
	var checkoutButtonLang = "{$LANG.ordercheckout}";
	var domainAlreadyInCart = "{$LANG.domainAlreadyExist}";
	var orderHostingBtn = "{$LANG.orderhosting}";
	var preferTldError = "{$LANG.domainTldPreffer}";
	var domainisavailable = "{$LANG.domainavailable2}";
	var domainSuggestionSeting = "{$hostx_theme_settings.domain_suggestion_display_hmpg}";
</script>
<script>

jQuery(document).ready(function ($) {
    $('#domainSearchForm').on('submit', function () {
        var domainName = $('input[name="message"]').val().trim();
        var tld = $('#tldDropdownBlock').val();

        if (domainName !== '') {
            $('input[name="message"]').val(domainName + tld);
        }
    });

});
</script>

