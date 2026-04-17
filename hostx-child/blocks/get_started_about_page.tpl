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
    <div class="get_started about-us-page-block p-vertical">
      <div class="container">
          <div class="get_started_inner">
            <h2>{$LANG.aboutPageFooterTagLine}</h2> <a href="#" class="button01 button-style hx-primary-btn">{$LANG.aboutPageGetStartButton}</a>
          </div>
      </div>
    </div>
{/if}