{if $hostx_blocks[$block_slug]}
<div id="feature" class="hosting_feature p-vertical">
  <div class="container">
    <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode} </h2>
    <p>{eval var=$hostx_blocks[$block_slug]->sub_title|html_entity_decode}</p>
    <div class="hosting_sections">
      <div class="row">
        {foreach $hostx_blocks[$block_slug]->widgets as $widget}
          {eval var=$widget->widget_description|html_entity_decode}
        {/foreach}      
      </div>
    </div> 
  </div>
</div>
{else}
<div id="feature" class="hosting_feature p-vertical">
  <div class="container">
    <h2>{$LANG.cpanelmorefeature} </h2>
    <p>{$LANG.cpanelmorefeaturetext}</p>
  <div class="hosting_sections">
    <div class="row">
      <div class="col-sm-4 mt-3">
        <div class="hosting_box">
          <div class="hosting_box_left_sec"> 
            <span><img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon001.svg" alt="www icon"></span>
            <h6>{$LANG.cpanelfreename} </h6>
          </div>
          <div class="hosting_box_right_Sec">
            <p>{$LANG.cpanelfreenametext}</p>
          </div>
        </div>
      </div>
        <div class="col-sm-4 mt-3">
        <div class="hosting_box">
          <div class="hosting_box_left_sec"> 
            <span><img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon002.svg" alt="message icon"></span>
            <h6>{$LANG.cpanelfreepersonalised}</h6>
          </div>
          <div class="hosting_box_right_Sec">
            <p>{$LANG.cpanelfreepersonalisedtext}</p>
          </div>
        </div>
      </div>
      <div class="col-sm-4 mt-3">
        <div class="hosting_box">
          <div class="hosting_box_left_sec"> 
            <span><img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon003.svg" alt="lock"></span>
            <h6>{$LANG.cpanelfreeencreypt} </h6>
          </div>
          <div class="hosting_box_right_Sec">
            <p>{$LANG.cpanelfreeencreypttext}</p>
          </div>
        </div>
      </div>
      <div class="col-sm-4 mt-3">
        <div class="hosting_box">
          <div class="hosting_box_left_sec"> 
            <span><img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon004.svg" alt="svg icon"></span>
            <h6>{$LANG.cpanelfreebackup}</h6>
          </div>
          <div class="hosting_box_right_Sec">
            <p>{$LANG.cpanelfreebackuptext}</p>
          </div>
        </div>
      </div>
      <div class="col-sm-4 mt-3">
        <div class="hosting_box">
          <div class="hosting_box_left_sec">  
            <span><img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon005.svg" alt="cloud server"></span>
            <h6>{$LANG.cpanelfreemigration}</h6>
          </div>
          <div class="hosting_box_right_Sec">
            <p>{$LANG.cpanelfreemigrationtext}</p>
          </div>
        </div>
      </div>
      <div class="col-sm-4 mt-3">
        <div class="hosting_box">
          <div class="hosting_box_left_sec">
            <span><img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon006.svg" alt="wordpress logo"></span>
            <h6>{$LANG.cpaneloneclickhosting}</h6>
          </div>
          <div class="hosting_box_right_Sec">
            <p>{$LANG.cpaneloneclickhostingtext}</p>
          </div>
        </div>
      </div>
    </div>
  </div> 
  </div>
</div>
{/if}