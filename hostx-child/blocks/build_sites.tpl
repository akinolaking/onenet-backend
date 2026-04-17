{if $hostx_blocks[$block_slug]}
   {if count($hostx_blocks[$block_slug]->widgets) > 0}<div class="{$block_slug}-have-widgets">{/if}
   <div class="build-sites p-vertical">
      <div class="container">
      <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2>
      <p>{eval var=$hostx_blocks[$block_slug]->sub_title|html_entity_decode}</p>      
         {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
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
   <div class="build-sites p-vertical">
      <div class="container">
         <h2>Start building your website in few minutes.</h2>
         <p></p>      
         <div class="row build-sites-row">
            <div class="col-sm-6 text-center">
               <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/ssl-crt.png">  
            </div>
            <div class="col-sm-6 build-sites-right">
               <h3>What’s in the special offer Bundle?</h3>
               <p>More than top-shelf web hosting. Get access to web development, SEO, AdWords and other courses worth 1000$ for absolutely free. </p>
               <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Ling essentially.</p>
               <div class="upgrade-btn-box">
                  <a href="#" class="button04 button-7 button-style hx-primary-btn">Start Upgrade</a>
               </div>
            </div>
         </div>
      </div>
   </div>
{/if}