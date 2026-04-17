{if $hostx_blocks[$block_slug]}
{if count($hostx_blocks[$block_slug]->widgets) > 0}<div class="{$block_slug}-have-widgets">{/if}
<div class="free-trial p-vertical">
  <div class="container">
        {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
  </div>
</div>
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
<div class="free-trial p-vertical">
  <div class="container">
      <div class="free-trial-col">
        <div class="free-trial-col-left">
          <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/30day.png" alt="free trial">
        </div>
        <div class="free-trial-col-right">
          <span>Risk-Free Trial Program</span>
          <h2>30-Days No-Risk Guarantee.</h2>
          <p>{$LANG.vpsguaranteetext}</p>
        </div> 
      </div>
  </div>
</div>
{/if}