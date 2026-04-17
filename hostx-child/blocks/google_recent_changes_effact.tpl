{if $hostx_blocks[$block_slug]}
<div class="ssl-effect-site recent-changes-effact p-vertical">
	<div class="container">
	  <div class="row ssl-effect-site-row">
		<div class="col-sm-7">
		  <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2>
		      {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
		</div>
		{foreach $hostx_blocks[$block_slug]->widgets as $widget}
          {eval var=$widget->widget_description|html_entity_decode}
        {/foreach}
	  </div>
   </div>
</div>
{else}
<div class="ssl-effect-site recent-changes-effact p-vertical">
	<div class="container">
	  <div class="row ssl-effect-site-row">
		 <div class="col-sm-7">
		  <h2>{$LANG.sslPageEffectSiteH4}</h2>
		  <p>{$LANG.sslPageEffectSiteP}<span>{$LANG.sslPageEffectSitePSpan}</span></p>
		</div>
		<div class="col-sm-5">
		  <div class="http-image-box">
		    <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/http-domain-ssl.png" alt="ssl certificate">  
		  </div>
		</div>
	  </div>
   </div>
</div>
{/if}