jQuery(document).ready(function() {
    if(jQuery(".product-list-page-slider-intiate").length > 0){
        if(hostxProductListSlideSetting  == ''){
            hostxProductListSlideSetting  = 3;
        }
        jQuery(".product-list-page-slider-intiate").owlCarousel({
            items : hostxProductListSlideSetting ,
            nav: true,
            dots: false,
            lazyLoad: true,
            navigation: true,
            rtl:rtlHostx,
            items:hostxProductListSlideSetting,
            itemsDesktop : [1199,3],
            itemsDesktopSmall : [900,2],
            itemsTablet: [700,1],
            itemsMobile : [479,1],
            afterAction: function(){
                if(this.itemsAmount > this.currentItem) {
                  jQuery('.owl-next').show();
                  jQuery('.owl-prev').show();
                  jQuery('.owl-next').removeClass('disabled');
                  jQuery('.owl-prev').removeClass('disabled');
                  if( this.currentItem == 0 ) {
                    jQuery('.owl-prev').addClass('disabled');
                  }
                  if ( this.currentItem == this.maximumItem ) {
                    jQuery('.owl-next').addClass('disabled');
                  }
                } else {
                    jQuery('.owl-next').hide();
                    jQuery('.owl-prev').hide();
                }
            }
        });
    }
    if(jQuery(".product-list-page-slider-intiate-V1").length > 0){
        if(hostxProductListSlideSetting  == ''){
            hostxProductListSlideSetting  = 3;
        }
        jQuery(".product-list-page-slider-intiate-V1").owlCarousel({
            items : hostxProductListSlideSetting ,
            nav: true,
            dots: false,
            lazyLoad: true,
            navigation: true,
            rtl:rtlHostx,
            items:hostxProductListSlideSetting,
            itemsDesktop : [1199,3],
            itemsDesktopSmall : [900,2],
            itemsTablet: [700,1],
            itemsMobile : [479,1],
            afterAction: function(){
                if(this.itemsAmount > this.currentItem) {
                  jQuery('.owl-next').show();
                  jQuery('.owl-prev').show();
                  jQuery('.owl-next').removeClass('disabled');
                  jQuery('.owl-prev').removeClass('disabled');
                  if( this.currentItem == 0 ) {
                    jQuery('.owl-prev').addClass('disabled');
                  }
                  if ( this.currentItem == this.maximumItem ) {
                    jQuery('.owl-next').addClass('disabled');
                  }
                } else {
                    jQuery('.owl-next').hide();
                    jQuery('.owl-prev').hide();
                }
            }
        });
    }
    if(jQuery(".recommendations-product-market-connect").length > 0){
        if(jQuery(".recommendations-product-market-connect").find('.viewcart').length > 0){
            jQuery(".mc-promos.viewcart").find(".mc-promo").eq(0).find(".header").trigger("click");
            jQuery(".mc-promos.viewcart").owlCarousel({
                items : 1 ,
                nav: true,
                dots: false,
                lazyLoad: true,
                navigation: true,
                rtl:rtlHostx,
                itemsDesktop:[1199,1],
                itemsDesktopSmall:[991,1],
                itemsMobile : [600,1],
                afterAction: function(){
                    if(this.itemsAmount > this.currentItem) {
                      jQuery('.owl-next').show();
                      jQuery('.owl-prev').show();
                      jQuery('.owl-next').removeClass('disabled');
                      jQuery('.owl-prev').removeClass('disabled');
                      if( this.currentItem == 0 ) {
                        jQuery('.owl-prev').addClass('disabled');
                      }
                      if ( this.currentItem == this.maximumItem ) {
                        jQuery('.owl-next').addClass('disabled');
                      }
                    } else {
                        jQuery('.owl-next').hide();
                        jQuery('.owl-prev').hide();
                    }
                }
            });
        }
    }
    if(jQuery(".last-chance-market-connect").length > 0){
        if(jQuery(".last-chance-market-connect").find('.checkout').length > 0){
            jQuery(".mc-promos.checkout").owlCarousel({
                items : 1 ,
                nav: true,
                dots: false,
                lazyLoad: true,
                navigation: true,
                rtl:rtlHostx,
                loop: false,
                navRewind: false,
                itemsDesktop:[1199,1],
                itemsDesktopSmall:[991,1],
                itemsMobile : [600,1],
                afterAction: function(){
                    if(this.itemsAmount > this.currentItem) {
                      jQuery('.owl-next').show();
                      jQuery('.owl-prev').show();
                      jQuery('.owl-next').removeClass('disabled');
                      jQuery('.owl-prev').removeClass('disabled');
                      if( this.currentItem == 0 ) {
                        jQuery('.owl-prev').addClass('disabled');
                      }
                      if ( this.currentItem == this.maximumItem ) {
                        jQuery('.owl-next').addClass('disabled');
                      }
                    } else {
                        jQuery('.owl-next').hide();
                        jQuery('.owl-prev').hide();
                    }
                }
            });
        }
    }
    if(jQuery(".spot-tld-slider-area").length > 0){
        jQuery(".spot-tld-slider-area").owlCarousel({
            items : 4 ,
            nav: true,
            dots: false,
            lazyLoad: true,
            navigation: true,
            rtl:rtlHostx,
            itemsDesktop:[1199,4],
            itemsDesktopSmall:[991,2],
            itemsMobile : [600,1],
            afterAction: function(){
                if(this.itemsAmount > this.currentItem) {
                  jQuery('.owl-next').show();
                  jQuery('.owl-prev').show();
                  jQuery('.owl-next').removeClass('disabled');
                  jQuery('.owl-prev').removeClass('disabled');
                  if( this.currentItem == 0 ) {
                    jQuery('.owl-prev').addClass('disabled');
                  }
                  if ( this.currentItem == this.maximumItem ) {
                    jQuery('.owl-next').addClass('disabled');
                  }
                } else {
                    jQuery('.owl-next').hide();
                    jQuery('.owl-prev').hide();
                }
            }
        });
    }
    jQuery('.selectBillingCycleHostxCart li').click(function () {
        jQuery('input[name="billingcycle"]').iCheck('destroy');
        jQuery('.selectBillingCycleHostxCart').find('.active').each(function () {
            jQuery(this).removeClass('active');
        });
        jQuery(this).addClass('active');
        jQuery(this).find('input').prop('checked', true);
        if (jQuery(this).find('input').attr('actionCall') == 'callHostxCartSummary'){
            recalctotals();
        }else{
            updateConfigurableOptions(jQuery(this).find('input').attr('actionCall'), jQuery(this).find('input').val());
        }
    });
});
function cartWindowResizeHostx(){
    setTimeout(function() {
        jQuery(window).trigger('resize');
    }, 1500);
}