{if $hostx_blocks[$block_slug]}
<div class="simple-steps p-vertical text-center">
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
<div class="simple-steps p-vertical text-center">
    <h2>{$LANG.domainsimplesteps}</h2>
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <div class="simple-col">
            <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon-01.png" alt="www icon">  
            <h5>{$LANG.domainchoosename}</h5>
            <p>{$LANG.domainchoosenametext}</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="simple-col">
            <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon-02.png" alt="notepad pen">  
            <h5>{$LANG.domainselecthostplan}</h5>
            <p>{$LANG.domainselecthostplantext}</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="simple-col">
            <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon-03.png" alt="settings icon">   
            <h5>{$LANG.domainsetupwebsite}</h5> 
            <p>{$LANG.domainsetupwebsitetext}</p>
          </div>
        </div>
      </div>
    </div>
</div>
{/if}