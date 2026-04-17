{if $hostx_blocks[$block_slug]}
  <div id="choose" class="choose_section p-vertical">
    <div class="container">
      <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2>
      <p> {eval var=$hostx_blocks[$block_slug]->sub_title|html_entity_decode}</p>
          {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
    </div>
  </div>
  <div class="tab-content" id="myTabContent">
    {foreach $hostx_blocks[$block_slug]->widgets as $widget}
      {eval var=$widget->widget_description|html_entity_decode}
    {/foreach} 
  </div>
{else}
  <div id="choose" class="choose_section p-vertical">
    <div class="container">
      <h2>{$LANG.cpanelwhychoose}?</h2>
      <p>{$LANG.cpanelchallengin}.</p>
      <ul class="nav tab">
    <li><a class="nav-link active" data-toggle="tab" href="#tab1">{$LANG.cpanelinfratechno}</a></li>
    <li><a class="nav-link" data-toggle="tab" href="#tab2">{$LANG.cpanelfreeclickintalls}</a></li>
    <li><a class="nav-link" data-toggle="tab" href="#tab3">{$LANG.cpanelsslcertificate}</a></li>
    <li><a class="nav-link" data-toggle="tab" href="#tab4">{$LANG.headersupport}</a></li>   
    </ul> 
    </div>
  </div>
<div class="tab-content" id="myTabContent"> 
  <div class="tab-pane active" id="tab1" role="tabpanel" aria-labelledby="tab1">
  	<div class="cloud_hosting">
  	  <div class="container">
  	    <div class="cloud_hosting_in">
  	    <div class="row">
  	      <div class="col-sm-6">
  	        <div class="left">
  	          <h2>{$LANG.cpanelultrahosting}</h2>
  	          <p>{$LANG.cpanelcloudsimplicity}</p>
  	          <div class="hosting_list">
  	          <ul>
  	            <li>{$LANG.cpaneldualprocess}</li>
  	            <li>24GB {$LANG.cpanelram}</li>
  	            <li>24x7x365 {$LANG.cpanelSupport}</li>
  	            <li>250GB {$LANG.cpanelraidos}</li>
  	            <li>1TB {$LANG.cpanelcacheddrive}</li>
  	            <li>{$LANG.cpanelapache} 2.2x</li>
  	            <li>{$LANG.cpanelphpversion}</li>
  	            <li>{$LANG.cpanelfreednsmanage}</li>
  	          </ul>
  	          <ul>
  	            <li>{$LANG.cpanelmysql} 5</li>
  	            <li>{$LANG.cpanelrubyrail}</li>
  	            <li>{$LANG.cpanelantiprotect}</li>
  	            <li>{$LANG.cpanelsecureftp}</li>
  	            <li>{$LANG.cpanelleechprotect}</li>
  	            <li>{$LANG.cpanelphpmyadmin}</li>
  	            <li>{$LANG.cpanelemailaddress}</li>
  	            <li>{$LANG.cpanelvarnishcach}</li>
  	          </ul>
  	        </div>
  	        </div>
  	      </div>
  	      <div class="col-sm-6">
  	        <div class="right">
  	          <div class="row">  
  	            <div class="col-sm-6">
  	          <div class="hosting_box" style="background-image: url({$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/img001.png);">
  	            <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon011.svg" alt="clock image">
  	            <h2>{$LANG.cpanelreliablepower} </h2>
  	            <p>{$LANG.cpaneluninterrup}</p>
  	          </div>
  	          <div class="hosting_box mt-3" style="background-image: url({$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/img002.png);">
  	            <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon012.svg" alt="lock settings">
  	            <h2>{$LANG.cpanelnetworksecurity}</h2>
  	            <p>{$LANG.cpanelmustability}</p>
  	          </div>
  	        </div>
  	        <div class="col-sm-6 justify-content-center d-flex pl-0">
  	          <div class="hosting_box" style="background-image: url({$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/img003.png);"> 
  	            <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon013.svg" alt="safe and secure"> 
  	            <h2>{$LANG.cpanelhvacprotection}</h2>
  	            <p>{$LANG.cpanelresilience}</p>
  	          </div>
  	        </div>
  	          </div>
  	        </div>
  	      </div>
  	    </div></div>
  	  </div>
  	</div>
  </div>

  <div class="tab-pane" id="tab2" role="tabpanel" aria-labelledby="tab2">
    <div class="install p-vertical">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <div class="left">
            <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/csm-icon.png" alt="CMS Icons">          
          </div>
          </div>
            <div class="col-sm-8">
              <div class="right">
                <h2>{$LANG.cpanelinstallapp}</h2>
                <p>{$LANG.cpanelinstallapptext}.</p>
               <a href="#" class="button-style hx-primary-btn">{$LANG.cpaneloneclickapp}</a> 
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>


  <div class="tab-pane" id="tab3" role="tabpanel" aria-labelledby="tab3">  
    <div class="clearfix"></div>
      <div class="certificate p-vertical">
        <div class="container">
          <div class="row">
            <div class="col-sm-5">
              <div class="left text-right">
                <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/img004.png" alt="ssl certificate">
              </div>
            </div>
            <div class="col-sm-7">
              <div class="right">
                <h4>{$LANG.cpanelsitesecure}</h4>
                <h2>{$LANG.cpanelfreessl}!</h2>
                <p>{$LANG.cpanelfreessltext}.</p>
                <a href="#" class="button03 button-style hx-primary-btn">{$LANG.cpanelgetout}</a>
              </div>
            </div>
          </div>
        </div>
      </div> 
  </div>

   <div class="tab-pane" id="tab4" role="tabpanel" aria-labelledby="tab4"> 
      <div class="secure_col p-vertical">
        <div class="container">
          <div class="row">
            <div class="col-md-12"> 
              <div class="wrapped-area-text">
                <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/banner-logo.png" alt="theme logo">
                <h2>{$LANG.cpanelyoulove}</h2>
                <p class="color-white">{$LANG.cpanelyoulovetext}.</p>
              </div>
            </div>
            <div class="col-md-12 color-white">
                <div class="wrapped-calling-area">
                  <div class="image-area-number">
                    <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/24-7.png" alt="24/7">
                  </div>
                  <div class="sec-number-area">
                      <h5>{$LANG.cpanelactivebackup}:</h5>
                      <h4>+1(012)1234567</h4>
                  </div>
                </div>
            </div>
            <div class="col-md-12">
              <div class="secure-box">
                <div class="secure-box1 color-white">
                    <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon-01.svg" class="svg" alt="svg icon">
                    <h6>{$LANG.cpaneltext}</h6> 
                </div>
                <div class="secure-box1 color-white">
                    <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon-02.svg" class="svg" alt="svg icon">
                    <h6>{$LANG.cpanelchat}</h6>  
                </div>
                <div class="secure-box1 color-white">
                    <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/icon-03.svg" class="svg" alt="svg icon">
                    <h6>{$LANG.cpanelphone}</h6>   
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
   </div>
   
</div>
{/if}