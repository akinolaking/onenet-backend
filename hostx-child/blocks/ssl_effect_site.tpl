{if $hostx_blocks[$block_slug]}
<div class="ssl-effect-site p-vertical">
      <div class="container">
        <div class="row ssl-effect-site-row">
          <div class="col-sm-6">
           <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/ssl-effect-img.png" alt="ssl certificate">  
          </div>
           <div class="col-sm-6">
            <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2>
            <p>{eval var=$hostx_blocks[$block_slug]->sub_title|html_entity_decode}</p>
            <ul>
              {foreach $hostx_blocks[$block_slug]->widgets as $widget}
                  {eval var=$widget->widget_description|html_entity_decode}
              {/foreach}
            </ul>
          </div>
        </div>
     </div>
</div>
{else}
<div class="ssl-effect-site p-vertical">
      <div class="container">
        <div class="row ssl-effect-site-row">
          <div class="col-sm-6">
           <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/ssl-effect-img.png" alt="ssl certificate">  
          </div>
           <div class="col-sm-6">
            <h2>{$LANG.sslPageHowSsl}</h2>
            <p>{$LANG.sslPageHowSslP}</p>
            <ul>
              <li><i class="fas fa-check"></i>{$LANG.sslPageHowSslLi1}</li>
              <li><i class="fas fa-check"></i>{$LANG.sslPageHowSslLi2}</li>
              <li><i class="fas fa-check"></i>{$LANG.sslPageHowSslLi3}</li>
              <li><i class="fas fa-check"></i>{$LANG.sslPageHowSslLi4}</li>
              <li><i class="fas fa-check"></i>{$LANG.sslPageHowSslLi5}</li>
              <li><i class="fas fa-check"></i>{$LANG.sslPageHowSslLi6}</li>
              <li><i class="fas fa-check"></i>{$LANG.sslPageHowSslLi7}</li>
              <li><i class="fas fa-check"></i>{$LANG.sslPageHowSslLi8}</li>
            </ul>
          </div>
        </div>
     </div>
</div>
{/if}