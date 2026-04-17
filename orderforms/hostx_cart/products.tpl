{include file="orderforms/{$carttpl}/common.tpl"}
<div id="order-standard_cart" class="hostx-cart-body-section">
    {include file="orderforms/{$carttpl}/product-group-list.tpl"}
    {if $hostx_theme_settings.productlist_style_setting eq '1'}
        {include file="orderforms/{$carttpl}/product-list-v2.tpl"}
    {elseif $hostx_theme_settings.productlist_style_setting eq '2'}
        {include file="orderforms/{$carttpl}/product-list-default.tpl"}
    {else}
        {include file="orderforms/{$carttpl}/product-list-v1.tpl"}
    {/if}
</div>
{include file="orderforms/{$carttpl}/recommendations-modal.tpl"}
