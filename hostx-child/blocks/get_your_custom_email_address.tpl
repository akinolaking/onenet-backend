{if $hostx_blocks[$block_slug]}
{if count($hostx_blocks[$block_slug]->widgets) > 0}<div class="{$block_slug}-have-widgets">{/if}
  <div class="business-row p-vertical">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="left">
              <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}.</h2> 
              <p>{eval var=$hostx_blocks[$block_slug]->sub_title|html_entity_decode}.</p> 
                {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
            </div>
          </div>
        </div>
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
<div class="business-row p-vertical">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="left">
            <h2>{$LANG.domaingetemailaddress}.</h2> 
            <p>{$LANG.domaingetemailtext}.</p> 
            <a href="#" class="hx-primary-btn button-style">{$LANG.domainregister}</a> 
          </div>
        </div>
      </div>
    </div>
</div>
{/if}