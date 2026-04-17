{if $hostx_blocks[$block_slug]}
<div class="toll-free">
    <div class="container">
      <div class="row">
        {foreach $hostx_blocks[$block_slug]->widgets as $widget}
          {eval var=$widget->widget_description|html_entity_decode}
        {/foreach}
      </div>
    </div>
  </div>
{else}
<div class="toll-free">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="toll-free-col">
            <img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/toll-free.svg" alt="phone icon">
            <div class="toll-free-col-content color-white">
              <h6>{$LANG.domaincallus}</h6>
              <h5>+1(123)4562575<span>({$LANG.domaintollfree})</span></h5>
            </div> 
          </div>
        </div> 
        <div class="col-md-6"> 
          <div class="toll-free-col">
            <img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/chart.svg" alt="chart">
            <div class="toll-free-col-content color-white">
              <h6>{$LANG.domainchatwith}</h6>
              <h5>{$LANG.domainexperts}</h5>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
{/if}

