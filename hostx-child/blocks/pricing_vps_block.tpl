{if $pageHaveProductData eq 'yes'}
<div class="main-sate pricing-block-vps-page-V2">
	<div class="container">
		<div class="upper-sec-satelite">
			<div class="satelitetop-detail" id="billingcycle-tabs-block">
              {if $productsDataCycles.monthly}
                <p class="active" onclick="toggleBillingTabsVpsLatest(this,'monthly');">{$LANG.orderpaymenttermmonthly}</p>
              {/if}
              {if $productsDataCycles.quarterly}
                <p {if !$productsDataCycles.monthly}class="active"{/if}onclick="toggleBillingTabsVpsLatest(this,'quarterly');">{$LANG.orderpaymenttermquarterly}</p>
              {/if}
              {if $productsDataCycles.semiannually}
                <p {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly}class="active"{/if} onclick="toggleBillingTabsVpsLatest(this,'semiannually');">{$LANG.orderpaymenttermsemiannually}</p>
              {/if}
              {if $productsDataCycles.annually}
                <p {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually}class="active"{/if} onclick="toggleBillingTabsVpsLatest(this,'annually');">{$LANG.orderpaymenttermannually}</p>
              {/if}
              {if $productsDataCycles.biennially}
                <p {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && !$productsDataCycles.annually}class="active"{/if} onclick="toggleBillingTabsVpsLatest(this,'biennially');">{$LANG.orderpaymenttermbiennially}</p>
              {/if}
              {if $productsDataCycles.triennially}
                <p {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && !$productsDataCycles.annually && !$productsDataCycles.biennially}class="active"{/if} onclick="toggleBillingTabsVpsLatest(this,'triennially');">{$LANG.orderpaymenttermtriennially}</p>
              {/if}
			</div>
		</div>
		<div class="sate-bottom-sec">
            {foreach from=$productsData item=productData}
                <div class="sate detail-inner-sec">
                    <div class="col1">
                        <div class="country-sec">
                            <h6>{$productData.name}</h6>
                        </div>
                        <div class="offer-sec">
                          <div class="price-section-vps-blk">
                            {if $productsDataCycles.onetime}
                              <h5 class="btn-cnfgr monthly" {if $productsDataCycles.onetime}style="display: block;"{/if}><strong>{$productData.pricing.monthly}<span>/{$LANG.orderpaymenttermonetime}</span></strong>
                                {if $productData.pricing.onetime.strikedPrice && $productData.pricing.onetime.strikedPrice['rawStriked'] gt 0}
                                  {if $productData.pricing.onetime.strikedPrice['strikedType'] eq '0'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.onetime.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount percentage-dis-vps">
                                        {$LANG.discount_save_badge} {$productData.pricing.onetime.strikedPrice['strikedAmount']}%
                                      </div>
                                    </div>														
                                  {elseif $productData.pricing.onetime.strikedPrice['strikedType'] eq '1'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.onetime.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount flat-dis-vps">{$LANG.discount_flat_badge} {$productData.pricing.onetime.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                                    </div>														
                                  {/if}
                                {/if}
                              </h5>
                            {/if}
                            {if $productsDataCycles.free}
                              <h5 class="btn-cnfgr monthly" {if $productsDataCycles.free}style="display: block;"{/if}><strong>{$productData.pricing.free}<span>/{$LANG.orderpaymenttermfreeaccount}</span></strong></h5>
                            {/if}
                            {if !$productsDataCycles.onetime || !$productsDataCycles.free}
                              <h5 class="btn-cnfgr monthly" {if $productsDataCycles.monthly}style="display: block;"{/if}>{if $productData.pricing.monthly.cycleHasConfig eq '1'}<p class="has-config-vps-price-horizontal">{$LANG.startingfrom}</p>{/if}<strong>{$productData.pricing.monthly.price}<span>/{if $hostx_theme_settings.bill_cycle_setting eq '' || $hostx_theme_settings.bill_cycle_setting eq '1'}{$LANG.orderpaymenttermmonthly}{elseif $hostx_theme_settings.bill_cycle_setting eq '2'}{$LANG.pricingCycleShort.monthly}{elseif $hostx_theme_settings.bill_cycle_setting eq '3'}{$LANG.pricingCycleLong.monthly}{/if}</span></strong>
                                {if $productData.pricing.monthly.strikedPrice && $productData.pricing.monthly.strikedPrice['rawStriked'] gt 0}
                                  {if $productData.pricing.monthly.strikedPrice['strikedType'] eq '0'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.monthly.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount percentage-dis-vps">
                                        {$LANG.discount_save_badge} {$productData.pricing.monthly.strikedPrice['strikedAmount']}%
                                      </div>
                                    </div>														
                                  {elseif $productData.pricing.monthly.strikedPrice['strikedType'] eq '1'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.monthly.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount flat-dis-vps">{$LANG.discount_flat_badge} {$productData.pricing.monthly.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                                    </div>														
                                  {/if}
                                {/if}
                              </h5>
                              <h5 class="btn-cnfgr quarterly" {if !$productsDataCycles.monthly && $productsDataCycles.quarterly}style="display: block;"{/if}>{if $productData.pricing.quarterly.cycleHasConfig eq '1'}<p class="has-config-vps-price-horizontal">{$LANG.startingfrom}</p>{/if}<strong>{$productData.pricing.quarterly.price}<span>/{if $hostx_theme_settings.bill_cycle_setting eq '' || $hostx_theme_settings.bill_cycle_setting eq '1'}{$LANG.orderpaymenttermquarterly}{elseif $hostx_theme_settings.bill_cycle_setting eq '2'}{$LANG.pricingCycleShort.quarterly}{elseif $hostx_theme_settings.bill_cycle_setting eq '3'}{$LANG.pricingCycleLong.quarterly}{/if}</span></strong>
                                {if $productData.pricing.quarterly.strikedPrice && $productData.pricing.quarterly.strikedPrice['rawStriked'] gt 0}
                                  {if $productData.pricing.quarterly.strikedPrice['strikedType'] eq '0'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.quarterly.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount percentage-dis-vps">
                                        {$LANG.discount_save_badge} {$productData.pricing.quarterly.strikedPrice['strikedAmount']}%
                                      </div>
                                    </div>														
                                  {elseif $productData.pricing.quarterly.strikedPrice['strikedType'] eq '1'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.quarterly.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount flat-dis-vps">{$LANG.discount_flat_badge} {$productData.pricing.quarterly.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                                    </div>														
                                  {/if}
                                {/if}                                
                              </h5>
                              <h5 class="btn-cnfgr semiannually" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && $productsDataCycles.semiannually}style="display: block;"{/if}>{if $productData.pricing.semiannually.cycleHasConfig eq '1'}<p class="has-config-vps-price-horizontal">{$LANG.startingfrom}</p>{/if}<strong>{$productData.pricing.semiannually.price}<span>/{if $hostx_theme_settings.bill_cycle_setting eq '' || $hostx_theme_settings.bill_cycle_setting eq '1'}{$LANG.orderpaymenttermsemiannually}{elseif $hostx_theme_settings.bill_cycle_setting eq '2'}{$LANG.pricingCycleShort.semiannually}{elseif $hostx_theme_settings.bill_cycle_setting eq '3'}{$LANG.pricingCycleLong.semiannually}{/if}</span></strong>
                                {if $productData.pricing.semiannually.strikedPrice && $productData.pricing.semiannually.strikedPrice['rawStriked'] gt 0}
                                  {if $productData.pricing.semiannually.strikedPrice['strikedType'] eq '0'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.semiannually.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount percentage-dis-vps">
                                        {$LANG.discount_save_badge} {$productData.pricing.semiannually.strikedPrice['strikedAmount']}%
                                      </div>
                                    </div>														
                                  {elseif $productData.pricing.semiannually.strikedPrice['strikedType'] eq '1'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.semiannually.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount flat-dis-vps">{$LANG.discount_flat_badge} {$productData.pricing.semiannually.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                                    </div>														
                                  {/if}
                                {/if}                             
                              </h5>
                              <h5 class="btn-cnfgr annually" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && $productsDataCycles.annually}style="display: block;"{/if}>{if $productData.pricing.annually.cycleHasConfig eq '1'}<p class="has-config-vps-price-horizontal">{$LANG.startingfrom}</p>{/if}<strong>{$productData.pricing.annually.price}<span>/{if $hostx_theme_settings.bill_cycle_setting eq '' || $hostx_theme_settings.bill_cycle_setting eq '1'}{$LANG.orderpaymenttermannually}{elseif $hostx_theme_settings.bill_cycle_setting eq '2'}{$LANG.pricingCycleShort.annually}{elseif $hostx_theme_settings.bill_cycle_setting eq '3'}{$LANG.pricingCycleLong.annually}{/if}</span></strong>
                                {if $productData.pricing.annually.strikedPrice && $productData.pricing.annually.strikedPrice['rawStriked'] gt 0}
                                  {if $productData.pricing.annually.strikedPrice['strikedType'] eq '0'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.annually.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount percentage-dis-vps">
                                        {$LANG.discount_save_badge} {$productData.pricing.annually.strikedPrice['strikedAmount']}%
                                      </div>
                                    </div>														
                                  {elseif $productData.pricing.annually.strikedPrice['strikedType'] eq '1'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.annually.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount flat-dis-vps">{$LANG.discount_flat_badge} {$productData.pricing.annually.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                                    </div>														
                                  {/if}
                                {/if}                                
                              </h5>
                              <h5 class="btn-cnfgr biennially" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && !$productsDataCycles.annually && $productsDataCycles.biennially}style="display: block;"{/if}>{if $productData.pricing.biennially.cycleHasConfig eq '1'}<p class="has-config-vps-price-horizontal">{$LANG.startingfrom}</p>{/if}<strong>{$productData.pricing.biennially.price}<span>/{if $hostx_theme_settings.bill_cycle_setting eq '' || $hostx_theme_settings.bill_cycle_setting eq '1'}{$LANG.orderpaymenttermbiennially}{elseif $hostx_theme_settings.bill_cycle_setting eq '2'}{$LANG.pricingCycleShort.biennially}{elseif $hostx_theme_settings.bill_cycle_setting eq '3'}{$LANG.pricingCycleLong.biennially}{/if}</span></strong>
                                {if $productData.pricing.biennially.strikedPrice && $productData.pricing.biennially.strikedPrice['rawStriked'] gt 0}
                                  {if $productData.pricing.biennially.strikedPrice['strikedType'] eq '0'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.biennially.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount percentage-dis-vps">
                                        {$LANG.discount_save_badge} {$productData.pricing.biennially.strikedPrice['strikedAmount']}%
                                      </div>
                                    </div>														
                                  {elseif $productData.pricing.biennially.strikedPrice['strikedType'] eq '1'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.biennially.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount flat-dis-vps">{$LANG.discount_flat_badge} {$productData.pricing.biennially.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                                    </div>														
                                  {/if}
                                {/if}
                              </h5>
                              <h5 class="btn-cnfgr triennially" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && !$productsDataCycles.annually && !$productsDataCycles.biennially && $productsDataCycles.triennially}style="display: block;"{/if}>{if $productData.pricing.triennially.cycleHasConfig eq '1'}<p class="has-config-vps-price-horizontal">{$LANG.startingfrom}</p>{/if}<strong>{$productData.pricing.triennially.price}<span>/{if $hostx_theme_settings.bill_cycle_setting eq '' || $hostx_theme_settings.bill_cycle_setting eq '1'}{$LANG.orderpaymenttermtriennially}{elseif $hostx_theme_settings.bill_cycle_setting eq '2'}{$LANG.pricingCycleShort.triennially}{elseif $hostx_theme_settings.bill_cycle_setting eq '3'}{$LANG.pricingCycleLong.triennially}{/if}</span></strong>
                                {if $productData.pricing.triennially.strikedPrice && $productData.pricing.triennially.strikedPrice['rawStriked'] gt 0}
                                  {if $productData.pricing.triennially.strikedPrice['strikedType'] eq '0'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.triennially.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount percentage-dis-vps">
                                        {$LANG.discount_save_badge} {$productData.pricing.triennially.strikedPrice['strikedAmount']}%
                                      </div>
                                    </div>														
                                  {elseif $productData.pricing.triennially.strikedPrice['strikedType'] eq '1'}
                                    <div class="dicount_price_V3">
                                      <div class="striked-price">{$productData.pricing.triennially.strikedPrice['formatStriked']}</div>
                                      <div class="price_V3_discount-discount flat-dis-vps">{$LANG.discount_flat_badge} {$productData.pricing.triennially.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                                    </div>														
                                  {/if}
                                {/if}
                              </h5>
                            {/if}
                          </div>
                          <div class="right-sec">
                              <ul class="buy-btn-vps-blocks">
                                  <li class="buy-btn">
                                  {if $productsDataCycles.onetime}
                                      <a href="cart.php?a=add&pid={$productData.pid}" class="btn-cnfgr button-style hx-primary-btn" {if $productsDataCycles.onetime}style="display: block;"{/if}>{$LANG.vps_order_now}</a>
                                  {/if}
                                  {if $productsDataCycles.free}
                                  <a href="cart.php?a=add&pid={$productData.pid}" class="btn-cnfgr button-style hx-primary-btn" {if $productsDataCycles.free}style="display: block;"{/if}>{$LANG.vps_order_now}</a>
                                  {/if}
                                  {if !$productsDataCycles.onetime || !$productsDataCycles.free}
                                  <a href="cart.php?a=add&pid={$productData.pid}&billingcycle=monthly" class="btn-cnfgr monthly button-style hx-primary-btn" {if $productsDataCycles.monthly}style="display: block;"{/if}>{$LANG.vps_order_now}</a>  
                                  <a href="cart.php?a=add&pid={$productData.pid}&billingcycle=quarterly" class="btn-cnfgr quarterly button-style hx-primary-btn" {if !$productsDataCycles.monthly && $productsDataCycles.quarterly}style="display: block;"{/if}>{$LANG.vps_order_now}</a>  
                                  <a href="cart.php?a=add&pid={$productData.pid}&billingcycle=semiannually" class="btn-cnfgr semiannually button-style hx-primary-btn" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && $productsDataCycles.semiannually}style="display: block;"{/if}>{$LANG.vps_order_now}</a>  
                                  <a href="cart.php?a=add&pid={$productData.pid}&billingcycle=annually" class="btn-cnfgr annually button-style hx-primary-btn" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && $productsDataCycles.annually}style="display: block;"{/if}>{$LANG.vps_order_now}</a>
                                  <a href="cart.php?a=add&pid={$productData.pid}&billingcycle=biennially" class="btn-cnfgr biennially button-style hx-primary-btn" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && !$productsDataCycles.annually && $productsDataCycles.biennially}style="display: block;"{/if}>{$LANG.vps_order_now}</a>
                                  <a href="cart.php?a=add&pid={$productData.pid}&billingcycle=triennially" class="btn-cnfgr triennially button-style hx-primary-btn" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && !$productsDataCycles.annually && !$productsDataCycles.biennially && $productsDataCycles.triennially}style="display: block;"{/if}>{$LANG.vps_order_now}</a>
                                  {/if} 
                                  </li>                               
                              </ul>
                          </div>
                      </div>
                    </div>
                    <div class="col3 common-bottom">
                        {$productData.customDescription.pDescription}
                    </div>
                </div>
            {/foreach}
		</div>
	</div>
</div>
{/if}