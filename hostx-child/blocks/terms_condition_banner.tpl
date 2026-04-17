{if $hostx_blocks[$block_slug]}
  {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
{else}
    <div class="term-domain_banner register-domain-banner2" style="background-image: url('{$WEB_ROOT}/templates/{$template}/images/term_bg_1.jpg');"> 
    <div class="container">
        <h1>TERMS OF SERVICE</h1>
    </div>
    </div>
{/if}