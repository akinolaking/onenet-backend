{if $hostx_blocks[$block_slug]}
<div class="about-why-choose-us ssl-certification p-vertical">
        <div class="container">
          <div class="row choose-us-row">
            <div class="col-md-12 text-center">
              <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2>
              <p>{eval var=$hostx_blocks[$block_slug]->sub_title|html_entity_decode}</p>
            </div>
          </div>
          <div class="row choose-us-row-two">
          {foreach $hostx_blocks[$block_slug]->widgets as $widget}
             {eval var=$widget->widget_description|html_entity_decode}
          {/foreach}
          </div>
       </div>
</div>
{else}
<div class="about-why-choose-us ssl-certification p-vertical">
        <div class="container">
          <div class="row choose-us-row">
            <div class="col-md-12 text-center">
              <h2>{$LANG.sslPageEasyStepHead}</h2>
              <p>{$LANG.sslPageEasyStepHeadP}</p>
            </div>
          </div>
          <div class="row choose-us-row-two">
            <div class="col-md-3">
               <div class="why-choose-inner-abt border-light-blue">
                <span>{$LANG.sslPageEasyStepBox1Span}</span>
                <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/ssl-icon-1.svg" alt="ssl icon">
                 <h5>{$LANG.sslPageEasyStepBox1H5}</h5>
                 <p>{$LANG.sslPageEasyStepBox1P}</p>
               </div>
            </div>
            <div class="col-md-3">
               <div class="why-choose-inner-abt  border-yellow">
                <span>{$LANG.sslPageEasyStepBox2Span}</span>
                <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/ssl-icon-2.svg" alt="point click">
                 <h5>{$LANG.sslPageEasyStepBox2H5}</h5>
                 <p>{$LANG.sslPageEasyStepBox2P}</p>
               </div>
            </div>
            <div class="col-md-3">
               <div class="why-choose-inner-abt  border-light-yellow">
                <span>{$LANG.sslPageEasyStepBox3Span}</span>
                <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/ssl-icon-3.svg" alt="code icon">
                 <h5>{$LANG.sslPageEasyStepBox3H5}</h5>
                 <p>{$LANG.sslPageEasyStepBox3P}</p>
               </div>
            </div>
            <div class="col-md-3">
               <div class="why-choose-inner-abt sky-blue-border">
                <span>{$LANG.sslPageEasyStepBox4Span}</span>
                <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/ssl-icon-4.svg" alt="ssl icon">
                 <h5>{$LANG.sslPageEasyStepBox4H5}</h5>
                 <p>{$LANG.sslPageEasyStepBox4P}</p>
               </div>
            </div>
          </div>
       </div>
</div>
{/if}