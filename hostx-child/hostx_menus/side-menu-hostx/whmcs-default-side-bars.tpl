{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren()) && $templatefile != 'clientregister'}
    <div class="col-lg-3 col-xl-2">
        <div class="hostx-child-right-side-bar">
            <div class="sidebar right-sidebar-whmcs-default">
                {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
            </div>
        </div>
    </div>
{/if}