{if $hostx_blocks[$block_slug]}
  {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
{else}
<div class="new_hx-banner p-vertical">
  <div class="container">
     <div class="row">
        <div class="col-12">
           <div class="hx-banner-content">
              <h5>Fast, Secure, Powerful Web Hosting!</h5>
              <h1>Take Your Business Online With</h1>
           </div>
        </div>
     </div>
     <div class="row hx-list">
        <div class="col-md-3">
           <div class="hx-banner-list">
              <div class="hx-box"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/hx-img1.svg" alt="icon"></div>
              <p><strong>30 Day</strong> Guarantee</p>
           </div>
        </div>
        <div class="col-md-3">
           <div class="hx-banner-list">
              <div class="hx-box"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/hx-img2.svg" alt="icon"></div>
              <p><strong>Trusted by</strong> 1.2 Millions user</p>
           </div>
        </div>
        <div class="col-md-3">
           <div class="hx-banner-list">
              <div class="hx-box"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/hx-img3.svg" alt="icon"></div>
              <p><strong>Speed Like</strong> No One Else</p>
           </div>
        </div>
        <div class="col-md-3">
           <div class="hx-banner-list">
              <div class="hx-box"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/hx-img4.svg" alt="icon"></div>
              <p><strong>Full Root</strong> and Full Control</p>
           </div>
        </div>
     </div>
     <div class="row">
        <div class="col-12">
           <div class="text-center mt-5"><a href="#" class="btn hx-getstart-btn button-style hx-secondary">GET STARTED NOW</a></div>
        </div>
     </div>
  </div>
</div>
{/if}