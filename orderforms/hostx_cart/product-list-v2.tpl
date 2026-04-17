<section class="custom-product-pricing-section product-listing-order">
  <div class="container">
    <div class="title-wrapper">
        {if $productGroup.headline}
          <h2>{$productGroup.headline}</h2>
        {else}
          <h2>{$productGroup.name}</h2>
        {/if}
        {if $productGroup.tagline}
            <p>{$productGroup.tagline}</p>
        {/if}
    </div>
    {if $errormessage}
      <div class="alert alert-danger">
          {$errormessage}
      </div>
    {elseif !$productGroup}
      <div class="alert alert-info">
          {lang key='orderForm.selectCategory'}
      </div>
    {/if}
    <div class="row {if $hostx_theme_settings.disable_product_list_slider neq 'on' && count($products) > 3}product-list-page-slider-intiate{else}no-slider-product-list-v2 product-count-{count($products)}{/if}">
      {foreach $products as $key => $product}
          {$idPrefix = ($product.bid) ? ("bundle"|cat:$product.bid) : ("product"|cat:$product.pid)}
          <div class="product-item-list-page">
            <div class="product-pricing-card">
              <div class="product-pricing-heading" id="{$idPrefix}-name">
                <h3 class="text-center">{$product.name}</h3>
                {if $product.stockControlEnabled}
                    <span class="qty-product">
                        {$product.qty} {$LANG.orderavailable}
                    </span>
                {/if}
              </div>
              <div class="text-center product-pricing-body">
                {if $product.bid}
                    {$LANG.bundledeal}<br />
                    {if $product.displayprice}
                        <span class="price">{$product.displayprice}</span>
                    {/if}
                {else}
                    {if $product.pricing.hasconfigoptions}
                        <span>{$LANG.startingfrom}</span>
                    {/if}
                    {if $hasStrikedData && $hasStrikedData.{$product.pid}.rawStriked gt 0}
                      <div class="discount-price">
                        {if $hasStrikedData.{$product.pid}.strikedType eq '0'}
                            <small class="save-amt-product">{$LANG.discount_save_badge} {$hasStrikedData.{$product.pid}.strikedAmount}%</small>
                        {elseif $hasStrikedData.{$product.pid}.strikedType eq '1'}
                            <small class="save-amt-product">{$LANG.discount_flat_badge} {$hasStrikedData.{$product.pid}.strikedAmount} {$LANG.discount_flat_off_badge}</small>
                        {/if}
                        <strike>{$hasStrikedData.{$product.pid}.formatStriked}</strike>
                      </div>
                    {/if}
                    <div class="product-price-area">
                      <h4 class="price">{$product.pricing.minprice.price}</h4>
                      {if $product.pricing.minprice.cycle eq "monthly"}
                        <span class="per">{$LANG.orderpaymenttermmonthly}</span>
                      {elseif $product.pricing.minprice.cycle eq "quarterly"}
                        <span class="per">{$LANG.orderpaymenttermquarterly}</span>
                      {elseif $product.pricing.minprice.cycle eq "semiannually"}
                        <span class="per">{$LANG.orderpaymenttermsemiannually}</span>
                      {elseif $product.pricing.minprice.cycle eq "annually"}
                        <span class="per">{$LANG.orderpaymenttermannually}</span>
                      {elseif $product.pricing.minprice.cycle eq "biennially"}
                        <span class="per">{$LANG.orderpaymenttermbiennially}</span>
                      {elseif $product.pricing.minprice.cycle eq "triennially"}
                        <span class="per">{$LANG.orderpaymenttermtriennially}</span>
                      {/if}
                      {if $product.pricing.minprice.setupFee}
                        <small>{$product.pricing.minprice.setupFee->toPrefixed()} {$LANG.ordersetupfee}</small>
                      {/if}
                    </div>
                {/if}
                <div class="product-pricing-footer">
                  <a href="{$product.productUrl}" class="btn business-btn button-style hx-primary-btn btn-pricetable" id="{$idPrefix}-order-button"{if $product.hasRecommendations} data-has-recommendations="1"{/if}>{$LANG.ordernowbutton}</a>
                </div>
              </div>
              <div class="product-description-area">
                {if $product.featuresdesc}
                    {$product.featuresdesc}
                {/if}
                {if $product.features}
                  <ul class="list">
                    {foreach $product.features as $feature => $value}
                        <li id="{$idPrefix}-feature{$value@iteration}">
                            <span class="feature-value">{$value}</span>
                            {$feature}
                        </li>
                    {/foreach}                          
                  </ul>
                {/if}
              </div>
            </div>
          </div>                
      {/foreach}
    </div>
  </div>
</section>
<script>
  jQuery(document).ready(function(){
    if(jQuery(".no-slider-product-list-v2").length > 0){
      jQuery(document).on('click','.product-item-list-page',function(){
          jQuery('.product-item-list-page').removeClass('active');
          jQuery(this).addClass('active');
      });
    }
  });
</script>