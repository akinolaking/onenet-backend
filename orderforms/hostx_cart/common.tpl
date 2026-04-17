<link rel="stylesheet" type="text/css" href="{assetPath file='all.min.css'}?v={$versionHash}" />
{assetExists file="hostx_cart.css"}
    <link rel="stylesheet" type="text/css" href="{$__assetPath__}?v={$versionHash}" />
{/assetExists}
{assetExists file="hostx_cart_responsive.css"}
    <link rel="stylesheet" type="text/css" href="{$__assetPath__}?v={$versionHash}" />
{/assetExists}
{if $LANG.locale == 'ar_AR' || $LANG.locale == 'fa_IR' || $LANG.locale == 'he_IL'}
  {assetExists file="style-cart-rtl.css"}
    <link type="text/css" href="{$__assetPath__}?v={$versionHash}" rel="stylesheet">
  {/assetExists}
{/if}
{assetExists file="overrides.css"}
    <link rel="stylesheet" type="text/css" href="{$__assetPath__}?v={$versionHash}" />
{/assetExists}
<script type="text/javascript" src="{assetPath file='scripts.min.js'}?v={$versionHash}"></script>
<script type="text/javascript" src="{assetPath file='hostx_cart.js'}?v={$versionHash}"></script>