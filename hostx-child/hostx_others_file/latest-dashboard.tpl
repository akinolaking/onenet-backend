<div class="client-dashboard-area hostx-client-dashboard">
{include file="$template/includes/flashmessage.tpl"}
<div class="services_list">
	<div class="row"><div class="col-sm-12"><div class="dasboard-home"><h1>{$LANG.mydashboard}</h1></div></div></div>
	{if $marketConnectPromosData && !empty($addons_html)}
	<div class="row mrkt-upr-row">
		<div class="col-sm-9">
			<div class="gridster-item">
				<div class="dashboard-widget-max">
					<div class="alladmintextHeader hoverbggray">
						<div class="widgetLabel">
							<h2 class="widgetTitle" id="home-promo-widget-title"></h2>
						</div>
					</div>
					<div class="body-promo-bnr">
						<div class="row">
						{if $marketConnectPromosData.symantec eq '1' || $marketConnectPromosData.spamexperts  eq '1' || $marketConnectPromosData.xovinow   eq '1' || $marketConnectPromosData.sitebuilder eq '1' || $marketConnectPromosData.weebly  eq '1' || $marketConnectPromosData.ox  eq '1'}
						<div class="col-md-6" id="left-side-promo-div">
							{if $marketConnectPromosData.symantec eq '1'}
							<div class="promo-cont-block w-hidden" id="ssl-promo-blk">
								<div class="pcb-icon">
									<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/marketconnect/ssl/{$layoutStyle}/ssl.png">
								</div>
								<div class="promo-cont-inner">
									<a href="" id="rapidSslTitle"></a>
									<div id="rapidSslDescp"></div>
								</div>
							</div>
							{/if}
							{if $marketConnectPromosData.spamexperts eq '1'}
							<div class="promo-cont-block w-hidden" id="spamexpert-promo-blk">
								<div class="pcb-icon">
									<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/marketconnect/spamexperts/{$layoutStyle}/spamexpert.png">
								</div>
								<div class="promo-cont-inner">
									<a href="" id="spamexpertTitle"></a>
									<div id="spamexpertDescp"></div>
								</div>
							</div>
							{/if}
							{if $marketConnectPromosData.xovinow eq '1'}
							<div class="promo-cont-block w-hidden" id="xovinow-promo-blk">
								<div class="pcb-icon">
									<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/marketconnect/xovinow/{$layoutStyle}/xovinow.png">
								</div>
								<div class="promo-cont-inner">
									<a href="" id="xovinowTitle"></a>
									<div id="xovinowDescp"></div>
								</div>
							</div>
							{/if}
							{if $marketConnectPromosData.sitebuilder eq '1'}
							<div class="promo-cont-block w-hidden" id="sitebuilder-promo-blk">
								<div class="pcb-icon">
									<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/marketconnect/sitebuilder/{$layoutStyle}/sitebuilder.png">
								</div>
								<div class="promo-cont-inner">
									<a href="" id="sitebuilderTitle"></a>
									<div id="sitebuilderDescp"></div>
								</div>
							</div>
							{/if}
							{if $marketConnectPromosData.weebly  eq '1'}
							<div class="promo-cont-block w-hidden" id="weebly-promo-blk">
								<div class="pcb-icon">
									<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/marketconnect/weebly/{$layoutStyle}/weebly.png">
								</div>
								<div class="promo-cont-inner">
									<a href="" id="weeblyTitle"></a>
									<div id="weeblyDescp"></div>
								</div>
							</div>
							{/if}
							{if $marketConnectPromosData.ox eq '1'}
							<div class="promo-cont-block w-hidden" id="ox-promo-blk">
								<div class="pcb-icon">
									<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/marketconnect/ox/{$layoutStyle}/ox.png">
								</div>
								<div class="promo-cont-inner">
									<a href="" id="oxTitle"></a>
									<div id="oxDescp"></div>
								</div>
							</div>
							{/if}
						</div>
						{/if}
						{if $marketConnectPromosData.sitelock eq '1' || $marketConnectPromosData.codeguard  eq '1' || $marketConnectPromosData.marketgoo   eq '1' || $marketConnectPromosData.threesixtymonitoring  eq '1' || $marketConnectPromosData.nordvpn eq '1'}
						<div class="col-md-6" id="right-side-promo-div">
							{if $marketConnectPromosData.codeguard   eq '1'}
							<div class="promo-cont-block w-hidden" id="codeguard-promo-blk">
								<div class="pcb-icon">
									<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/marketconnect/codeguard/{$layoutStyle}/codeguard.png">
								</div>
								<div class="promo-cont-inner">
									<a href="" id="codeguardTitle"></a>
									<div id="codeguardDescp"></div>
								</div>
							</div>
							{/if}
							{if $marketConnectPromosData.marketgoo eq '1'}
							<div class="promo-cont-block w-hidden" id="marketgo-promo-blk">
								<div class="pcb-icon">
									<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/marketconnect/marketgoo/{$layoutStyle}/marketgoo.png">
								</div>
								<div class="promo-cont-inner">
									<a href="" id="marketgooTitle"></a>
									<div id="marketgooDescp"></div>
								</div>
							</div>
							{/if}
							{if $marketConnectPromosData.nordvpn eq '1'}
							<div class="promo-cont-block w-hidden" id="nordvpn-promo-blk">
								<div class="pcb-icon">
									<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/marketconnect/nordvpn/{$layoutStyle}/nordvpn.png">
								</div>
								<div class="promo-cont-inner">
									<a href="" id="nordvpnTitle"></a>
									<div id="nordvpnDescp"></div>
								</div>
							</div>
							{/if}

							{if $marketConnectPromosData.sitelock eq '1'}
							<div class="promo-cont-block w-hidden" id="sitelock-promo-blk">
								<div class="pcb-icon">
									<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/marketconnect/sitelock/{$layoutStyle}/sitelock.png">
								</div>
								<div class="promo-cont-inner">
									<a href="" id="sitelockTitle"></a>
									<div id="sitelockDescp"></div>		
								</div>
							</div>
							{/if}
							{if $marketConnectPromosData.sitelockvpn eq '1'}
							<div class="promo-cont-block w-hidden" id="sitelockvpn-promo-blk">
								<div class="pcb-icon">
									<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/marketconnect/sitelockvpn/{$layoutStyle}/sitelockvpn.png">
								</div>
								<div class="promo-cont-inner">
									<a href="" id="sitelockvpnTitle"></a>
									<div id="sitelockvpnDescp"></div>
								</div>
							</div>
							{/if}
							{if $marketConnectPromosData.threesixtymonitoring eq '1'}
							<div class="promo-cont-block w-hidden" id="threesixtymonitoring-promo-blk">
								<div class="pcb-icon">
									<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/marketconnect/threesixtymonitoring/{$layoutStyle}/threesixtymonitoring.png">
								</div>
								<div class="promo-cont-inner">
									<a href="" id="threesixtymonitoringTitle"></a>
									<div id="threesixtymonitoringDescp"></div>
								</div>
							</div>
							{/if}
						</div>
						{/if}
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-3">
			<div class="gridster-item">
				<div class="dashboard-widget-max order-div-mx">
					<div class="alladmintextHeader hoverbggray">
						<div class="widgetLabel">
							<h2 class="widgetTitle">{$LANG.ordertitle}</h2>
						</div>
					</div>
					<div class="body-promo-bnr-ord-right">
						<div class="promo-cont-block-img">
							<img src="{$WEB_ROOT}/templates/{$hostx_theme_settings.template_name_custom}/images/{$layoutStyle}/cart-order-home.png">
						</div>
						<p>{$LANG.addnewproducttitle}</p>
					</div>
					<p class="bottom-buttom">
						<a href="{$WEB_ROOT}/cart.php">{$LANG.navservicesorder}</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	{/if}
	<div class="row">
	    <div class="col-sm-3">
			<div class="gridster-item">
				<div class="dashboard-widget">
					<div class="alladmintextHeader hoverbggray">
						<div class="widgetLabel">
							<h2 class="widgetTitle">{$LANG.navservices}</h2>
						</div>
					</div>
					<div class="widgetBody alladmintext">
						<h3 class="boxttl">{$clientsstats.productsnumactive} {$LANG.activeservicetitle}</h3>
						<p>{$LANG.activeservicedesc}</p>
					</div>
					<p class="bottom-buttom">
						<a href="clientarea.php?action=services">{$LANG.clientareanavservices} </a>
						<a href="cart.php">{$LANG.navservicesorder}</a>
					</p>
				</div>
			</div>
	    </div>
	   {if $clientsstats.numdomains || $registerdomainenabled || $transferdomainenabled}
			<div class="col-sm-3">
				<div class="gridster-item">
					<div class="dashboard-widget">
						<div class="alladmintextHeader hoverbggray">
							<div class="widgetLabel">
								<h2 class="widgetTitle">{$LANG.navdomains}</h2>
							</div>
						</div>
						<div class="widgetBody alladmintext">
							<h3 class="boxttl">{$clientsstats.numactivedomains} {$LANG.activedomiantitle}</h3>
							<p>{$LANG.activedomiandesc}</p>
						</div>
						<p class="bottom-buttom">
							<a href="clientarea.php?action=domains">{$LANG.mydomaintitle}</a>
							<a href="domainchecker.php">{$LANG.registernewdomain}</a>
						</p>
					</div>
				</div>
			</div>
	   {elseif $condlinks.affiliates && $clientsstats.isAffiliate}
			<div class="col-sm-3">
				<div class="gridster-item">
					<div class="dashboard-widget">
						<div class="alladmintextHeader hoverbggray">
							<div class="widgetLabel">
								<h2 class="widgetTitle">{$LANG.affiliatessignups}</h2>
							</div>
						</div>
						<div class="widgetBody alladmintext">
							<h3 class="boxttl">{$clientsstats.numactivedomains}</h3>
							<p>{$LANG.affilatedescription}</p>
						</div>
						<p class="bottom-buttom">
							<a href="affiliates.php">{$LANG.myaffilates}</a>
						</p>
					</div>
				</div>
			</div>
		{else}
			<div class="col-sm-3">
				<div class="gridster-item">
					<div class="dashboard-widget">
						<div class="alladmintextHeader hoverbggray">
							<div class="widgetLabel">
								<h2 class="widgetTitle">{$LANG.quotes}</h2>
							</div>
						</div>
						<div class="widgetBody alladmintext">
							<h3 class="boxttl">{$clientsstats.numquotes} {$LANG.activquotes}</h3>
							<p>{$LANG.myquotesdescp}</p>
						</div>
						<p class="bottom-buttom">
							<a href="clientarea.php?action=quotes">{$LANG.myquotes}</a>
						</p>
					</div>
				</div>
			</div>
		{/if}
	    <div class="col-sm-3">
			<div class="gridster-item">
				<div class="dashboard-widget">
					<div class="alladmintextHeader hoverbggray">
						<div class="widgetLabel">
							<h2 class="widgetTitle">{$LANG.navtickets}</h2>
						</div>
					</div>
					<div class="widgetBody alladmintext">
						<h3 class="boxttl">{$clientsstats.numactivetickets} {$LANG.opentickettitle}</h3>
						<p>{$LANG.openticketdesc}</p>
					</div>
					<p class="bottom-buttom">
						<a href="supporttickets.php">{$LANG.mytickets}</a>
						<a href="submitticket.php">{$LANG.navopenticket}</a>
					</p>
				</div>
			</div>
	    </div>
	    <div class="col-sm-3">
			<div class="gridster-item">
				<div class="dashboard-widget">
					<div class="alladmintextHeader hoverbggray">
						<div class="widgetLabel">
							<h2 class="widgetTitle">{$LANG.navinvoices}</h2>
						</div>
					</div>
					<div class="widgetBody alladmintext">
						<h3 class="boxttl">{$clientsstats.numunpaidinvoices} {$LANG.unpaidinvoicetitle}</h3>
						<p>{$LANG.unpaidinvoicedesc}</p>
					</div>
					<p class="bottom-buttom">
						<a href="clientarea.php?action=invoices">{$LANG.invoices}</a>
						<a href="clientarea.php?action=masspay&all=true">{$LANG.masspayall}</a>
					</p>
				</div>
			</div>
	    </div>
	</div>
</div>
<div class="support_tickets wgs-margin-top-zero">
		<div class="home-promo-product">
		{foreach from=$addons_html item=addon_html}
			<div>
				{$addon_html}
			</div>
		{/foreach}
		</div>

		{if $captchaError}
			<div class="alert alert-danger">
				{$captchaError}
			</div>
		{/if}

	 <div class="row">
	   <div class="col-sm-6">
			{function name=outputHomePanels}
			{if $item->getName() neq 'Register a New Domain'}
				<div menuItemName="{$item->getName()}" class="home-panel-summary {if $item->getName() eq 'Recent News'}support_tickets_col wgs-recen{else}support_tickets_col {$item->getName()|truncate:5:'':true|lower}{/if}" {if $item->getAttribute('id')} id="{$item->getAttribute('id')}"{/if}>
					<div class="inner-body-home-panel">
						<div class="panel-head-home">
							<div class="wid-level">
								<h3 class="panel-title">
									{if $item->getExtra('btn-link') && $item->getExtra('btn-text')}
										<div class="pull-right wgs-a-btn">
											<a href="{$item->getExtra('btn-link')}">
												{if $item->getExtra('btn-icon')}{/if}
												{$item->getExtra('btn-text')}
											</a>
										</div>
									{/if}
									{$item->getLabel()}
									{if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
								</h3>
							</div>
						</div>
						{if $item->hasBodyHtml()}
							<div class="panel-body">
								{$item->getBodyHtml()}
							</div>
						{/if}
						{if $item->hasChildren()}
							<div class="list-group{if $item->getChildrenAttribute('class')} {$item->getChildrenAttribute('class')}{/if}">
								{foreach $item->getChildren() as $childItem}
									{if $childItem->getUri()}
										<a menuItemName="{$childItem->getName()}" href="{$childItem->getUri()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}{if $childItem->isCurrent()} active{/if}"{if $childItem->getAttribute('dataToggleTab')} data-toggle="tab"{/if}{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if} id="{$childItem->getId()}">
											{if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
											{$childItem->getLabel()}
											{if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
										</a>
									{else}
										<div menuItemName="{$childItem->getName()}" class="list-group-item{if $childItem->getClass()} {$childItem->getClass()}{/if}" id="{$childItem->getId()}">
											{if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{/if}
											{$childItem->getLabel()}
											{if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
										</div>
									{/if}
								{/foreach}
							</div>
						{/if}
						<div class="col-sm-12">
							{if $item->hasFooterHtml()}
								{$item->getFooterHtml()}
							{/if}
						</div>
					</div>
				</div>
			{/if} 
			{/function}
			{foreach $panels as $item}
                {if $item->getExtra('colspan')}
                    {outputHomePanels}
                    {assign "panels" $panels->removeChild($item->getName())}
                {/if}
            {/foreach}
			
			{foreach $panels as $item}
				{if $item@iteration is odd}
					{outputHomePanels}
				{/if}
			{/foreach}
	   </div>
	   <div class="col-sm-6">
			{foreach $panels as $item}
				{if $item@iteration is even}
					{outputHomePanels}
				{/if}
			{/foreach}
	   </div>
	 </div>
</div>	
</div>
<script>
    function homePagePromoProducts(){
        /**
             * Market connect promo functionality 
             */
        if(jQuery(".home-promo-product").length > 0){
            jQuery("#home-promo-widget-title").html(jQuery(".home-promo-product").find("h3").eq(0).html());		
        }
        var leftDiv = false;
        var rightDiv = false;
        if(jQuery(".promo-banner.symantec").length > 0){
            leftDiv = true;
            jQuery("#ssl-promo-blk").removeClass("w-hidden");
            jQuery("#rapidSslTitle").html(jQuery(".promo-banner.symantec").find(".card-body").find(".content").find("h3").html());
            jQuery("#rapidSslTitle").attr("href",jQuery(".promo-banner.symantec").find(".card-body").find(".content").find("h3").find("a").attr("href"));
            jQuery("#rapidSslDescp").html(jQuery(".promo-banner.symantec").find(".card-body").find(".content").find("h4").html());
        }
        if(jQuery(".promo-banner.spamexperts").length > 0){
            leftDiv = true;
            jQuery("#spamexpert-promo-blk").removeClass("w-hidden");
            jQuery("#spamexpertTitle").html(jQuery(".promo-banner.spamexperts").find(".card-body").find(".content").find("h3").html());
            jQuery("#spamexpertTitle").attr("href",jQuery(".promo-banner.spamexperts").find(".card-body").find(".content").find("h3").find("a").attr("href"));
            jQuery("#spamexpertDescp").html(jQuery(".promo-banner.spamexperts").find(".card-body").find(".content").find("h4").html());
        }
        if(jQuery(".promo-banner.xovinow").length > 0){
            leftDiv = true;
            jQuery("#xovinow-promo-blk").removeClass("w-hidden");
            jQuery("#xovinowTitle").html(jQuery(".promo-banner.xovinow").find(".card-body").find(".content").find("h3").html());
            jQuery("#xovinowTitle").attr("href",jQuery(".promo-banner.xovinow").find(".card-body").find(".content").find("h3").find("a").attr("href"));
            jQuery("#xovinowDescp").html(jQuery(".promo-banner.xovinow").find(".card-body").find(".content").find("h4").html());
        }
		if(jQuery(".promo-banner.sitebuilder").length > 0){
            leftDiv = true;
            jQuery("#sitebuilder-promo-blk").removeClass("w-hidden");
            jQuery("#sitebuilderTitle").html(jQuery(".promo-banner.sitebuilder").find(".card-body").find(".content").find("h3").html());
            jQuery("#sitebuilderTitle").attr("href",jQuery(".promo-banner.sitebuilder").find(".card-body").find(".content").find("h3").find("a").attr("href"));
            jQuery("#sitebuilderDescp").html(jQuery(".promo-banner.sitebuilder").find(".card-body").find(".content").find("h4").html());
        }
        if(jQuery(".promo-banner.weebly").length > 0){
            leftDiv = true;
            jQuery("#weebly-promo-blk").removeClass("w-hidden");
            jQuery("#weeblyTitle").html(jQuery(".promo-banner.weebly").find(".card-body").find(".content").find("h3").html());
            jQuery("#weeblyTitle").attr("href",jQuery(".promo-banner.weebly").find(".card-body").find(".content").find("h3").find("a").attr("href"));
            jQuery("#weeblyDescp").html(jQuery(".promo-banner.weebly").find(".card-body").find(".content").find("h4").html());
        }
        if(jQuery(".promo-banner.ox").length > 0){
            leftDiv = true;
            jQuery("#ox-promo-blk").removeClass("w-hidden");
            jQuery("#oxTitle").html(jQuery(".promo-banner.ox").find(".card-body").find(".content").find("h3").html());
            jQuery("#oxTitle").attr("href",jQuery(".promo-banner.ox").find(".card-body").find(".content").find("h3").find("a").attr("href"));
            jQuery("#oxDescp").html(jQuery(".promo-banner.ox").find(".card-body").find(".content").find("h4").html());
        }
		/*** Right Side Section ***/
		if(jQuery(".promo-banner.sitelock").length > 0){
            rightDiv = true;
            jQuery("#sitelock-promo-blk").removeClass("w-hidden");
            jQuery("#sitelockTitle").html(jQuery(".promo-banner.sitelock").find(".card-body").find(".content").find("h3").html());
            jQuery("#sitelockTitle").attr("href",jQuery(".promo-banner.sitelock").find(".card-body").find(".content").find("h3").find("a").attr("href"));
            jQuery("#sitelockDescp").html(jQuery(".promo-banner.sitelock").find(".card-body").find(".content").find("h4").html());
        }		
        if(jQuery(".promo-banner.codeguard").length > 0){
            rightDiv = true;
            jQuery("#codeguard-promo-blk").removeClass("w-hidden");
            jQuery("#codeguardTitle").html(jQuery(".promo-banner.codeguard").find(".card-body").find(".content").find("h3").html());
            jQuery("#codeguardTitle").attr("href",jQuery(".promo-banner.codeguard").find(".card-body").find(".content").find("h3").find("a").attr("href"));
            jQuery("#codeguardDescp").html(jQuery(".promo-banner.codeguard").find(".card-body").find(".content").find("h4").html());
        }
        if(jQuery(".promo-banner.marketgoo").length > 0){
            rightDiv = true;
            jQuery("#marketgo-promo-blk").removeClass("w-hidden");
            jQuery("#marketgooTitle").html(jQuery(".promo-banner.marketgoo").find(".card-body").find(".content").find("h3").html());
            jQuery("#marketgooTitle").attr("href",jQuery(".promo-banner.marketgoo").find(".card-body").find(".content").find("h3").find("a").attr("href"));
            jQuery("#marketgooDescp").html(jQuery(".promo-banner.marketgoo").find(".card-body").find(".content").find("h4").html());
        }
        if(jQuery(".promo-banner.threesixtymonitoring").length > 0){
            rightDiv = true;
            jQuery("#threesixtymonitoring-promo-blk").removeClass("w-hidden");
            jQuery("#threesixtymonitoringTitle").html(jQuery(".promo-banner.threesixtymonitoring").find(".card-body").find(".content").find("h3").html());
            jQuery("#threesixtymonitoringTitle").attr("href",jQuery(".promo-banner.threesixtymonitoring").find(".card-body").find(".content").find("h3").find("a").attr("href"));
            jQuery("#threesixtymonitoringDescp").html(jQuery(".promo-banner.threesixtymonitoring").find(".card-body").find(".content").find("h4").html());
        }
        if(jQuery(".promo-banner.nordvpn").length > 0){
            rightDiv = true;
            jQuery("#nordvpn-promo-blk").removeClass("w-hidden");
            jQuery("#nordvpnTitle").html(jQuery(".promo-banner.nordvpn").find(".card-body").find(".content").find("h3").html());
            jQuery("#nordvpnTitle").attr("href",jQuery(".promo-banner.nordvpn").find(".card-body").find(".content").find("h3").find("a").attr("href"));
            jQuery("#nordvpnDescp").html(jQuery(".promo-banner.nordvpn").find(".card-body").find(".content").find("h4").html());
        }
        if(!leftDiv){
            jQuery("#left-side-promo-div").addClass("w-hidden");
        }
        if(!rightDiv){
            jQuery("#right-side-promo-div").addClass("w-hidden");
        }
        var leftCount = -1;
        var rightCount = -1;
        if(!jQuery("#left-side-promo-div").hasClass("w-hidden")){
            leftCount = parseInt(4)-parseInt(jQuery("#left-side-promo-div").find(".w-hidden").length);
        }
        if(!jQuery("#right-side-promo-div").hasClass("w-hidden")){
            rightCount = parseInt(3)-parseInt(jQuery("#right-side-promo-div").find(".w-hidden").length);
        }
        if(leftCount > 0){
            if(leftCount > rightCount){
                jQuery(".order-div-mx").addClass("rows-"+leftCount);
            }else{
                jQuery(".order-div-mx").addClass("rows-"+rightCount);
            }
        }
        if(rightCount > 0){
            if(rightCount > leftCount){
                jQuery(".order-div-mx").addClass("rows-"+rightCount);	
            }else{
                jQuery(".order-div-mx").addClass("rows-"+leftCount);
            }
        }
    }
    homePagePromoProducts();
	var activeServiceDiv = jQuery(".support_tickets_col.activ").outerHeight();
	var recentNewsDiv = jQuery(".support_tickets_col.recen").outerHeight();
	var newsRecentDiv = jQuery(".support_tickets_col.wgs-recen").outerHeight();
	if(activeServiceDiv > 300){
		jQuery(".support_tickets_col.activ").addClass('sb-container');
		//jQuery(".sb-container").scrollBox();
	}
	if(recentNewsDiv > 300){
		jQuery(".support_tickets_col.recen").addClass('sb-container');
		//jQuery(".sb-container").scrollBox();
	}
	if(newsRecentDiv > 300){
		jQuery(".support_tickets_col.wgs-recen").addClass('sb-container');
		//jQuery(".sb-container").scrollBox();
	}
</script>