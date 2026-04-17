{if $hostx_blocks[$block_slug]}
{if count($hostx_blocks[$block_slug]->widgets) > 0}<div class="{$block_slug}-have-widgets">{/if}
   <div class="how-it-works-offers p-vertical">
      <div class="container">
         <div class="row how-it-works-offers-row">
            <div class="col-sm-12">
               <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2>
               <p>{eval var=$hostx_blocks[$block_slug]->sub_title|html_entity_decode}</p>
                  {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
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
   <div class="how-it-works-offers p-vertical">
      <div class="container">
         <div class="row how-it-works-offers-row">
            <div class="col-sm-12">
               <h2>How It Works?</h2>
               <p>Start building your website in minutes.</p>
                  <div class="row how-it-works-offers-row-two">
                     <div class="col-sm-4">
                        <div class="how-it-works-offers-inner border-light-blue-offer">
                           <span>1</span>
                           <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/offer-howitwork-icon1.svg">
                           <h6>Order</h6>
                           <p>Complete the checkout process, taking advantage of the limited offer. The entire process will take just a minute!</p>
                        </div>
                     </div>
                     <div class="col-sm-4">
                        <div class="how-it-works-offers-inner border-yellow-offer">
                           <span>2</span>
                           <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/offer-howitwork-icon2.svg">
                           <h6>Set up your account</h6>
                           <p>The transfer and setup process takes just a minute! Choose to create a new or transfer your webhost account.</p>
                        </div>
                     </div>
                     <div class="col-sm-4">
                        <div class="how-it-works-offers-inner border-light-red-offer">
                           <span>3</span>
                           <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/offer-howitwork-icon3.svg">
                           <h6>Experience power</h6>
                           <p>Take advantage of the latest web hosting technologies, put power into your project and reap the benefits.</p>
                        </div>
                     </div>
                  </div>
                  <div class="upgrade-btn-box">
                     <a href="#" class="button04 button-7 button-style hx-primary-btn">Start Upgrade</a>
                  </div>
            </div>
         </div>
      </div>
   </div>
{/if}