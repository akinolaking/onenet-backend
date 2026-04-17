{if $hostx_blocks[$block_slug]}
<div class="why-choose p-vertical">
  <div class="container">
    <div class="top color-white"> 
      <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2> 
          {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
    </div>
    <div class="clearfix"></div>
    <div class="row">
       {foreach $hostx_blocks[$block_slug]->widgets as $widget}
            {eval var=$widget->widget_description|html_entity_decode}
        {/foreach}
    </div>
  </div>
</div>
{else}
<div class="why-choose p-vertical">
  <div class="container">
    <div class="top color-white"> 
      <h2>{$LANG.dedicatedwhychoose}</h2>
      <p>{$LANG.dedicatedwhychoosetext}</p>
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-sm-3">
        <div class="choose-col color-white">
          <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/choose_icon1.svg" class="svg" alt="maze icon">
          <h6>{$LANG.dedicatedsolutions}</h6>
          <p>{$LANG.dedicatedsolutionstext}</p> 
        </div>
      </div>
      <div class="col-sm-3">
        <div class="choose-col color-white">
          <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/choose_icon2.svg" class="svg" alt="rocket speed icon">
          <h6>{$LANG.dedicatedspeed}</h6>
          <p>{$LANG.dedicatedspeedtext}</p>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="choose-col color-white">
          <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/choose_icon3.svg" class="svg" alt="user image">
          <h6>{$LANG.dedicatedsupport}</h6>
          <p>{$LANG.dedicatedsupporttext} </p>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="choose-col color-white">
          <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/choose_icon4.svg" class="svg" alt="gurantee">
          <h6>{$LANG.dedicateduptime}</h6>
          <p>{$LANG.dedicateduptimetext}</p>
        </div>
      </div>
    </div>
  </div>
</div>
{/if}