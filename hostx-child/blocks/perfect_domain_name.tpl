{if $hostx_blocks[$block_slug]}
    {if count($hostx_blocks[$block_slug]->widgets) > 0}<div class="{$block_slug}-have-widgets">{/if}
    <div class="perfect-domain p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2>
                </div>
                <div class="col-md-6">
                    <div class="description-pref-domain">
                        <p>{eval var=$hostx_blocks[$block_slug]->sub_title|html_entity_decode}.</p>{eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
                    </div>
                </div>
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
    <div class="perfect-domain p-vertical">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>{$LANG.domainowndomain}</h2>
                </div>
                <div class="col-md-6">
                    <div class="description-pref-domain"><p>{$LANG.domainowndomaintext}.</p><a href="#" class="button03 button-style hx-primary-btn">{$LANG.domainclickstart}</a></div>
                </div>
            </div>
        </div>
    </div>
{/if}