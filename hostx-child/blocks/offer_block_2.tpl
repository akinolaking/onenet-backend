{if $hostx_blocks[$block_slug]}
<div class="custom-block-7 p-vertical">
  <div class="container">
	<div class="sp-offer-deals">
		<div class="sp-offer">
			<h3>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h3>
			<h2>{eval var=$hostx_blocks[$block_slug]->sub_title|html_entity_decode}</h2>
			{eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
		</div>
		{foreach $hostx_blocks[$block_slug]->widgets as $widget}
			{eval var=$widget->widget_description|html_entity_decode}
		{/foreach}
	</div>
  </div>
</div>
{else}
<div class="custom-block-7 p-vertical">
  <div class="container">
		<div class="sp-offer-deals">
			<div class="sp-offer">
			<h3>Special Offer</h3>
			<h2>50% Off</h2>
			<a href="#" class="see-ofr-btn button-style hx-primary-btn">See Special Offers</a>
			</div>
			<div class="cuppon-box">
				<div class="cp-bx">
					<h5><strong>SHARED / RESELLER</strong><p>- Save 50% on First Term (up to 3 years) with</p> <b>code:</b> <span class="c-code">KH50DEAL</span></h5>
				</div>
				<div class="cp-bx"> 
					<h5><strong>SSD VPS / CLOUD VPS</strong><p>- Save 30% for LIFE with</p> <b>Code:</b> <span class="c-code">KH30DEAL</span></h5>
				</div>
				<div class="cp-bx">
					<h5><strong>DEDICATED</strong><p>- Check back</p></h5>
				</div>
			</div>
		</div>
  </div>
</div>
{/if}