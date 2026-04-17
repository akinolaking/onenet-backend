{if $hostx_blocks[$block_slug]}
<div class="features-option2 include_all_feature_sec p-vertical">
    <div class="container">
	    <div class="top">
	      <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2>
	          {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
	    </div>
	    <div class="clearfix"></div>
	    <div class="row">
	     {foreach $hostx_blocks[$block_slug]->widgets as $widget}
		 	{eval var=$widget->widget_description|html_entity_decode}
          {/foreach}
	    </div> 
    </div> 
</div>
{else}
<div class="features-option2 include_all_feature_sec p-vertical">
    <div class="container">
	    <div class="top">
	      <h2>{$LANG.dedicatedfeature}</h2>
	      <p>{$LANG.dedicatedfeaturetext}</p>
	    </div>
	    <div class="clearfix"></div>
	    <div class="row">
	      <div class="col-sm-3">
	        <div class="features-col">
	          <div class="img-box">
	            <img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/ddos-icon.svg" alt="ddos icon"></div>
	            <h6>{$LANG.dedicatedddosprotect}</h6>
	            <p>{$LANG.dedicatedddosprotecttext}</p>
	        </div>
	      </div>
	      <div class="col-sm-3">
	        <div class="features-col">
	          <div class="img-box">
	            <img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/rpn.svg" alt="lock icon"></div>
	            <h6>{$LANG.dedicatedrpn} </h6>
	            <p>{$LANG.dedicatedrpntext}</p>
	        </div>
	      </div>
	      <div class="col-sm-3">
	        <div class="features-col">
	          <div class="img-box">
	            <img class="svg box-svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon05.svg" alt="svg icons"></div>
	            <h6>{$LANG.dedicatedvmware}</h6>
	            <p>{$LANG.dedicatedvmwaretext}</p>
	        </div>
	      </div>
	      <div class="col-sm-3">
	        <div class="features-col">
	          <div class="img-box">
	            <img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/kvm-over-ip.svg" alt="user settings"></div>
	            <h6>{$LANG.dedicatedkvmip}</h6>
	            <p>{$LANG.dedicatedkvmiptext}</p>
	        </div>
	      </div>
	      <div class="col-sm-3">
	        <div class="features-col">
	          <div class="img-box">
	            <img class="svg raid" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/rpn1.svg" alt="raid icon"></div>
	            <h6>{$LANG.dedicatedraid}</h6>
	            <p>{$LANG.dedicatedraidtext}</p>          
	        </div>
	      </div>
	      <div class="col-sm-3">
	        <div class="features-col">
	          <div class="img-box">
	            <img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/support.svg" alt="24*7 Support"></div>
	            <h6>{$LANG.dedicatesupport}</h6>
	            <p>{$LANG.dedicatesupporttext}</p>
	        </div>
	      </div>
	      <div class="col-sm-3">
	        <div class="features-col">
	          <div class="img-box">
	            <img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/certified-datacenter.svg" alt="datacenter"></div>
	            <h6>{$LANG.dedicatecertifiedcenter}</h6>
	            <p>{$LANG.dedicatecertifiedcentertext}</p>
	        </div>
	      </div>
	      <div class="col-sm-3">
	        <div class="features-col">
	          <div class="img-box"> 
	            <img class="svg" src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/premium-network.svg" alt="network"></div>
	            <h6>{$LANG.dedicatedpremiumnetwork} </h6>
	            <p>{$LANG.dedicatedpremiumnetworktext}</p>
	        </div>
	      </div>
	    </div> 
    </div> 
</div>
{/if}