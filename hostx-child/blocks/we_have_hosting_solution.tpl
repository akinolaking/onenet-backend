{if $hostx_blocks[$block_slug]}
<div class="features-option2 features-option4 p-vertical">
  <div class="container">
    <div class="top">
      <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2>
      <p>{eval var=$hostx_blocks[$block_slug]->sub_title|html_entity_decode}</p>
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
<div class="features-option2 features-option4 p-vertical">
  <div class="container">
    <div class="top">
      <h2>{$LANG.homehostsolution4you}</h2>
      <p>{$LANG.homechooseplatform}</p>
    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-sm-4">
        <div class="features-col active">
          <div class="img-box">
            <img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/closed-lock-.svg" alt="lock icon"></div>
            <h6>{$LANG.homehackersecur}</h6>
            <p>{$LANG.homehackersecurtext}. </p>
          <div class="features-option4_border"></div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="features-col"> 
          <div class="img-box">
            <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon.svg" class="svg" alt="speed-server"></div>
            <h6>{$LANG.homeblazingspeed}</h6>  
            <p>{$LANG.homeblazingspeedtext}.</p>
          <div class="features-option4_border"></div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="features-col">
          <div class="img-box">
            <img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/history-clock-button.svg" alt="clock image"></div>
            <h6>{$LANG.homenightlybackup}</h6>
            <p>{$LANG.homenightlybackuptext}.</p>
          <div class="features-option4_border"></div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="features-col">
          <div class="img-box">
            <img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/worldwide.svg" alt="globe"></div>
            <h6>{$LANG.homeglobalavailty}</h6>
            <p>{$LANG.homeglobalavailtytext}.</p>
          <div class="features-option4_border"></div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="features-col">
          <div class="img-box">
            <img class="svg raid" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/shield-checked.svg" alt="safe and secure"></div>
            <h6>{$LANG.homereimaginedsetp}</h6>
            <p>{$LANG.homereimaginedsetptext}. </p>
          <div class="features-option4_border"></div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="features-col">
          <div class="img-box">
            <img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/wordpress-logo.svg" alt="wordpress logo"></div>
            <h6>{$LANG.hometunedwordpress}</h6>
            <p>{$LANG.hometunedwordpresstext}.</p>
          <div class="features-option4_border"></div>
        </div>
      </div>
    </div>  
  </div>
</div>
{/if} 
