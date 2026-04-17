<div class="pricing_section sslpricing_section">
    <div class="container">
    <div class="tab-content">
      <div class="tab-pane container active" id="pricing">
          <div class="price_top">
              {if !$productsDataCycles.onetime}
                <ul class="months-ul" id="changeBillingCycle">
                      {if $productsDataCycles.monthly}
                        <li><a href="javascript:;" class="active" onclick="toggleBillingTabsVps(this,'monthly');">{$LANG.orderpaymenttermmonthly}</a></li>
                      {/if}
                      {if $productsDataCycles.quarterly}
                        <li><a href="javascript:;" {if !$productsDataCycles.monthly}class="active"{/if}onclick="toggleBillingTabsVps(this,'quarterly');">{$LANG.orderpaymenttermquarterly}</a></li>
                      {/if}
                      {if $productsDataCycles.semiannually}
                        <li><a href="javascript:;" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly}class="active"{/if} onclick="toggleBillingTabsVps(this,'semiannually');">{$LANG.orderpaymenttermsemiannually}</a></li>
                      {/if}
                      {if $productsDataCycles.annually}
                        <li><a href="javascript:;" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually}class="active"{/if} onclick="toggleBillingTabsVps(this,'annually');">{$LANG.orderpaymenttermannually}</a></li>
                      {/if}
                      {if $productsDataCycles.biennially}
                        <li><a href="javascript:;" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && !$productsDataCycles.annually}class="active"{/if} onclick="toggleBillingTabsVps(this,'biennially');">{$LANG.orderpaymenttermbiennially}</a></li>
                      {/if}
                      {if $productsDataCycles.triennially}
                        <li><a href="javascript:;" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && !$productsDataCycles.annually && !$productsDataCycles.biennially}class="active"{/if} onclick="toggleBillingTabsVps(this,'triennially');">{$LANG.orderpaymenttermtriennially}</a></li>
                      {/if}
                </ul>
              {/if}
          </div>
          <div class="price_group {if $productsDataCount eq '1'}single-product-slider{elseif $productsDataCount eq '2'}double-product-slider{/if}">
            <div id="productList_SSL" class="hostx-pricing-block-ssl-types {if $hostx_theme_settings.productlist_slide_setting eq '' || $hostx_theme_settings.productlist_slide_setting eq '3'}hostx-three-slide-active{elseif $hostx_theme_settings.productlist_slide_setting eq '4'}hostx-four-slide-active{/if}">
                {foreach from=$productsData item=productData}              
                    <div class="price_sect {if $productsDataCount eq '1' || $productsDataCount eq '2'}price-select-single-double{/if}">
                      {if $productsDataCount eq '1' || $productsDataCount eq '2'}
                        <div class="single-double-product-block">
                        <div>
                      {/if}
                      <h2>{$productData.name}</h2>
                      <p>{$productData.customDescription.pHeadSortDesc|unescape:'html'}</p>
                      {if $productsDataCycles.onetime}
                        <h5 class="blpr monthly" {if $productsDataCycles.pricing.onetime}style="display: block;"{/if}>
                          <div class="pricing-vps-sec-lower"> 
                            <strong>{$productData.pricing.monthly.price}<span>/{$LANG.orderpaymenttermonetime}</span></strong>
                          </div>
                          {if $productData.pricing.onetime.strikedPrice && $productData.pricing.onetime.strikedPrice['rawStriked'] gt 0}
                            {if $productData.pricing.onetime.strikedPrice['strikedType'] eq '0'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.onetime.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount percentage-dis">
                                  {$LANG.discount_save_badge} {$productData.pricing.onetime.strikedPrice['strikedAmount']}%
                                </div>
                              </div>														
                            {elseif $productData.pricing.onetime.strikedPrice['strikedType'] eq '1'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.onetime.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount flat-dis">{$LANG.discount_flat_badge} {$productData.pricing.onetime.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                              </div>														
                            {/if}
                          {/if}
                        </h5>
                      {/if}
                      {if $productsDataCycles.free}
                        <h5 class="blpr monthly" {if $productsDataCycles.pricing.free}style="display: block;"{/if}><strong>{$productData.pricing.free.price}<span>/{$LANG.orderpaymenttermfreeaccount}</span></strong></h5>
                      {/if}
                      {if !$productsDataCycles.onetime || !$productsDataCycles.free}
                          <h5 class="blpr monthly" {if $productsDataCycles.monthly}style="display: block;"{/if}>
                            <div class="pricing-vps-sec-lower">
                              {if $productData.pricing.monthly.cycleHasConfig eq '1'}
                                <p class="has-config-vps-price">{$LANG.startingfrom}</p>
                              {/if}
                              <strong>{$productData.pricing.monthly.price}<span>/{if $hostx_theme_settings.bill_cycle_setting eq '' || $hostx_theme_settings.bill_cycle_setting eq '1'}{$LANG.orderpaymenttermmonthly}{elseif $hostx_theme_settings.bill_cycle_setting eq '2'}{$LANG.pricingCycleShort.monthly}{elseif $hostx_theme_settings.bill_cycle_setting eq '3'}{$LANG.pricingCycleLong.monthly}{/if}</span></strong>
                            </div>
                          {if $productData.pricing.monthly.strikedPrice && $productData.pricing.monthly.strikedPrice['rawStriked'] gt 0}
                            {if $productData.pricing.monthly.strikedPrice['strikedType'] eq '0'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.monthly.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount percentage-dis">
                                  {$LANG.discount_save_badge} {$productData.pricing.monthly.strikedPrice['strikedAmount']}%
                                </div>
                              </div>														
                            {elseif $productData.pricing.monthly.strikedPrice['strikedType'] eq '1'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.monthly.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount flat-dis">{$LANG.discount_flat_badge} {$productData.pricing.monthly.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                              </div>														
                            {/if}
                          {/if}
                        </h5>
                        <h5 class="blpr quarterly" {if !$productsDataCycles.monthly && $productsDataCycles.quarterly}style="display: block;"{/if}>
                          <div class="pricing-vps-sec-lower">
                            {if $productData.pricing.quarterly.cycleHasConfig eq '1'}
                              <p class="has-config-vps-price">{$LANG.startingfrom}</p>
                            {/if}
                            <strong>{$productData.pricing.quarterly.price}<span>/{if $hostx_theme_settings.bill_cycle_setting eq '' || $hostx_theme_settings.bill_cycle_setting eq '1'}{$LANG.orderpaymenttermquarterly}{elseif $hostx_theme_settings.bill_cycle_setting eq '2'}{$LANG.pricingCycleShort.quarterly}{elseif $hostx_theme_settings.bill_cycle_setting eq '3'}{$LANG.pricingCycleLong.quarterly}{/if}</span></strong>
                          </div>
                          {if $productData.pricing.quarterly.strikedPrice && $productData.pricing.quarterly.strikedPrice['rawStriked'] gt 0}
                            {if $productData.pricing.quarterly.strikedPrice['strikedType'] eq '0'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.quarterly.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount percentage-dis">
                                  {$LANG.discount_save_badge} {$productData.pricing.quarterly.strikedPrice['strikedAmount']}%
                                </div>
                              </div>														
                            {elseif $productData.pricing.quarterly.strikedPrice['strikedType'] eq '1'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.quarterly.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount flat-dis">{$LANG.discount_flat_badge} {$productData.pricing.quarterly.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                              </div>														
                            {/if}
                          {/if}
                        </h5>
                        <h5 class="blpr semiannually" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && $productsDataCycles.semiannually}style="display: block;"{/if}>
                          <div class="pricing-vps-sec-lower">
                            {if $productData.pricing.semiannually.cycleHasConfig eq '1'}
                              <p class="has-config-vps-price">{$LANG.startingfrom}</p>
                            {/if}
                            <strong>{$productData.pricing.semiannually.price}<span>/{if $hostx_theme_settings.bill_cycle_setting eq '' || $hostx_theme_settings.bill_cycle_setting eq '1'}{$LANG.orderpaymenttermsemiannually}{elseif $hostx_theme_settings.bill_cycle_setting eq '2'}{$LANG.pricingCycleShort.semiannually}{elseif $hostx_theme_settings.bill_cycle_setting eq '3'}{$LANG.pricingCycleLong.semiannually}{/if}</span></strong>
                          </div>
                          {if $productData.pricing.semiannually.strikedPrice && $productData.pricing.semiannually.strikedPrice['rawStriked'] gt 0}
                            {if $productData.pricing.semiannually.strikedPrice['strikedType'] eq '0'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.semiannually.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount percentage-dis">
                                  {$LANG.discount_save_badge} {$productData.pricing.semiannually.strikedPrice['strikedAmount']}%
                                </div>
                              </div>														
                            {elseif $productData.pricing.semiannually.strikedPrice['strikedType'] eq '1'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.semiannually.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount flat-dis">{$LANG.discount_flat_badge} {$productData.pricing.semiannually.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                              </div>														
                            {/if}
                          {/if}
                        </h5>
                        <h5 class="blpr annually" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && $productsDataCycles.annually}style="display: block;"{/if}>
                          <div class="pricing-vps-sec-lower">
                            {if $productData.pricing.annually.cycleHasConfig eq '1'}
                              <p class="has-config-vps-price">{$LANG.startingfrom}</p>
                            {/if}
                            <strong>{$productData.pricing.annually.price}<span>/{if $hostx_theme_settings.bill_cycle_setting eq '' || $hostx_theme_settings.bill_cycle_setting eq '1'}{$LANG.orderpaymenttermannually}{elseif $hostx_theme_settings.bill_cycle_setting eq '2'}{$LANG.pricingCycleShort.annually}{elseif $hostx_theme_settings.bill_cycle_setting eq '3'}{$LANG.pricingCycleLong.annually}{/if}</span></strong>
                          </div>
                          {if $productData.pricing.annually.strikedPrice && $productData.pricing.annually.strikedPrice['rawStriked'] gt 0}
                            {if $productData.pricing.annually.strikedPrice['strikedType'] eq '0'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.annually.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount percentage-dis">
                                  {$LANG.discount_save_badge} {$productData.pricing.annually.strikedPrice['strikedAmount']}%
                                </div>
                              </div>														
                            {elseif $productData.pricing.annually.strikedPrice['strikedType'] eq '1'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.annually.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount flat-dis">{$LANG.discount_flat_badge} {$productData.pricing.annually.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                              </div>														
                            {/if}
                          {/if}
                        </h5>
                        <h5 class="blpr biennially" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && !$productsDataCycles.annually && $productsDataCycles.biennially}style="display: block;"{/if}>
                          <div class="pricing-vps-sec-lower">
                            {if $productData.pricing.biennially.cycleHasConfig eq '1'}
                              <p class="has-config-vps-price">{$LANG.startingfrom}</p>
                            {/if}
                            <strong>{$productData.pricing.biennially.price}<span>/{if $hostx_theme_settings.bill_cycle_setting eq '' || $hostx_theme_settings.bill_cycle_setting eq '1'}{$LANG.orderpaymenttermbiennially}{elseif $hostx_theme_settings.bill_cycle_setting eq '2'}{$LANG.pricingCycleShort.biennially}{elseif $hostx_theme_settings.bill_cycle_setting eq '3'}{$LANG.pricingCycleLong.biennially}{/if}</span></strong>
                          </div>
                          {if $productData.pricing.biennially.strikedPrice && $productData.pricing.biennially.strikedPrice['rawStriked'] gt 0}
                            {if $productData.pricing.biennially.strikedPrice['strikedType'] eq '0'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.biennially.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount percentage-dis">
                                  {$LANG.discount_save_badge} {$productData.pricing.biennially.strikedPrice['strikedAmount']}%
                                </div>
                              </div>														
                            {elseif $productData.pricing.biennially.strikedPrice['strikedType'] eq '1'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.biennially.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount flat-dis">{$LANG.discount_flat_badge} {$productData.pricing.biennially.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                              </div>														
                            {/if}
                          {/if}
                        </h5>
                        <h5 class="blpr triennially" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && !$productsDataCycles.annually && !$productsDataCycles.biennially && $productsDataCycles.triennially}style="display: block;"{/if}>
                          <div class="pricing-vps-sec-lower">
                            {if $productData.pricing.triennially.cycleHasConfig eq '1'}
                              <p class="has-config-vps-price">{$LANG.startingfrom}</p>
                            {/if}
                            <strong>{$productData.pricing.triennially.price}<span>/{if $hostx_theme_settings.bill_cycle_setting eq '' || $hostx_theme_settings.bill_cycle_setting eq '1'}{$LANG.orderpaymenttermtriennially}{elseif $hostx_theme_settings.bill_cycle_setting eq '2'}{$LANG.pricingCycleShort.triennially}{elseif $hostx_theme_settings.bill_cycle_setting eq '3'}{$LANG.pricingCycleLong.triennially}{/if}</span></strong>
                          </div>
                          {if $productData.pricing.triennially.strikedPrice && $productData.pricing.triennially.strikedPrice['rawStriked'] gt 0}
                            {if $productData.pricing.triennially.strikedPrice['strikedType'] eq '0'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.triennially.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount percentage-dis">
                                  {$LANG.discount_save_badge} {$productData.pricing.triennially.strikedPrice['strikedAmount']}%
                                </div>
                              </div>														
                            {elseif $productData.pricing.triennially.strikedPrice['strikedType'] eq '1'}
                              <div class="dicount_price_V1 price-discount-ssl-V">
                                <div class="striked-price">{$productData.pricing.triennially.strikedPrice['formatStriked']}</div>
                                <div class="price_V1_discount-discount flat-dis">{$LANG.discount_flat_badge} {$productData.pricing.triennially.strikedPrice['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                              </div>														
                            {/if}
                          {/if}
                        </h5>
                      {/if}
                        {if $productsDataCount eq '1' || $productsDataCount eq '2'}
                          </div>
                          {$productData.customDescription.pDescription}
                          </div>
                        {else}
                          {$productData.customDescription.pDescription}
                        {/if}
                          <div class="bottom_sect">
                          {if $productsDataCount eq '1' || $productsDataCount eq '2'}
                            <div>
                          {/if}
                          <h4>{$productData.customDescription.pFootCaption|unescape:'html'}</h4>
                          <p>{$productData.customDescription.pFootSortDesc|unescape:'html'}</p>
                          {if $productsDataCount eq '1' || $productsDataCount eq '2'}
                            </div>
                          {/if}
                        {if $productsDataCycles.onetime}
                          <a href="cart.php?a=add&pid={$productData.pid}" class="button03 blpr monthly button-style hx-black-btn" {if $productsDataCycles.onetime}style="display: block;"{/if}>{$LANG.vps_order_now}</a>
                        {/if}
                        {if $productsDataCycles.free}
                          <a href="cart.php?a=add&pid={$productData.pid}" class="button03 blpr monthly button-style hx-black-btn" {if $productsDataCycles.free}style="display: block;"{/if}>{$LANG.vps_order_now}</a>
                        {/if}
                        {if !$productsDataCycles.onetime || !$productsDataCycles.free}
                          <a href="cart.php?a=add&pid={$productData.pid}&billingcycle=monthly" class="button03 blpr monthly button-style hx-black-btn" {if $productsDataCycles.monthly}style="display: block;"{/if}>{$LANG.vps_order_now}</a>  
                          <a href="cart.php?a=add&pid={$productData.pid}&billingcycle=quarterly" class="button03 blpr quarterly button-style hx-black-btn" {if !$productsDataCycles.monthly && $productsDataCycles.quarterly}style="display: block;"{/if}>{$LANG.vps_order_now}</a>  
                          <a href="cart.php?a=add&pid={$productData.pid}&billingcycle=semiannually" class="button03 blpr semiannually button-style hx-black-btn" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && $productsDataCycles.semiannually}style="display: block;"{/if}>{$LANG.vps_order_now}</a>  
                          <a href="cart.php?a=add&pid={$productData.pid}&billingcycle=annually" class="button03 blpr annually button-style hx-black-btn" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && $productsDataCycles.annually}style="display: block;"{/if}>{$LANG.vps_order_now}</a>
                          <a href="cart.php?a=add&pid={$productData.pid}&billingcycle=biennially" class="button03 blpr biennially button-style hx-black-btn"{if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && !$productsDataCycles.annually && $productsDataCycles.biennially}style="display: block;"{/if}>{$LANG.vps_order_now}</a>
                          <a href="cart.php?a=add&pid={$productData.pid}&billingcycle=triennially" class="button03 blpr triennially button-style hx-black-btn" {if !$productsDataCycles.monthly && !$productsDataCycles.quarterly && !$productsDataCycles.semiannually && !$productsDataCycles.annually && !$productsDataCycles.biennially && $productsDataCycles.triennially}style="display: block;"{/if}>{$LANG.vps_order_now}</a>
                        {/if} 						
                      </div>
                    </div>              
                {/foreach}
            </div>
          </div>
      </div>
    </div>
  </div>
</div>