{if $hostx_blocks[$block_slug]}
  <div class="technical-specifications text-center p-vertical">
    <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2>
    <div class="container">
      <div class="row">
        {foreach $hostx_blocks[$block_slug]->widgets as $widget}
          {eval var=$widget->widget_description|html_entity_decode}
        {/foreach}
      </div>
    </div>
  </div> 
{else}
  <div class="technical-specifications text-center p-vertical">
    <h2>{$LANG.vpstechnicalspeci}</h2>
    <div class="container">
      <div class="row">
        <div class="col-sm-6">
          <div class="cols">
            <span><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon-b1.svg" alt="safe and secure"></span>
            <div class="technical-block-area cols-inner">
              <h3>{$LANG.vpsguaranteeresour}</h3>
              <p>{$LANG.vpsguaranteeresourtext}.</p>
            </div>
          </div>
        </div>
        <div class="col-sm-6">
          <div class="cols">
            <span><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/Secure-Environment.svg" alt="lock"></span>
            <div class="technical-block-area cols-inner">
              <h3>{$LANG.vpssecureenvironment}</h3>
              <p>{$LANG.vpssecureenvironmenttext}</p>
            </div>
          </div>
        </div>
        <div class="col-sm-6">
          <div class="cols">
            <span><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/key.svg" alt="key icon"></span>
            <div class="technical-block-area cols-inner">
              <h3>{$LANG.vpsedgeserverhard}</h3>
              <p>{$LANG.vpsedgeserverhardtext}</p>
            </div>
          </div>
        </div>
        <div class="col-sm-6">
          <div class="cols">
            <span><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/network.svg" alt="network"></span>
            <div class="technical-block-area cols-inner">
              <h3>{$LANG.vpstopnetwork}</h3> 
              <p>{$LANG.vpstopnetworktext}</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div> 
{/if}