{if $hostx_blocks[$block_slug]}
  {if count($hostx_blocks[$block_slug]->widgets) > 0}<div class="{$block_slug}-have-widgets">{/if}
  {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
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
  <div class="wetackcareforupgrade p-vertical">
        <div class="container">
          <div class="row maintenance-inner-text-row">
            <div class="col-sm-6">
              <h2>{$LANG.aboutPageWeTakeCareHead}</h2>
              <p>{$LANG.aboutPageWeTakeCareHeadP}</p>
            </div>
             <div class="col-sm-6">
               <div class="maintenance-inner-img">
                <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/we-take-care-img.png" alt="user seeing computer">
               </div>
            </div>
          </div>
       </div>
  </div>
{/if}