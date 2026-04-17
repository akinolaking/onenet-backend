<div class="category-heading-section-cart">
    <div class="heading-sec-cart"><h3>{$breadcrumb[{count($breadcrumb)-1}]['label']}</h3></div>
    {if $allowDomainRegister eq 'on' || $allowDomainTransfer eq 'on'}
        <div class="button-sec-cart">
            {if $allowDomainRegister eq 'on'}
                <a href="{$WEB_ROOT}/cart.php?a=add&domain=register">{lang key='domain_register_cart'}</a>
            {/if}
            {if $allowDomainTransfer eq 'on'}
                <a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer">{lang key='domain_transfer_cart'}</a>
            {/if}
        </div>
    {/if}
</div>
<div class="product-category-list-hostx {if $totalNoOffProductGroups gt 5}w-hidden{else}noProductCategorySlider{/if}" id="product-group-category">
    {foreach $groupCats as $child}
        <div class="col-md-3 {if $child->id == $gid || $child->id == $productinfo.gid}product-group-active-hostx{/if}">
            <div class="inner-sec-category-product">
                <a href="{$WEB_ROOT}/cart.php?gid={$child->id}">
                    <div class="group-content-section">
                        <img src="{$WEB_ROOT}/templates/{$template}/caticons/{$child->icon}" alt="{$child->icon}">
                        <h5>{$child->name}</h5>
                    </div>
                </a>
            </div>
        </div>
    {/foreach}
</div>
{if $totalNoOffProductGroups gt 5}
    <script type="text/javascript">
        jQuery(document).on('ready', function() {
            jQuery("#product-group-category").removeClass('w-hidden');
            jQuery("#product-group-category").slick({
                dots: false,
                infinite: true,
                slidesToShow: 5,
                slidesToScroll: 5,
                autoplay: false,
                autoplaySpeed: 2000,
                variableWidth: false,
                rtl: rtlHostx, 
                responsive: [
                    {
                        breakpoint: 1024,
                        settings: {
                            slidesToShow: 5,
                            slidesToScroll: 5,
                        }
                    },
                    {
                        breakpoint: 991,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll: 3
                        }
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1
                        }
                    },
                    {
                        breakpoint: 280,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1
                        }
                    }
                ]
                });
        });
    </script>    
{/if}