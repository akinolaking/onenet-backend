<div class="pricing_section pricing-section-product-listing-v1">
<div class="product-list-v1-hostx {if $hostx_theme_settings.disable_product_list_slider neq 'on' && count($products) > 3}product-list-page-slider-intiate-V1{else}no-slider-product-list-v1 product-count-{count($products)}{/if}">            
    {foreach $products as $key => $product}
        {$idPrefix = ($product.bid) ? ("bundle"|cat:$product.bid) : ("product"|cat:$product.pid)}
        {assign var=pidsid value=$product.pid}
        <div class="price_sect product-listing-v1-items">
            <div class="product-name-sec">
                <h2>{$product.name}</h2>
                {if $product.stockControlEnabled}
                    <span class="qty">
                        {$product.qty} {$LANG.orderavailable}
                    </span>
                {/if}
            </div>
            <p>{$customDescripti.$pidsid.pHeadSortDesc}</p>
            <h1>
                {if $product.bid}
                    <p>{$LANG.bundledeal}</p>
                    {if $product.displayprice}
                        {$product.displayprice}
                    {/if}
                {else}
                    {if $product.pricing.hasconfigoptions}
                        <p> {$LANG.startingfrom} </p>
                    {/if}
                    <div class="pricing-list-V1">
                        {$product.pricing.minprice.price}
                        {if $product.pricing.minprice.cycle eq "monthly"}
                            <span class="price">{$LANG.orderpaymenttermmonthly}</span>
                        {elseif $product.pricing.minprice.cycle eq "quarterly"}
                            <span class="price">{$LANG.orderpaymenttermquarterly}</span>
                        {elseif $product.pricing.minprice.cycle eq "semiannually"}
                            <span class="price">{$LANG.orderpaymenttermsemiannually}</span>
                        {elseif $product.pricing.minprice.cycle eq "annually"}
                            <span class="price">{$LANG.orderpaymenttermannually}</span>
                        {elseif $product.pricing.minprice.cycle eq "biennially"}
                            <span class="price">{$LANG.orderpaymenttermbiennially}</span>
                        {elseif $product.pricing.minprice.cycle eq "triennially"}
                            <span class="price">{$LANG.orderpaymenttermtriennially}</span>
                        {/if}
                        {if $product.pricing.minprice.setupFee}
                            <small>{$product.pricing.minprice.setupFee->toPrefixed()} {$LANG.ordersetupfee}</small>
                        {/if}
                    </div>
                {/if}
                {if $hasStrikedData && $hasStrikedData.{$product.pid}.rawStriked gt 0}
                    <div class="discount-sec-V1">
                        {if $hasStrikedData.{$product.pid}.strikedType eq '0'}
                            <small class="saveamounts-V1">{$LANG.discount_save_badge} {$hasStrikedData.{$product.pid}.strikedAmount}%</small>
                        {elseif $hasStrikedData.{$product.pid}.strikedType eq '1'}
                            <small class="saveamounts-V1">{$LANG.discount_flat_badge} {$hasStrikedData.{$product.pid}.strikedAmount} {$LANG.discount_flat_off_badge}</small>
                        {/if}
                        <del>{$hasStrikedData.{$product.pid}.formatStriked}</del>
                    </div>
                {/if}                                        
            </h1>
            {if $product.featuresdesc}                              
                {$product.featuresdesc}
            {else}
                {$product.description}
            {/if}
            <div class="bottom_sect">
                <h4>{$customDescripti.$pidsid.pFootCaption}</h4>
                <p>{$customDescripti.$pidsid.pFootSortDesc}</p>
                <a href="{$product.productUrl}" class="button-style hx-primary-btn" id="{$idPrefix}-order-button" {if $product.hasRecommendations} data-has-recommendations="1"{/if}>{$LANG.ordernowbutton}</a>
            </div>
        </div>              
    {/foreach}
</div>