{if $hostx_blocks[$block_slug]}
<div class="bandwidth p-vertical">
  <div class="container">
    <div class="bandwidth_in">
    <div class="row">
     {foreach $hostx_blocks[$block_slug]->widgets as $widget}
          {eval var=$widget->widget_description|html_entity_decode}
     {/foreach}  
    </div>
  </div>
  </div>
</div>
{else}
<div class="bandwidth p-vertical">
  <div class="container">
    <div class="bandwidth_in">
    <div class="row">
      <div class="col-sm-5 bandwidth-left">
        <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/img01.svg" class="img-responsive" alt="optimize player"> 
      </div>
      <div class="col-sm-7 bandwidth-left">
        <h2 class="color-white">{$LANG.homeunlimitedbandwidth}*</h2>
        <p class="color-white">{$LANG.cpanelovercharge}</p>
      </div>
    </div>
  </div>
  </div>
</div>
{/if}