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
    <div class="cpanel_banner about-us-banner p-vertical"> 
        <div class="container">
            <div class="row">
            <div class="col-sm-6">
                <div class="text-left">
                <h2>{$LANG.aboutPageTitle}</h2>
                <h5>{$LANG.aboutPageSubTitle}</h5>  
                <p>{$LANG.aboutPageSubTitleP}</p>  
                <a href="#" class="button04 mt-4 button-style hx-primary-btn">{$LANG.aboutPageGetStartButton}</a>  
                </div>
            </div>
            <div class="col-sm-6">
                <div class="right">
                <img src="{$WEB_ROOT}/templates/{$template}/images/abt-banner-inner.png" alt="lady smiling">   
                </div>
            </div>
            </div>
        </div>
    </div>
{/if}