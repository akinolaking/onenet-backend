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
  <div class="wetackcareforupgrade award-winning p-vertical">
        <div class="container">
          <div class="row maintenance-inner-text-row">
             <div class="col-sm-6">
               <div class="maintenance-inner-img m-i-img">
                <img src="{$WEB_ROOT}/templates/{$template}/images/award-wining-supports.png" alt="lady support image">
               </div>
            </div>
            <div class="col-sm-6">
              <h2>{$LANG.aboutPageAwardWiningHead}</h2>
              <p>{$LANG.aboutPageAwardWiningHeadP}</p>
                <ul>
                  <li>{$LANG.aboutPageAwardWiningHeadLi1}</li>
                  <li>{$LANG.aboutPageAwardWiningHeadLi2}</li>
                  <li>{$LANG.aboutPageAwardWiningHeadLi3}</li>
                </ul>
            </div>
          </div>
       </div>
  </div>
{/if}