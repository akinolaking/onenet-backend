<div class="pricing_section home-page-pricing-section-two p-vertical">
    <div class="container">
        <div class="tab-content">
          <div class="tab-pane container active" id="pricing">
              <div class="price_group">
                <div id="productList" class="home-page-pricing-style-2">
        		      {foreach from=$secondHomePageProductData item=homePageSData}
                      <div class="price_sect">            
                          <h2>{$homePageSData.pHomeServiceName}</h2>
                      <div class="priceSecondBox">
                        <p class="p-second-short-descp">{$homePageSData.pHomeHeadSortDesc}</p>
                        <div class="pricing-home-two-side">
                          {if $homePageSData.pHomePriceHasConfig eq '1'}
                            <p class="has-config-vps-price-home-two">{$LANG.startingfrom}</p>
                          {/if}
                          <h5 class="blpr monthly d" style="display: block;" >{$homePageSData.pHomePrice}</h5>
                        </div>
                        {if $homePageSData.pHomePriceHasStriked && $homePageSData.pHomePriceHasStriked['rawStriked'] gt 0}
                          {if $homePageSData.pHomePriceHasStriked['strikedType'] eq '0'}
                            <div class="dicount_home_two_price">
                              <div class="striked-price">{$homePageSData.pHomePriceHasStriked['formatStriked']}</div>
                              <div class="home_two_price-discount">
                                {$LANG.discount_save_badge} {$homePageSData.pHomePriceHasStriked['strikedAmount']}%
                              </div>
                            </div>														
                          {elseif $homePageSData.pHomePriceHasStriked['strikedType'] eq '1'}
                            <div class="dicount_home_two_price">
                              <div class="striked-price">{$homePageSData.pHomePriceHasStriked['formatStriked']}</div>
                              <div class="home_two_price-discount">{$LANG.discount_flat_badge} {$homePageSData.pHomePriceHasStriked['strikedAmount']} {$LANG.discount_flat_off_badge}</div>
                            </div>														
                          {/if}
                        {/if}
                      </div>
                      <div class="descSecondBox">
                        {$homePageSData.pHomeDescription}
                      </div>
                      <div class="bottom_sect">
              					<div class="captionSecondBox">
              						<h4>{$homePageSData.pHomeFootCaption}</h4>
              					</div>
              					<div class="sortDescSecondBox">
              						<p>{$homePageSData.pHomeFootSortDesc}</p>
              					</div>
              						<a href="{$homePageSData.pHomeLink}" class="button03 blpr monthly button-style hx-primary-btn" style="display: block;">{$homePageSData.pHomeButtonName}</a>  
                      </div>
                    </div>
        		      {/foreach}
                </div>    
              </div>
          </div>
        </div>
    </div>
</div>