{if $hostx_blocks[$block_slug]}
<div class="vps-hosting p-vertical">
  <div class="container">
    <h2 class="text-center">{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2>
    {foreach $hostx_blocks[$block_slug]->widgets as $widget}
      {eval var=$widget->widget_description|html_entity_decode}
    {/foreach}
  </div>
</div>
{else}
<div class="vps-hosting p-vertical">
  <div class="container">
    <h2 class="text-center">{$LANG.vpschoosehosting}?</h2>
        <div class="vps-hosting-list"> 
            <div class="row">      
                <div class="col-sm-3 left">
                  <img class="img-responsive" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon_b1.svg" alt="server">
                </div>
                <div class="col-sm-8 right">  
                  <h4>{$LANG.vpsfullaccess}</h4>
                  <p>{$LANG.vpsfullaccesstext}</p> 
                </div>
              </div>
        </div>
        <div class="vps-hosting-list"> 
          <div class="row">      
            <div class="col-sm-3 left">
              <img class="img-responsive" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon_b2.svg" alt="computer image">
            </div>
            <div class="col-sm-8 right">  
              <h4>{$LANG.vpsintegratedcpanel}</h4> 
              <p>{$LANG.vpsintegratedcpaneltext}</p> 
              <p>{$LANG.vpsintegratedcpaneltext2}.</p> 
            </div>
          </div>
        </div>
        <div class="vps-hosting-list"> 
          <div class="row">
              <div class="col-sm-3 left">
                <img class="img-responsive" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon_b3.svg" alt="vps globe">
              </div>
              <div class="col-sm-8 right">  
                <h4>{$LANG.vpsinstantprovision}</h4>
                <p>{$LANG.vpsinstantprovisiontext}.</p> 
                <p>{$LANG.vpsinstantprovisiontext2}.</p> 
              </div>
          </div>
        </div>
  </div>
</div>
{/if}