{if $hostx_blocks[$block_slug]}
  {if count($hostx_blocks[$block_slug]->widgets) > 0}<div class="{$block_slug}-have-widgets">{/if}
  {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
    {if count($hostx_blocks[$block_slug]->widgets) > 0}
        <div class="widgets-container-{$block_slug} container">
            <div class="widgets-row-{$block_slug} row">
                {foreach $hostx_blocks[$block_slug]->widgets as $widget}
                    {eval var=$widget->widget_description|html_entity_decode}
                {/foreach}
            </div>
        </div>
        </div>
    {/if}
{else}
<div class="main-sate p-vertical">
    <div class="container">
        <div class="upper-sec-satelite">
            <h2 class="main-head-price-block">Simple and transparent pricing</h2>
            <p class="sub-head-price-block">From early to enterprise, we've got you covered. Start with 14 days free. Annual <br>payment earns you two months free!</p>
        </div>
    </div>
</div>
{/if}