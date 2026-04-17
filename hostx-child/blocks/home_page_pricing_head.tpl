{if $hostx_blocks[$block_slug]}

  {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}

{else}

    <div class="price_list heading-sec"><div class="container"><div class="title-heading"><h2>{$companyNameWhmcs}</h2><p>We have got the perfect hosting plan for your next server, site, app, platform, or blog - all backed by your award-winning 24/7 support.</p></div></div></div>

{/if}