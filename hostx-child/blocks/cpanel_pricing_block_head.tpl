{if $hostx_blocks[$block_slug]}
  {eval var=$hostx_blocks[$block_slug]->description}
{else}
<div class="main-sate cpanel-pr-head p-vertical">
    <div class="container">
        <div class="upper-sec-satelite">
            <h2 class="main-head-price-block">Simple and transparent pricing</h2>
            <p class="sub-head-price-block">From early to enterprise, we've got you covered. Start with 14 days free. Annual <br>payment earns you two months free!</p>
        </div>
    </div>
</div>
{/if}