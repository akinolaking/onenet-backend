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
    <div class="about-why-choose-us p-vertical">
        <div class="container">
        <div class="row choose-us-row">
            <div class="col-sm-12 text-center">
            <h2>{$LANG.aboutPagewhychoose}</h2>
            <p>{$LANG.aboutPagewhychooseP}</p>
            </div>
        </div>
        <div class="row choose-us-row-two">
            <div class="col-sm-4">
            <div class="why-choose-inner-abt border-yellow">
                <img src="{$WEB_ROOT}/templates/{$template}/images/why-choos-icon-1.png" alt="resposnive icons">
                <h5>{$LANG.aboutPagewhychoose1}</h5>
                <p>{$LANG.aboutPagewhychoose2}</p>
            </div>
            </div>
            <div class="col-sm-4">
            <div class="why-choose-inner-abt border-light-yellow">
                <img src="{$WEB_ROOT}/templates/{$template}/images/why-choos-icon-2.png" alt="24*7 icon">
                <h5>{$LANG.aboutPagewhychoose3}</h5>
                <p>{$LANG.aboutPagewhychoose4}</p>
            </div>
            </div>
            <div class="col-sm-4">
            <div class="why-choose-inner-abt border-light-blue">
                <img src="{$WEB_ROOT}/templates/{$template}/images/why-choos-icon-3.png" alt="safe and secure">
                <h5>{$LANG.aboutPagewhychoose5}</h5>
                <p>{$LANG.aboutPagewhychoose6}</p>
            </div>
            </div>
        </div>
    </div>
    </div>
{/if}