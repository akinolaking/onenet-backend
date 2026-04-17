{if $hostx_blocks[$block_slug]}
{if count($hostx_blocks[$block_slug]->widgets) > 0}<div class="{$block_slug}-have-widgets">{/if}
    <div class="get_started p-vertical">
        <div class="container">
            <div class="get_started_inner">
                {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
            </div>
        </div>
    </div>
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
<div class="get_started p-vertical">
    <div class="container">
        <div class="get_started_inner">
            <h2>Choose the best managed <b>Cloud Hosting</b> experience for your business!</h2> 
            <a href="#" class="button01 cldhosting hx-secondary button-style">Get started Now</a>
        </div>
    </div>
</div>
{/if}