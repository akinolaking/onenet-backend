{if $hostx_blocks[$block_slug]}
   {if count($hostx_blocks[$block_slug]->widgets) > 0}<div class="{$block_slug}-have-widgets">{/if}
   <div class="why-hostx p-vertical">
      <div class="container">
         <div class="row">
               {eval var=$hostx_blocks[$block_slug]->description}
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
   <div class="why-hostx p-vertical">
      <div class="container">
         <div class="row">
            <div class="col-sm-6 why-hostx-left">
               <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/why-host-ryt.png">
            </div>
            <div class="col-sm-6 why-hostx-right">
               <h2>Why {$companyname}?</h2>
               <div class="media">
                 <img class="mr-4" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/whyhost-icon-1.svg" alt="whyhost icon ">
                 <div class="media-body">
                 <h5 class="mt-0">Best Price Offer</h5>
                 <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text.</p>
                 </div>
               </div>
               <div class="media">
                 <img class="mr-4" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/whyhost-icon-2.svg" alt="whyhost icon ">
                 <div class="media-body">
                 <h5 class="mt-0">30 Days Money-Back Guarantee</h5>
                 <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text.</p>
                 </div>
               </div>
               <div class="media">
                 <img class="mr-4" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/whyhost-icon-3.svg" alt="whyhost icon ">
                 <div class="media-body">
                 <h5 class="mt-0">Instant 24/7 Support</h5>
                 <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text.</p>
                 </div>
               </div>
               <div class="media">
                 <img class="mr-4" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/whyhost-icon-4.svg" alt="whyhost icon ">
                 <div class="media-body">
                 <h5 class="mt-0">Free Website Migration</h5>
                 <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text.</p>
                 </div>
               </div>
            </div>
         </div>
      </div>
   </div>
{/if}