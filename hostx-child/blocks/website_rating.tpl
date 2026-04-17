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
    <div class="website-rating">
        <div class="container">
          <div class="row choose-us-row">
            <div class="col-sm-12">
             <div class="rating-box">
               <div class="line-1sh"></div>
                <div class="line-2sh"></div>
               <div class="ratinginner">
				<img src="{$hostx_theme_settings.header_logo}" alt="{$companyname}">
                <h2>{$LANG.aboutPageWebsiteRateHead}</h2>
                <h3>{$LANG.aboutPageWebsiteRateNumber}</h3>
                <img class="star-im" src="{$WEB_ROOT}/templates/{$template}/images/star-img-rat.png" alt="review icon">
                <h5>{$LANG.aboutPageWebsiteRateReview}</h5>
                <a href="#" class="button04 button-style hx-primary-btn">{$LANG.aboutPageGetStartButton}</a>
                </div> 
             </div>
            </div>
          </div>
       </div>
    </div>
{/if}