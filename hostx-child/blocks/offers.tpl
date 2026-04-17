{if $hostx_blocks[$block_slug]}
   {if count($hostx_blocks[$block_slug]->widgets) > 0}<div class="{$block_slug}-have-widgets">{/if}
   <div class="offers-banner p-vertical">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="offers-banner-inner">
                     {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}
               </div>
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
   <div class="offers-banner p-vertical">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="offers-banner-inner">
                  <div class="col-md-6 left-section-offer">
                     <span class="ofr-sub-head">Cutting-edge web hosting for $0.80 exclusive FREE!</span>
                     <h2>Something special just for YOU</h2>
                     <ul class="list-inline">
                        <li class="list-inline-item"><b id="offer-Days">00</b><span>Days</span></li>
                        <li class="list-inline-item"><b id="offer-Hours">00</b><span>Hours</span></li>
                        <li class="list-inline-item"><b id="offer-Minutes">00</b><span>Minutes</span></li>
                        <li class="list-inline-item"><b id="offer-Seconds">00</b><span>Seconds</span></li>
                     </ul>
                     <div class="offer-view-plan">
                        <div class="get-started-box-offers">
                           <a href="#" class="button04 button-7 button-style hx-primary-btn">Get Started Now</a>
                           <p><span>30-day</span> money-back Guarantee</p>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6 right-side-img-offer">
                     <div class="offer-image-section">
                        <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/offer-img.svg">
                     </div>
                     <div class="count-discount-box">
                        <h3>50<stroke-text>OFF</stroke-text><span class="precent">%</span></h3>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
{/if}
<script>
   var x = setInterval( function(){ t(); } , 1000);
   var date_ = "{$hostx_theme_settings.offer_timer}";
   function t() {
     var now = new Date().getTime();
     var countDownDate = new Date(date_).getTime();
     var distance = countDownDate - now;
     var days = Math.floor(distance / (1000 * 60 * 60 * 24));
     var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
     var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
     var seconds = Math.floor((distance % (1000 * 60)) / 1000);
     if (distance > 0) {
        document.getElementById("offer-Days").innerHTML = days.toString().length < 2 ? "0"+days : days  ;
        document.getElementById("offer-Hours").innerHTML =  hours.toString().length < 2 ? "0"+hours : hours  ;
        document.getElementById("offer-Minutes").innerHTML =  minutes.toString().length < 2 ? "0"+minutes : minutes;
        document.getElementById("offer-Seconds").innerHTML =  seconds.toString().length < 2 ? "0"+seconds : seconds;
     }else{
       clearInterval(x);
     }
     
   }
</script>