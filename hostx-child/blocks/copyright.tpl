{if $hostx_blocks['copyright']}
<div class="copyright" id="copyRightHostx">
    {eval var=$hostx_blocks['copyright']->description}
</div>
{else}
<div class="copyright" id="copyRightHostx">
    &copy; {$date_year} {$companyname}. <a href="{$WEB_ROOT}/privacy-policy.php">{$LANG.footerprivacypolicy}</a>&nbsp;&nbsp;&nbsp;<a href="{$WEB_ROOT}/about-us.php">{$LANG.aboutPageTitle}</a>
</div> 
{/if}