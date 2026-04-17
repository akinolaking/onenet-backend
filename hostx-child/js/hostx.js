/**

 * Hostx v3.X.X

 * Copyright Whmcs Global Services

 * Licensed under: https://whmcsglobalservices.com/

 */

const isMobileCheck = /iPhone|iPad|iPod|Android/i.test(navigator.userAgent);

var isResizeWindow = ( window.innerWidth <= 991 );

jQuery(document).ready(function() {

    jQuery(window).resize(function(){

        isResizeWindow = ( window.innerWidth <= 991 );

    });

    /** 

     * Stickey Header Feature 

    */

     if(hostxHeaderSticky == 'on'){

        //alert('add header sticky feature');

     }

    /** 

     * Header Menu Open Event 

    */



    if(hostxHeaderMenuOpenEvent  == 'click'){

        if(hostxCurrentmenustyle == 'custom_menu_style_1' && jQuery(".menu-one-parent-open-on-click").length > 0){

            jQuery(document).on('click','li.menu-one-parent-open-on-click a',function(e){

                if(jQuery(this).parent("li").hasClass("open-menu")){

                    jQuery("li.parent-menu-item").removeClass("open-menu");

                }else{

                    jQuery("li.parent-menu-item").removeClass("open-menu");

                    jQuery(this).parent("li").addClass("open-menu");

                    let firstChildHeadDataGet = jQuery(this).parent("li").find("li.left-list-submenu").eq(0).find(".head-title-data-custom-menu").html();

                    let firstChildHeadDataDescpGet = jQuery(this).parent("li").find("li.left-list-submenu").eq(0).find(".head-descp-data-custom-menu").html();                    

                    jQuery(this).parent("li").find(".right-menu-area-data").find(".content-area-part-right-side").find(".sub-menu-heading").html('<h5>'+firstChildHeadDataGet+'</h5>');

                    jQuery(this).parent("li").find(".right-menu-area-data").find(".content-area-part-right-side").find(".sub-menu-description").html(firstChildHeadDataDescpGet);

                }

            });

            jQuery(document).on('click','li.menu-one-sub-open-on-click',function(){

                if(jQuery(this).hasClass("open-sub-menu")){

                    jQuery("li.left-list-submenu").removeClass("open-sub-menu");

                }else{

                    let subMenuheadDesc = jQuery(this).find(".head-title-data-custom-menu").html();

                    let subMenuheadSideDesc = jQuery(this).find(".head-descp-data-custom-menu").html();                    

                    jQuery(this).closest(".drop-down-menu-inner-area").find(".right-menu-area-data").find(".content-area-part-right-side").find(".sub-menu-heading").html('<h5>'+subMenuheadDesc+'</h5>');

                    jQuery(this).closest(".drop-down-menu-inner-area").find(".right-menu-area-data").find(".content-area-part-right-side").find(".sub-menu-description").html(subMenuheadSideDesc);

                    jQuery("li.left-list-submenu").removeClass("open-sub-menu");

                    jQuery(this).addClass("open-sub-menu");

                }

            });

            jQuery(document).mouseup(function(e) {

                var containerTarget = jQuery(".host-child-menu-right-sec");

                if(!containerTarget.is(e.target) && containerTarget.has(e.target).length === 0) {

                    jQuery("li.parent-menu-item").removeClass("open-menu");

                    jQuery("li.left-list-submenu").removeClass("open-sub-menu");

                }

            });           

        }else if(hostxCurrentmenustyle == 'mega_menu' && jQuery(".mega-menu-default-open-on-click").length > 0){

            jQuery(document).on('click','li.mega-menu-default-open-on-click a',function(e){

                if(jQuery(this).parent("li").hasClass("open")){

                    jQuery("li.mega-menu-default-open-on-click").removeClass("open");                   

                }else{

                    jQuery("li.mega-menu-default-open-on-click").removeClass("open");

                    jQuery(this).parent("li").addClass("open");

                }               

            });

            jQuery(document).mouseup(function(e) {

                var containerTarget = jQuery(".nav-link.dropdown-toggle");

                if(!containerTarget.is(e.target) && containerTarget.has(e.target).length === 0) {

                    jQuery("li.mega-menu-default-open-on-click").removeClass("open"); 

                }

            }); 

        }else if(hostxCurrentmenustyle == 'dropdown_menu' && jQuery(".dropdown-menu-default-open-on-click").length > 0){

            jQuery(document).on('click','#hostx-drop-down-menus>li>a',function(e){

               if(e.target.classList.contains('menu_top')){

                    if(jQuery(this).parent("li").hasClass("open")){

                        jQuery("li.drop-down-have-child").removeClass("open-drop-menu");

                        jQuery(this).parent("li").removeClass("open");

                    }else{

                        jQuery("li.dropdown-menu-default-open-on-click").removeClass("open");

                        jQuery(this).parent("li").addClass("open");

                    }

                }

            });

            jQuery(document).on('click','li.drop-down-have-child',function(v){

                if(jQuery(this).hasClass("open-drop-menu")){

                    jQuery(this).removeClass("open-drop-menu");

                }else{

                    jQuery("li.drop-down-have-child").removeClass("open-drop-menu");

                    jQuery(this).addClass("open-drop-menu");

                }

            });

            jQuery(document).mouseup(function(e) {

                var containerTarget = jQuery(".menu-drop-hx");

                var containerCurrencyTarget = jQuery(".currencyDiv");

                if(!containerTarget.is(e.target) && containerTarget.has(e.target).length === 0) {

                    jQuery("li.dropdown-menu-default-open-on-click").removeClass("open");

                    jQuery("li.drop-down-have-child").removeClass("open-drop-menu");

                }

                if(!containerCurrencyTarget.is(e.target) && containerCurrencyTarget.has(e.target).length === 0) {

                    jQuery("#currencyList").removeClass("show");

                }

            });

            jQuery(document).on('click','li.currencyDiv',function(e){

                if(jQuery(this).find("#currencyList").hasClass("show")){

                    jQuery(this).find("#currencyList").removeClass("show");                   

                }else{

                    jQuery(this).find("#currencyList").addClass("show");

                }

            });

        }else if(hostxCurrentmenustyle == 'mega_menu_latest' && jQuery("ul.top-menu-ul-header-latest").length > 0){

            jQuery("ul.top-menu-ul-header-latest").find("li.top-menu-li-header").each(function(){

                jQuery(this).find("li.left-list-inner").eq(0).addClass("active");

                var headTitleMenu = jQuery(this).find("li.left-list-inner").eq(0).find(".li-descp-head-title-data").html();

                var headDescriptionMenu = jQuery(this).find("li.left-list-inner").eq(0).find(".li-descp-head-descp-data").html();

                var childMenuLink = jQuery(this).find("li.left-list-inner").eq(0).find(".child-link-data").html();

                var descriptionButton = jQuery(this).find("li.left-list-inner").eq(0).find(".li-right-button-last").html();

                jQuery(this).find(".right-side-panel-data").find("h5").html(headTitleMenu);

                jQuery(this).find(".right-side-panel-data").find("h5").after(headDescriptionMenu);

                if(jQuery(this).find(".right-side-panel-data").find(".side-description-menu").length > 0){

                    jQuery(this).find(".right-side-panel-data").find(".side-description-menu").after(descriptionButton);

                }else{

                    jQuery(this).find(".right-side-panel-data").find("h5").after(descriptionButton);

                }

                jQuery(this).find(".bottom-menu-link-header-latest").html(childMenuLink);

                jQuery(this).find(".right-side-panel-data").removeClass("hidden");

                jQuery(this).find(".bottom-menu-link-header-latest").removeClass("hidden");

            });

            jQuery("ul.top-menu-ul-header-latest").find("li.top-menu-li-header").find("a.top-menu-parent").on('click',function(){

                if(jQuery(this).parent().hasClass("active-show-mobile")){

                   jQuery(this).parent().removeClass("active-show-mobile");

                }else{

                   jQuery("ul.top-menu-ul-header-latest").find("li.top-menu-li-header.active-show-mobile").removeClass("active-show-mobile");

                   jQuery(this).parent().addClass("active-show-mobile");

                }

            });

            jQuery("li.left-list-inner").on('click',function(){

                jQuery(this).parent().find("li.left-list-inner.active").removeClass("active");      

                jQuery(this).addClass("active");

                var headTitleMenu = jQuery(this).find(".li-descp-head-title-data").html();

                var headDescriptionMenu = jQuery(this).find(".li-descp-head-descp-data").html();

                var childMenuData = jQuery(this).find(".child-link-data").html();

                var descriptionButton = jQuery(this).find(".li-right-button-last").html();

                jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find("h5").html('');

                jQuery(this).parent().parent().parent().parent().find(".bottom-menu-link-header-latest").html('');

                jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find("ul.side-description-menu").remove();

                jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find(".botton-description-button").remove();

                jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find("h5").html(headTitleMenu);

                jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find("h5").after(headDescriptionMenu);

                if(jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find(".side-description-menu").length > 0){

                    jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find(".side-description-menu").after(descriptionButton);

                }else{

                    jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find("h5").after(descriptionButton);

                }

                jQuery(this).parent().parent().parent().parent().find(".bottom-menu-link-header-latest").html(childMenuData);

            });

            jQuery("li.country-list-menu-btn").on('click',function(){

                jQuery(this).toggleClass("open-country");

            });

            jQuery(document).mouseup(function(e) {

                var containerTarget = jQuery(".top-menu-li-header");

                var containerCurrencyTarget = jQuery(".country-list-menu-btn");

                if(!containerTarget.is(e.target) && containerTarget.has(e.target).length === 0) {

                    jQuery("li.top-menu-li-header").removeClass("active-show-mobile");

                    jQuery("li.drop-down-have-child").removeClass("open-drop-menu");

                }

                if(!containerCurrencyTarget.is(e.target) && containerCurrencyTarget.has(e.target).length === 0) {

                    jQuery("li.country-list-menu-btn").removeClass("open-country");

                }

            });

        }else if(hostxCurrentmenustyle == 'menu_V4' && jQuery(".hostx-nav-v4-style").length > 0){

            jQuery(document).on('click','li.parentMenuHaveChild',function(){

                if(jQuery(this).hasClass("menu-active")){

                    jQuery(this).removeClass("menu-active");

                }else{

                   jQuery("li.parentMenuHaveChild").removeClass("menu-active");

                   jQuery(this).addClass("menu-active");

                }

            });

            jQuery(document).mouseup(function(e) {

                var containerTarget = jQuery(".navbar-nav-four");

                if(!containerTarget.is(e.target) && containerTarget.has(e.target).length === 0) {

                    jQuery("li.parentMenuHaveChild").removeClass("menu-active");

                }

            });

        }                 

    }else if(hostxHeaderMenuOpenEvent  == 'hover'){

        if(hostxCurrentmenustyle == 'mega_menu_latest' && jQuery("ul.top-menu-ul-header-latest").length > 0){

            jQuery("ul.top-menu-ul-header-latest").find("li.top-menu-li-header").each(function(){

                jQuery(this).find("li.left-list-inner").eq(0).addClass("active");

                var headTitleMenu = jQuery(this).find("li.left-list-inner").eq(0).find(".li-descp-head-title-data").html();

                var headDescriptionMenu = jQuery(this).find("li.left-list-inner").eq(0).find(".li-descp-head-descp-data").html();

                var childMenuLink = jQuery(this).find("li.left-list-inner").eq(0).find(".child-link-data").html();

                var descriptionButton = jQuery(this).find("li.left-list-inner").eq(0).find(".li-right-button-last").html();

                jQuery(this).find(".right-side-panel-data").find("h5").html(headTitleMenu);

                jQuery(this).find(".right-side-panel-data").find("h5").after(headDescriptionMenu);

                if(jQuery(this).find(".right-side-panel-data").find(".side-description-menu").length > 0){

                    jQuery(this).find(".right-side-panel-data").find(".side-description-menu").after(descriptionButton);

                }else{

                    jQuery(this).find(".right-side-panel-data").find("h5").after(descriptionButton);

                }

                jQuery(this).find(".bottom-menu-link-header-latest").html(childMenuLink);

                jQuery(this).find(".right-side-panel-data").removeClass("hidden");

                jQuery(this).find(".bottom-menu-link-header-latest").removeClass("hidden");

            });

            jQuery(document).on('mouseover','li.top-menu-li-header',function(){

                jQuery('li.top-menu-li-header').removeClass("active-show-mobile");

                jQuery(this).addClass("active-show-mobile");

                if(jQuery(this).find("a.top-menu-parent").hasClass("have-child")){

                    let alreadyActive = 0;

                    jQuery(this).find("li.left-list-inner").each(function(){

                        if(jQuery(this).hasClass("active")){

                            alreadyActive = 1; 

                        }

                    })

                    if(alreadyActive == 0){

                        jQuery(this).find("li.left-list-inner").eq(0).addClass("active"); 

                    }

                }

            })

            jQuery(document).on('mouseover','li.left-list-inner',function(){

                jQuery(this).parent().find("li.left-list-inner.active").removeClass("active");      

                jQuery(this).addClass("active");

                var headTitleMenu = jQuery(this).find(".li-descp-head-title-data").html();

                var headDescriptionMenu = jQuery(this).find(".li-descp-head-descp-data").html();

                var childMenuData = jQuery(this).find(".child-link-data").html();

                var descriptionButton = jQuery(this).find(".li-right-button-last").html();

                jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find("h5").html('');

                jQuery(this).parent().parent().parent().parent().find(".bottom-menu-link-header-latest").html('');

                jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find("ul.side-description-menu").remove();

                jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find(".botton-description-button").remove();

                jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find("h5").html(headTitleMenu);

                jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find("h5").after(headDescriptionMenu);

                if(jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find(".side-description-menu").length > 0){

                    jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find(".side-description-menu").after(descriptionButton);

                }else{

                    jQuery(this).parent().parent().parent().parent().find(".right-side-panel-data").find("h5").after(descriptionButton);

                }

                jQuery(this).parent().parent().parent().parent().find(".bottom-menu-link-header-latest").html(childMenuData);

            })

            jQuery(document).on('mouseleave','.top-mega-menu-latest-cls,li.top-menu-li-header',function(e) {

                var containerTarget = jQuery(".li.top-menu-li-header"); //jQuery("#myHeader");

                var containerCurrencyTarget = jQuery(".country-list-menu-btn");

                if(!containerTarget.is(e.target) && containerTarget.has(e.target).length === 0) {

                    jQuery("li.top-menu-li-header").removeClass("active-show-mobile");

                    jQuery("li.drop-down-have-child").removeClass("open-drop-menu");

                }

                if(!containerCurrencyTarget.is(e.target) && containerCurrencyTarget.has(e.target).length === 0) {

                    jQuery("li.country-list-menu-btn").removeClass("open-country");

                }

            });

        }

    }

    /**

     Toggle button trigger menus

     */

    jQuery(document).on('click','#latest-meu-toggle',function(){

        jQuery(this).toggleClass("open-top-menu");

        jQuery("body").toggleClass("body-open-top-menu");

    });

    jQuery(document).on('click','.mobile-menu-toggle-drop',function(){

        jQuery(this).toggleClass("open-drop-mega-menu");

        jQuery("body").toggleClass("body-open-drop-mega-menu");

    });

    /**

     * Slider Intialized Slick, Owl

     */

        if(jQuery(".carouselInnerCT").length > 0){

            jQuery(".carouselInnerCT").slick({

                dots: false,

                infinite: true,

                slidesToShow: 1,

                slidesToScroll: 1,

                autoplay: true,

                autoplaySpeed: 2000,

                variableWidth: true,

            });

        }

        if(jQuery(".wgsTestimonial").length > 0){

            jQuery(".wgsTestimonial").slick({

                dots: true,

                infinite: true,

                slidesToShow: 1,

                slidesToScroll: 1,

                autoplay: true,

                autoplaySpeed: 2000,

                variableWidth: false,

                responsive: [

                    {breakpoint: 1024,settings: {slidesToShow: 1,slidesToScroll: 1}},

                    {breakpoint: 700,settings: {slidesToShow: 1,slidesToScroll: 1}},

                    {breakpoint: 600,settings: {slidesToShow: 1,slidesToScroll: 1}},

                    {breakpoint: 480,settings: {slidesToShow: 1,slidesToScroll: 1}},

                    {breakpoint: 280,settings: {slidesToShow: 1,slidesToScroll: 1}}

                ]

            });

        }

        if(jQuery(".hostx-pricing-block-vps-types").length > 0){

            if(hostxVpsPricingSlideSetting == ''){

                hostxVpsPricingSlideSetting = 3;

            }

            jQuery("#productList").owlCarousel({

                items : hostxVpsPricingSlideSetting,

                nav: true,

                dots: false,

                lazyLoad: true,

                navigation: true,

                itemsDesktop:[1199,hostxVpsPricingSlideSetting],

                itemsDesktopSmall:[980,2],

                itemsMobile : [600,1],

            });

        }

        if(jQuery(".hostx-pricing-block-ssl-types").length > 0){

            if(hostxVpsPricingSlideSetting == ''){

                hostxVpsPricingSlideSetting = 3;

            }

            jQuery("#productList_SSL").owlCarousel({

                items : hostxVpsPricingSlideSetting,

                nav: true,

                dots: false,

                lazyLoad: true,

                navigation: true,

                itemsDesktop:[1199,hostxVpsPricingSlideSetting],

                itemsDesktopSmall:[980,2],

                itemsMobile : [600,1],

            });

        }

        if(jQuery("#owl-demo").length > 0){

            jQuery("#owl-demo").owlCarousel({

                items: 4,

                nav: true,

                dots: true,

                lazyLoad: true,

                navigation: true,

                itemsDesktop:[1199,3],

                itemsDesktopSmall:[980,2],

                itemsMobile : [600,1],

            });       

        }

        if(jQuery("#owl-demo1").length > 0){

            jQuery("#owl-demo1").owlCarousel({

                items: 1,

                nav: true,       

                dots: true,

                lazyLoad: true,

                navigation: true,

                responsiveClass:true,

                responsive:{

                    0:{

                        items:1,

                        nav:false,

                        navigation:false

                    },

                    600:{

                        items:1,

                        nav:false,

                        navigation:false

                    },

                    1000:{

                        items:1,

                        nav:false,

                        navigation:false

                    },

                    1199:{

                        items:1,

                        nav:false,

                        navigation:false

                    }

                }

            });

        }

        if(jQuery(".wgsTestimonialCrouselCustom").length > 0){

            jQuery(".wgsTestimonialCrouselCustom").not('.slick-initialized').slick({

                dots: true,

                infinite: true,

                slidesToShow: 3,

                slidesToScroll: 3,

                autoplay: true,

                autoplaySpeed: 2000,

                variableWidth: false,

                rtl:rtlHostx,

                responsive: [

                {breakpoint: 1024,settings: {slidesToShow: 3,slidesToScroll: 3}},

                {breakpoint: 991,settings: {slidesToShow: 2,slidesToScroll: 2}},

                {breakpoint: 600,settings: {slidesToShow: 1,slidesToScroll: 1}},

                {breakpoint: 480,settings: {slidesToShow: 1,slidesToScroll: 1}},

                {breakpoint: 280,settings: {slidesToShow: 1,slidesToScroll: 1}}

                ]

            });

        }

        if(jQuery(".wgsTestimonialCrouselCustomOneSlide").length > 0){

            jQuery(".wgsTestimonialCrouselCustomOneSlide").not('.slick-initialized').slick({

                dots: true,

                infinite: true,

                slidesToShow: 1,

                slidesToScroll: 1,

                autoplay: true,

                autoplaySpeed: 2000,

                variableWidth: false,

                rtl:rtlHostx,

            });

        }

        if(jQuery(".slider-intiate-header-menu").length > 0){

            jQuery(".slider-intiate-header-menu").slick({

                dots: false,

                infinite: true,

                slidesToShow: 1,

                slidesToScroll: 1,

                autoplay: true,

                autoplaySpeed: 2000,

                variableWidth: true,

                rtl:rtlHostx,

            });

        }

        if(jQuery(".slider-intiate-header-mega-menu").length > 0){

            jQuery(".slider-intiate-header-mega-menu").slick({

                dots: false,

                infinite: true,

                slidesToShow: 1,

                slidesToScroll: 1,

                autoplay: true,

                autoplaySpeed: 2000,

                variableWidth: true,

                rtl:rtlHostx,

            });

        }

        if(jQuery(".domain-search-menu-slider").length > 0){

            jQuery(".domain-search-menu-slider").slick({

                dots: false,

                infinite: true,

                slidesToShow: 5,

                slidesToScroll: 1,

                autoplay: true,

                autoplaySpeed: 2000,

                variableWidth: true,

                rtl:rtlHostx,

                responsive: [

                    {breakpoint: 1024,settings: {slidesToShow: 5,slidesToScroll: 1}},

                    {breakpoint: 700,settings: {slidesToShow: 2,slidesToScroll: 2}},

                    {breakpoint: 600,settings: {slidesToShow: 1,slidesToScroll: 1}},

                    {breakpoint: 480,settings: {slidesToShow: 1,slidesToScroll: 1}},

                    {breakpoint: 280,settings: {slidesToShow: 1,slidesToScroll: 1}}

                ]

            });            

        }    

    /**

     * Click Action Feature Intialized

     */

    //   faq accordian new js 
    $('.frequently-questions.faq-about-us .card-header a').first().attr('aria-expanded','true');
    $('.frequently-questions-row .card-anchor').first().removeClass('collapsed').attr('aria-expanded','true');
    $('.frequently-questions-row .card').first().addClass('current');
    $('.frequently-questions-row #collapse0').slideDown();
 
    $('.frequbntly_asked .question').click(function(){
        if($(this).attr('aria-expanded') != 'true'){
             $('.question').attr('aria-expanded','false');
            $('.question').parent().find('div').removeClass('show');
        }
    });
    
    
    $('.card-header a').click(function(){
        if($(this).attr('aria-expanded') == 'true'){
            $(this).attr('aria-expanded', 'false'); // Open the clicked link
        }else{
            $('.card-header a').attr('aria-expanded', 'false'); // Close all links first
            $(this).attr('aria-expanded', 'true'); // Open the clicked link
          
            if($('.collapse.show').length){
                $('.collapse.show').removeClass('show');
            }
        }

   });

//  end faq accordian new js 

        jQuery(document).on('click','.choose_section .nav-link',function(){

            jQuery(".nav-link").removeClass("active");

            jQuery(this).addClass("active");

        });

        jQuery(document).on('click','.question',function(){    

            var id = jQuery(this).attr('data');

            var expanded = jQuery(this).attr('aria-expanded');

            if(expanded =="false"){

                jQuery(this).attr('aria-expanded','true');

                jQuery(id).addClass('show');

            }else{

                jQuery(this).attr('aria-expanded','false');

                jQuery(id).removeClass('show');

            }

        });

        jQuery(document).on('click','.owl-wrapper .owl-item',function(){

            jQuery(this).parent().find('.owl-item.active').removeClass('active');

            jQuery(this).addClass('active');

        });

        jQuery(document).on('click','.pmenu',function(){

            jQuery(this).toggleClass('active');        

        });

        jQuery(document).on('click','.notifications_link',function(){

            jQuery(".dropdown_top").toggleClass("active"); 

        });

        jQuery(document).on("click","ul#owl-demo .owl-buttons",function(event){

            jQuery("ul#owl-demo .owl-wrapper").find(".owl-item").each(function(){

            if(jQuery(this).hasClass('active')){

                jQuery("ul#owl-demo .nav-item").removeClass("active");

                jQuery("ul#owl-demo .tab-pane").removeClass("active");

                jQuery(this).find("ul#owl-demo .nav-item").addClass("active");

                jQuery(this).find(".customers_box").click();

            }

            });

        });

        jQuery(document).on("click","ul#owl-demo .customers_box",function(){

            jQuery("ul#owl-demo .owl-item").removeClass("active");

            jQuery("ul#owl-demo .nav-item").removeClass("active");

            jQuery("ul#owl-demo .tab-pane").removeClass("active");

            var TabIdGet = jQuery(this).attr("href");

            jQuery(TabIdGet).addClass("active");

        });

        jQuery(document).on("click","#wgs-toplink",function(e){

            return e.preventDefault(), jQuery("html, body").animate({ scrollTop: 0 }, "slow"), !1;

        });

		jQuery("nav#main-nav").remove();

        jQuery(document).on("click","#languageList a",function(){

			var e = jQuery(this).html();

			jQuery("#sLanguage").html(e);

		});

        jQuery(document).on("click","#currencyList a",function(){

            var e = jQuery(this).html();

            jQuery("#sCurrency").html(e);

        });

        jQuery(document).on("click","#locationList a",function(){

            var e = jQuery(this).html();

            jQuery("#sLocation").html(e);

        });

        jQuery("body").on("keyup", "#serachBarTopMenu", function (e) {

            13 == e.which ? jQuery("#formSubMobileDomains").submit() : jQuery("#hideenSlds").val(jQuery(this).val());

        });

        jQuery(document).on("click","#menu_bar_hostx",function(){

			jQuery('nav#menu-sidebar-hostx').toggleClass('left-open-hostx');

		});

        jQuery(document).on("click","#menu_bar_hostx_second",function(){

			jQuery('nav#menu-sidebar-hostx-sec').toggleClass('left-open-hostx-sec');

		});

        jQuery(document).on("click",".nav-dropdown",function(e){

			if(e.target.class == "nav-sub" || jQuery(e.target).parents(".nav-sub").length) { 	

			}else{

				jQuery(this).toggleClass( "open" );

				jQuery(this).find('.nav-sub').toggle('slow');

			}

		});

        jQuery(document).on("click","#nav-latest-mega-menu-toggle",function(e){

            jQuery("#myHeader").toggleClass("active-mobile");

        });

        jQuery(document).on("click","#v-pills-tab .nav-link-new",function(e){

            jQuery(".nav-link-new").removeClass("active"),jQuery(this).addClass("active");

            sliderIntiateOnClick(this,''+jQuery(this).attr("data-group-id-block")+'');

        });

        jQuery("p").each(function () {

            if ('Powered by <a href="https://www.whmcs.com/" target="_blank">WHMCompleteSolution</a>' == jQuery(this).html()) {

                var e = '<p class="completeSolution">' + jQuery(this).html() + "</p>";

				if(jQuery("#mainfooterhostx").length > 0){

					jQuery(this).remove(), jQuery(e).insertBefore("#mainfooterhostx");	

				}else{

					jQuery(this).remove(), jQuery(e).insertBefore("#copyRightHostx");

				}

            }

        });

    /**

     * Window Resizing && Scroll actions intialized

     */

        jQuery(window).on('load', function () {

            if(jQuery("#v-pills-tab").length > 0){

                var attributeGroups = jQuery("#v-pills-tab").find("a.nav-link-new").eq(0).attr('data-group-id-block');

                if (typeof attributeGroups !== 'undefined' && attributeGroups !== false) {

                    sliderIntiateOnClick(this,''+attributeGroups+'');

                }

            }

        })

        jQuery(window).resize(function(){

            if (jQuery(window).width() >= 980){  

                    jQuery(".navbar .dropdown-toggle").hover(function () {

                    jQuery(this).parent().toggleClass("show");

                    jQuery(this).parent().find(".dropdown-menu").toggleClass("show"); 

                });

                jQuery( ".navbar .dropdown-menu" ).mouseleave(function() {

                    jQuery(this).removeClass("show");  

                });

            } 

        });

		jQuery(window).on('load resize orientationchange', function () {

            homePageSliderUnIntialized(jQuery(window).width());

            homePagePricingMobileSlider(jQuery(window).width());

			if(jQuery(window).width() > 1024){

				var getCookiePrimaryBar = getCookieHostx('primarySideBarStatus');

				var getCookieSecondaryBar = getCookieHostx('secondarySideBarStatus');

				if (getCookiePrimaryBar == 'open' || getCookiePrimaryBar == ''){

					jQuery("#menu-sidebar-hostx").addClass("left-open-hostx");

				}

				if (getCookieSecondaryBar == 'open' || getCookieSecondaryBar == ''){

					jQuery("#menu-sidebar-hostx-sec").addClass("left-open-hostx-sec");

				}				

			}else{

				jQuery("#menu-sidebar-hostx").removeClass("left-open-hostx");

				jQuery("#menu-sidebar-hostx-sec").removeClass("left-open-hostx-sec");

				jQuery(".primary-menu-toggle").removeClass("change-primary");

				jQuery(".secondary-menu-toggle").removeClass("change-secondary");

				jQuery(document).on('click','.primary-menu-toggle',function(){

					if(jQuery(".secondary-menu-toggle").hasClass("change-secondary")){

						jQuery(".secondary-menu-toggle").removeClass("change-secondary");

						jQuery("#menu-sidebar-hostx-sec").removeClass("left-open-hostx-sec");

					}

				});

				jQuery(document).on('click','.secondary-menu-toggle',function(){

					if(jQuery(".primary-menu-toggle").hasClass("change-primary")){

						jQuery(".primary-menu-toggle").removeClass("change-primary");

						jQuery("#menu-sidebar-hostx").removeClass("left-open-hostx");

					}

				});

			}

		});

        jQuery(window).load(function() {

            jQuery('.nav.nav-pills li').each(function(){

                var $this = jQuery(this);

                var $this_v = $this.attr('class');

                var myString = 'open';

            });

            jQuery("li.nav-dropdown.active ul.nav-sub").show();

        });

        jQuery(window).scroll(function () {

            jQuery(window).scrollTop() > 100 ? jQuery("#wgs-toplink").fadeIn() : jQuery("#wgs-toplink").fadeOut();

        });

    /**

     * Client Area sidebar slider intiated promocode

     */

    if(jQuery('.side-bar-promo-iteams').length > 0){

        var promoHtmlCreation = '<div class="navigation-area-promo-slider">';

        jQuery('.side-bar-promo-iteams').each(function(){

            var classParticular = jQuery(this).attr('class').split(' ').pop();

            var getFolderNameData = classParticular.replace('panel-promo-', '');

            var fullPathMarketConnect = hostxImageLayoutMarketConnectPath+''+getFolderNameData+'/'+hostxLayoutActiveFolderName;

            var titleHeader = jQuery.trim(jQuery(this).find('.card-header').find('h3.card-title').text());

            var footerAnchorlink = jQuery(this).find('.card-footer').find('a').attr('href');

            var footerAnchorText = jQuery(this).find('.card-footer').find('a').text();

            var getBodytextContent = jQuery(this).find('.card-body').find('a').find('span').text();

            jQuery(this).remove();

            promoHtmlCreation += '<div class="main-image-slider '+classParticular+'"><div class="img-group-slider"><div class="slider-main-cross"><img src="'+fullPathMarketConnect+'/marketconnect-logo.png"></div></div><div class="content-img-slider"><h5>'+titleHeader+'</h5><p>'+getBodytextContent+'</p><a href="'+footerAnchorlink+'">'+footerAnchorText+'</a></div></div>';

        });

        promoHtmlCreation += '</div>';

        jQuery(".right-sidebar-whmcs-default .card-sidebar:last").after(promoHtmlCreation);

        jQuery(".navigation-area-promo-slider").slick({

            dots: true,

            infinite: true,

            slidesToShow: 1,

            slidesToScroll: 1,

            autoplay: true,

            autoplaySpeed: 2500,

            variableWidth: false,

            rtl:rtlHostx,

        });

    }

    /**

     * Side Menu Custom Hostx Child 

     **/

        if(jQuery("ul.hostx-side-nav-list").length > 0){

            jQuery(document).off("click","ul.hostx-side-nav-list li a").on("click","ul.hostx-side-nav-list li a", function(anc) {

                if(!jQuery("body").hasClass("side-bar-left-collapse")){

                    var currentNode = jQuery(this),

                    nextNode = currentNode.next();

                    if (nextNode.is(".parent-sub-nav") && nextNode.is(":visible")){

                        nextNode.slideUp();

                        nextNode.removeClass("nav-menu-open"); 

                        nextNode.parent("li").removeClass("active");

                    }else if (nextNode.is(".parent-sub-nav") && !nextNode.is(":visible")) {

                        var anotherUl = nextNode.parents("ul").first(),

                            parentUl = anotherUl.find("ul:visible").slideUp();

                            parentUl.removeClass("nav-menu-open");

                        var parentMainLi = nextNode.parent("li");

                        nextNode.slideDown();

                        nextNode.addClass("nav-menu-open"); 

                        anotherUl.find("li.active").removeClass("active");

                        parentMainLi.addClass("active");

                    }

                    nextNode.is(".parent-sub-nav") && anc.preventDefault();

                }

            });

        }

        jQuery(document).on('click','button.side-bar-toggle',function(){

            jQuery("body").toggleClass("sideBarCollapse");

            if(jQuery("body").hasClass("sideBarCollapse")){

                setCookieSideBarHostx('hostxLeftSideClosed','yes', 1);

            }else{

                setCookieSideBarHostx('hostxLeftSideClosed','no', 1);

            }

        });

        

    /**

     * Svg images extra space moved feature comented for now

     */



    /*

        jQuery('img.svg').each(function(){

            var $img = jQuery(this);

            var imgID = $img.attr('id');

            var imgClass = $img.attr('class');

            var imgURL = $img.attr('src');

            jQuery.get(imgURL, function(data) {

                var $svg = jQuery(data).find('svg');

                if(typeof imgID !== 'undefined') {

                    $svg = $svg.attr('id', imgID);

                }

                if(typeof imgClass !== 'undefined') {

                    $svg = $svg.attr('class', imgClass+' replaced-svg');

                }

                $svg = $svg.removeAttr('xmlns:a');

                if(!$svg.attr('viewBox') && $svg.attr('height') && $svg.attr('width')) {

                    $svg.attr('viewBox', '0 0 ' + $svg.attr('height') + ' ' + $svg.attr('width'))

                }

                $img.replaceWith($svg);

            }, 'xml');

        });

    */

}); 

/**

 * Mobile mega menu intiaization

 */

/**

 * All Function related to Hostx Theme

 */

function wgsDomainRegisterCall() {

    jQuery("#formSubMobileDomains").submit();

}

function wgsChangeBarClass(x) {

  x.classList.toggle("hostxchange");

}

function wgsChangeSideBarsClaas(obj,cls){

	if(cls == 'primary'){

		if(jQuery(obj).hasClass("fa-align-left")){

			jQuery(obj).removeClass("fa-align-left");

			jQuery(obj).addClass("fa-times");

		}else{

			jQuery(obj).removeClass("fa-times");

			jQuery(obj).addClass("fa-align-left");			

		}

		jQuery("#menu-sidebar-hostx-sec").removeClass("left-open-hostx-sec");

		jQuery("#menu-sidebar-hostx").toggleClass("left-open-hostx");

		if(jQuery("#rightSideBarIclass").hasClass("fa-times")){

			jQuery("#rightSideBarIclass").removeClass("fa-times");

			jQuery("#rightSideBarIclass").addClass("fa-align-right");			

		}

	}else{

		if(jQuery(obj).hasClass("fa-align-right")){

			jQuery(obj).removeClass("fa-align-right");

			jQuery(obj).addClass("fa-times");

		}else{

			jQuery(obj).removeClass("fa-times");

			jQuery(obj).addClass("fa-align-right");			

		}

		jQuery("#menu-sidebar-hostx").removeClass("left-open-hostx");

		jQuery("#menu-sidebar-hostx-sec").toggleClass("left-open-hostx-sec");

		if(jQuery("#leftPrimaryBarIclass").hasClass("fa-times")){

			jQuery("#leftPrimaryBarIclass").removeClass("fa-times");

			jQuery("#leftPrimaryBarIclass").addClass("fa-align-left");			

		}		

	}

}

function wgsChangeSideBarDesktop(obj,cls){

	if(cls == 'primary'){

		jQuery("#menu-sidebar-hostx").toggleClass("left-open-hostx");

		jQuery(".pimary-side-open-close-side").toggleClass("hidden");

		if(jQuery(obj).hasClass("fa-align-left")){

			setCookieSideBarHostx('primarySideBarStatus','open', 1);

		}else{

			setCookieSideBarHostx('primarySideBarStatus','close', 1);

		}

	}else{

		jQuery("#menu-sidebar-hostx-sec").toggleClass("left-open-hostx-sec");

		jQuery(".secondary-side-open-close-side").toggleClass("hidden");

		if(jQuery(obj).hasClass("fa-align-right")){

			setCookieSideBarHostx('secondarySideBarStatus','open', 1);

		}else{

			setCookieSideBarHostx('secondarySideBarStatus','close', 1);

		}

	}	

}

function wgsChangeSideBarNavigationsButtons(obj,cls){

	if(cls == 'primary'){

		jQuery("#menu-sidebar-hostx").toggleClass("left-open-hostx");

		if(jQuery(obj).hasClass("change-primary")){

			setCookieSideBarHostx('primarySideBarStatus','close', 1);

		}else{

			setCookieSideBarHostx('primarySideBarStatus','open', 1);			

		}

		jQuery(obj).toggleClass("change-primary");		

	}else{

		jQuery("#menu-sidebar-hostx-sec").toggleClass("left-open-hostx-sec");

		if(jQuery(obj).hasClass("change-secondary")){

			setCookieSideBarHostx('secondarySideBarStatus','close', 1);

		}else{

			setCookieSideBarHostx('secondarySideBarStatus','open', 1);			

		}

		jQuery(obj).toggleClass("change-secondary");

	}

}

function sliderIntiateOnClick(obj,activeId){

    if(parseInt(jQuery(window).width()) < 993){

        setTimeout(function() { 

            jQuery("#slickSliderHostingBlock-"+activeId).not('.slick-initialized').slick({

                dots: true,

                infinite: true,

                slidesToShow: 1,

                slidesToScroll: 1,

                //autoplay: true,

                //autoplaySpeed: 2000,

                variableWidth: false,

                rtl:rtlHostx,

             });

        }, 1000);

    }

}

function homePageSliderUnIntialized(windowWidth){

    if(parseInt(windowWidth) > 993){

        if(jQuery(".hx_webhosting_plans").length > 0){

            if(jQuery(".hx_webhosting_plans").hasClass('slick-initialized')){

                jQuery(".hx_webhosting_plans").slick('unslick');

            }

        }

    }

}

function homePagePricingMobileSlider(windWidth){

    if(jQuery(".home-page-pricing-style-1").length > 0){

        if(parseInt(windWidth) < 993){

            jQuery(".home-page-pricing-style-1").not('.slick-initialized').slick({

                dots: true,

                infinite: true,

                slidesToShow: 1,

                slidesToScroll: 1,

                variableWidth: false,

                rtl:rtlHostx,

             });

        }else if(parseInt(windWidth) > 993){

            if(jQuery(".home-page-pricing-style-1").hasClass('slick-initialized')){

                jQuery(".home-page-pricing-style-1").slick('destroy');

            }

        } 

    }

    if(jQuery(".home-page-pricing-style-2").length > 0){

        if(parseInt(windWidth) < 993){

            jQuery(".home-page-pricing-style-2").not('.slick-initialized').slick({

                dots: true,

                infinite: true,

                slidesToShow: 1,

                slidesToScroll: 1,

                variableWidth: false,

                rtl:rtlHostx,

             });

        }else if(parseInt(windWidth) > 993){

            if(jQuery(".home-page-pricing-style-2").hasClass('slick-initialized')){

                jQuery(".home-page-pricing-style-2").slick('destroy');

            }

        } 

    }

}

function toggleBillingTabsVps(obj,billcycle){

	jQuery("#changeBillingCycle li a").removeClass("active");

	jQuery(obj).addClass("active");

    jQuery(".blpr").hide(); 

	jQuery(".blpr." + billcycle).css("display", "inherit");	

}

function wgsSearchdomainAjax(obj){

	var btnTxt = jQuery(obj).text();

	jQuery(obj).html('<i class="fa fa-spinner fa-spin"></i>');

	jQuery("#loaderSerachBlock").removeClass("hidden");

	var tokenget = csrfToken;

	var domainName = jQuery("#domainnameAjax").val();

	if(jQuery.trim(domainName) == ''){

		jQuery("#domainnameAjax").focus();

		jQuery(obj).html('<i class="fa fa-search mr-2"></i>'+btnTxt);

		jQuery("#loaderSerachBlock").addClass("hidden");

	}else{

        if(hostxPriceV2TldSetting != 'on'){

            var tldlist = jQuery("#tldDropdownBlock").val();

            var fullDomainName = domainName+tldlist;

        }else{

            var fullDomainName = domainName; 

        }

		wgsCallAjaxDomainResult(tokenget,fullDomainName,'domain','register');

		wgsCallAjaxDomainResult(tokenget,fullDomainName,'suggestions','register');

		jQuery(obj).html('<i class="fa fa-search mr-2"></i>'+btnTxt);

	}

}

function wgsCallAjaxDomainResult(tokenget,fullDomainName,domaintype,domainresponseFor){

	jQuery("#domainTakenErrorDivsBlock").addClass("hidden");

	jQuery("tbody#domainSuggestionTable").html('');

	jQuery.ajax({

		type: "POST",

		url: 'index.php?rp=/domain/check',

		data:{

			'token':tokenget,

			'a':'checkDomain',

			'domain':fullDomainName,

			'type':domaintype,

		},

		success:function (data) {

			if(domaintype == 'domain'){

				var responseArray = createResponseArrayFromResult(data,domainresponseFor);

				if(responseArray.domainerror){

					var errorsn = '<p><div class="hx_domain"><div class="hx_domain-header"><h3><span><i class="fa fa-times"></i></span>'+responseArray.domainerror+'</h3></div></div>';

					jQuery("#domainErrorD").html('');

					jQuery("#domainErrorD").html(errorsn);

					jQuery("#domainErrorD").removeClass("hidden");

					jQuery('html, body').animate({

						scrollTop: jQuery("#domainErrorD").offset().top

					}, 1000);

					setTimeout(function() { 

						jQuery("#domainErrorD").addClass("hidden");

						jQuery("#domainErrorD").html('');	

					}, 5000);

					jQuery("#loaderSerachBlock").addClass("hidden");					

				}else if(responseArray.domainlegecystatus == 'available'){

					var availableDomain = '<tr class="hx_domain-available"><td class="hx_domaindata1"><p class="hx_domaintxt"><span><i class="fas fa-check"></i>'+responseArray.domainname+'</span> '+domainisavailable +'</p></td><td class="hx-table-price">'+responseArray.domainprice+'</td><td class="hx-table-noprice"><button class="add-to-cart-btn" onclick="wgsDomainAddToCartBlock(this,\''+responseArray.domainname+'\',\''+domainresponseFor+'\',\''+addCartButtonLang+'\');">'+addCartButtonLang+'</button><button class="add-to-cart-btn removeBtnCat hidden" onclick="redirectToViewPage(this);">'+checkoutButtonLang+'</button><button class="add-to-cart-btn addhostingbtn hidden" onclick="wgsAddHostingBtnTrigger(this);">'+orderHostingBtn+'</button></td></tr>';

					jQuery("tbody#domainSuggestionTable").html(availableDomain);

					jQuery("#loaderSerachBlock").addClass("hidden");

				}else{

					jQuery("p.unavail-msg").find("strong").html(responseArray.domainname);

					jQuery("#domainTakenErrorDivsBlock").removeClass("hidden");

				}

				functionIsRunning = true;

			}else if(domaintype == 'suggestions'){

					jQuery("#loaderSerachBlock").removeClass("hidden");

					var suggest = '';

					var counter = 0;

					if(domainSuggestionSeting == '' || domainSuggestionSeting == 0){

						var suggestionCounter = 5;

					}else{

						var suggestionCounter = parseInt(domainSuggestionSeting);

					}

					var classHidden = '';

					jQuery.each(data.result, function(t,n){

						if(counter < suggestionCounter){

							var priceGet = n['pricing'][1].register;

							suggest += '<tr class="'+classHidden+'"><td class="hx-table-extensions">'+n.domainName+'</td><td class="hx-table-price"> '+priceGet+'</td><td class="hx-table-noprice"><button class="add-to-cart-btn" onclick="wgsDomainAddToCartBlock(this,\''+n.domainName+'\',\''+domainresponseFor+'\',\''+addCartButtonLang+'\');">'+addCartButtonLang+'</button><button class="add-to-cart-btn removeBtnCat hidden" onclick="redirectToViewPage(this);">'+checkoutButtonLang+'</button><button class="add-to-cart-btn addhostingbtn hidden" onclick="wgsAddHostingBtnTrigger(this);">'+orderHostingBtn+'</button></td></tr>';

						}

						counter = counter+1;

					});

					setTimeout(function() {

						if(jQuery("tbody#domainSuggestionTable tr:first").length >0 ){

							jQuery("tbody#domainSuggestionTable tr:first").after(suggest);

						}else{

							jQuery("tbody#domainSuggestionTable").html(suggest);

						}

						jQuery("#loaderSerachBlock").addClass("hidden");

					}, 1000);

			}

		},                                 		         

	});

}

function createResponseArrayFromResult(domainArr,domainType){

	var decodeJsons = jQuery.parseJSON(JSON.stringify(domainArr));

	var domainParams = {};

	if(decodeJsons.result['error']){

		domainParams["domainerror"] = decodeJsons.result['error'];

	}else if(decodeJsons.result[0].preferredTLDNotAvailable){

		domainParams["domainerror"] = preferTldError;

	}else{

		var jsonDecodeRes = decodeJsons.result[0];

		var domainStatus = jsonDecodeRes.isAvailable;

		var domainName = jsonDecodeRes.domainName;

		var lagecyStatus = jsonDecodeRes.legacyStatus;

		if (jsonDecodeRes['pricing'][1]){

			var domainPriceRaw = jsonDecodeRes['pricing'][1].register;

		}else if(jsonDecodeRes['pricing'][2]){

			var domainPriceRaw = jsonDecodeRes['pricing'][2].register;

		}else if(jsonDecodeRes['pricing'][3]){

			var domainPriceRaw = jsonDecodeRes['pricing'][3].register;

		}else if(jsonDecodeRes['pricing'][4]){

			var domainPriceRaw = jsonDecodeRes['pricing'][4].register;

		}else if(jsonDecodeRes['pricing'][5]){

			var domainPriceRaw = jsonDecodeRes['pricing'][5].register;

		}else if(jsonDecodeRes['pricing'][6]){

			var domainPriceRaw = jsonDecodeRes['pricing'][6].register;

		}else if(jsonDecodeRes['pricing'][7]){

			var domainPriceRaw = jsonDecodeRes['pricing'][7].register;

		}else if(jsonDecodeRes['pricing'][8]){

			var domainPriceRaw = jsonDecodeRes['pricing'][8].register;

		}else if(jsonDecodeRes['pricing'][9]){

			var domainPriceRaw = jsonDecodeRes['pricing'][9].register;

		}else if(jsonDecodeRes['pricing'][10]){

			var domainPriceRaw = jsonDecodeRes['pricing'][10].register;

		}

		domainParams["domainname"] = domainName;

		domainParams["domainprice"] = domainPriceRaw;

		domainParams["domainstatus"] = domainStatus;

		domainParams["domainlegecystatus"] = lagecyStatus;

	}

	return domainParams;

}

function wgsDomainAddToCartBlock(obj,dname,type,btntxt){

	jQuery(obj).html(btntxt + ' <i class="fa fa-spinner fa-spin"></i>');

	var period = 1;

	jQuery.ajax({

		type: "POST",

		url: "cart.php?a=add&ajax=1",

		data:{

			'actionBlockAddDomain':'callAjaxMethod',

			'methodBlockName':'addDomainToCart',

			'domain':dname,

			'type':type,

			'period':period,

		},

		success:function (data) {

			if(data == 0){

				jQuery("#domainErrorD").html('<div class="hx_domain"><div class="hx_domain-header"><h3><span><i class="fa fa-times"></i></span>'+domainAlreadyInCart+'</h3></div></div>');

				jQuery("#domainErrorD").removeClass("hidden");

				jQuery(obj).html(btntxt);

				jQuery(obj).attr('disabled', false);

				jQuery('html, body').animate({

					scrollTop: jQuery("#domainErrorD").offset().top

				}, 1000);

				setTimeout(function() { 

                    jQuery("#domainErrorD").addClass("hidden");

					jQuery("#domainErrorD").html('');	

                }, 5000); 

			}else{

				jQuery(obj).addClass("hidden");

				jQuery(obj).next("button").removeClass("hidden");

				jQuery(obj).next().next("button").removeClass("hidden");

				jQuery(obj).html(btntxt);

				jQuery(obj).attr('disabled', false);

			}

		},                                 		         

	});

}

function redirectToViewPage(obj){

	window.location.href= 'cart.php?a=view';

}

function wgsAddHostingBtnTrigger(obj){

	jQuery(".nav-link-new").eq(1).click();

}

function wgsReviewReadMore(obj){

	var modalBodyHtml = jQuery(obj).parent().next(".reviewData").html();

	jQuery("#exampleModalLongContent").find(".modal-body").html(modalBodyHtml);

	jQuery("#exampleModalLongContent").modal("show");

}

function wgsAddHomePageProduct(obj,pid){

	jQuery.ajax({

		type: "POST",

		url: "cart.php?a=add&ajax=1",

		data:{

			'actionBlockProducts':'callAjaxMethod',

			'methodBlockName':'addProductDomainToCart',

			'pid':pid,

		},

		success:function (data) {

			if(data == 1){

				window.location.href= 'cart.php?a=view';

			}else{

				window.location.href= 'cart.php?a=add&pid='+pid;

			}

		},                                 		         

	});	

}

function setCookieSideBarHostx(cname, cvalue, exdays) {

	var d = new Date();

	d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));

	var expires = "expires=" + d.toUTCString();

	document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";

}

function getCookieHostx(cname) {

	var name = cname + "=";

	var decodedCookie = decodeURIComponent(document.cookie);

	var ca = decodedCookie.split(';');

	for (var i = 0; i < ca.length; i++) {

		var c = ca[i];

		while (c.charAt(0) == ' ') {

			c = c.substring(1);

		}

		if (c.indexOf(name) == 0) {

			return c.substring(name.length, c.length);

		}

	}

	return "";

}

function deleteCookieHostx(cname) {

	document.cookie = cname + '=0;expires=Thu, 01 Jan 1970 00:00:01 GMT;';

}

function toggleBillingTabsVpsLatest(obj,dataShow){

	jQuery("#billingcycle-tabs-block p").removeClass("active");

	jQuery(obj).addClass("active");

    jQuery(".btn-cnfgr").hide(); 

	jQuery(".btn-cnfgr." + dataShow).css("display", "inherit");	

}

function wgsAccordianStyleList(obj,ParentId,triggerId){

    if(jQuery('#'+ParentId).find('#'+triggerId).hasClass('show')){

        jQuery('#'+ParentId).find('#'+triggerId).removeClass('show');

        jQuery(obj).parent().removeClass('accordian-active');

    }else{

        jQuery('#'+ParentId).find('.card').removeClass('accordian-active');

        jQuery('#'+ParentId).find('.collapse').removeClass('show');

        jQuery('#'+ParentId).find('#'+triggerId).addClass('show');

        jQuery(obj).parent().addClass('accordian-active');

    }

}

