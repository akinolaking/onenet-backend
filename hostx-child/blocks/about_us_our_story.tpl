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
  <div class="see-our-story-about p-vertical">
        <div class="container">
          <div class="row abt-frst-row">
            <div class="col-sm-12">
              <h4 ><img src="{$WEB_ROOT}/templates/{$template}/images/coma-about.png" alt="quote icon">{$LANG.aboutPageOurStoryTitle}</h4>
            </div>
          </div>
          <div class="row scnd-frst-row">
            <div class="col-sm-4">
             <h5>{$LANG.aboutPageOurStorySee}</h5>
            </div>
             <div class="col-sm-8">
              <p>{$LANG.aboutPageOurStorySeeP}</p>
            </div>
          </div>
          <div class="row about-metus-row">
            <div class="col-sm-6">
             <img src="{$WEB_ROOT}/templates/{$template}/images/about-metus-left.png" alt="group of people">  
            </div>
             <div class="col-sm-6">
              <h4>{$LANG.aboutPageMeetUs}</h4>
              <p>{$LANG.aboutPageMeetUsP}</p>
              <ul>
                <li>{$LANG.aboutPageMeetUsLi1}</li>
                <li>{$LANG.aboutPageMeetUsLi2}</li>
                <li>{$LANG.aboutPageMeetUsLi3}</li>
              </ul>
            </div>
          </div>
       </div>
  </div>
{/if}