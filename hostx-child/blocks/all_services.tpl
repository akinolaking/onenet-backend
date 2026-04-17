{if $hostx_blocks[$block_slug]}
<div class="custom-block-5 p-vertical">
  <div class="container">
	<div class="row">
      {foreach $hostx_blocks[$block_slug]->widgets as $widget}
        {eval var=$widget->widget_description|html_entity_decode}
      {/foreach}
	</div>
  </div>
</div>
{else}
<div class="custom-block-5 p-vertical">
  <div class="container">
	<div class="row">
		
	  <div class="col-md-4">
	  <div class="block-box block-5"> 
	  <div class="img-blc"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/blc-5-icon1.svg" alt="server icon"></div>
	  <div class="block-box-cont">
		<h6>Server Auction</h6>
		<p>Enter your required specifications, and when the moment is right, snap up your offer!</p>
	  </div>
	  <div class="block-5-btm">
	  <h4><small>Starting at </small>$19.33</h4>
	  <a href="#" class="button-style hx-secondary">Overview</a>
	  </div>
	  </div>
	  </div>

	   <div class="col-md-4">
	  <div class="block-box block-5"> 
	  <div class="img-blc"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/blc-5-icon2.svg" alt="database"></div>
	  <div class="block-box-cont">
		<h6>Web Hosting</h6>
		<p>We give digital agencies & e-commerce businesses flexibility in how websites are hosted.</p>
	  </div>
	  <div class="block-5-btm">
	  <h4><small>Starting at </small>$19.33</h4>
	  <a href="#" class="button-style hx-secondary">Overview</a>
	  </div>
	  </div>
	  </div>
	   <div class="col-md-4">
	  <div class="block-box block-5"> 
	  <div class="img-blc"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/blc-5-icon3.svg" alt="dedicated server"></div>
	  <div class="block-box-cont">
		<h6>Dedicated Servers</h6>
		<p>We offer dedicated servers for websites excelling in performance, security, and control.</p>
	  </div>
	  <div class="block-5-btm">
	  <h4><small>Starting at </small>$19.33</h4>
	  <a href="#" class="button-style hx-secondary">Overview</a>
	  </div>
	  </div>
	  </div>
	  <div class="col-md-4">
	  <div class="block-box block-5"> 
	  <div class="img-blc"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/blc-5-icon4.svg" alt="cloud server icon"></div>
	  <div class="block-box-cont">
		<h6>Cloud</h6>
		<p>With cloud hosting, give your site more flexibility and power than traditional single-server hosting.</p>
	  </div>
	  <div class="block-5-btm">
	  <h4><small>Starting at </small>$19.33</h4>
	  <a href="#" class="button-style hx-secondary">Overview</a>
	  </div>
	  </div>
	  </div>
	  
	   <div class="col-md-4">
	  <div class="block-box block-5"> 
	  <div class="img-blc"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/blc-5-icon5.svg" alt="server settings"></div>
	  <div class="block-box-cont">
		<h6>Managed Server</h6>
		<p>Manages your server infrastructure to ensure continuous service availability of mission- critical systems.</p>
	  </div>
	  <div class="block-5-btm">
	  <h4><small>Starting at </small>$19.33</h4>
	  <a href="#" class="button-style hx-secondary">Overview</a>
	  </div>
	  </div>
	  </div>
	   <div class="col-md-4">
	  <div class="block-box block-5"> 
	  <div class="img-blc"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/blc-5-icon6.svg" alt="cloud server"></div>
	  <div class="block-box-cont">
		<h6>Colocation</h6>
		<p>Get a powerful mix of state-of-the-art facilities and global best practices in colocation services.</p>
	  </div>
	  <div class="block-5-btm">
	  <h4><small>Starting at </small>$19.33</h4>
	  <a href="#" class="button-style hx-secondary">Overview</a>
	  </div>
	  </div>
	  </div>
	</div>
  </div>
</div>
{/if}