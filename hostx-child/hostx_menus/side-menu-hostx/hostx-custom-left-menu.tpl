{foreach $sidebarLinksHostx as $sidebarLink}
	<li class="parent-nav {if $sidebarLink->submenus|@count gt 0}has-dropdown{/if}">
		<a href="{if $sidebarLink->submenus|@count gt 0}#{else}{if $sidebarLink->is_third_party  eq '1'}{$sidebarLink->url}{else}{$WEB_ROOT}{if $sidebarLink->url|substr:0:1 neq '/'}/{/if}{$sidebarLink->url}{/if} {/if}" target="{if $sidebarLink->open_new_tab eq '1'}_blank{else}_self{/if}" class="{if $sidebarLink->activeClass}active{/if} {if $sidebarLink->class neq ''}{$sidebarLink->class}{/if}" {if $sidebarLink->submenus|@count gt 0} onclick="return false;" {/if}>
			{if $sidebarLink->icon neq ''}<i class="{$sidebarLink->icon} lficnmn"></i>{/if}
			<span class="parent-nav-menu-name">{$sidebarLink->name}</span>
			{if $sidebarLink->submenus|@count gt 0}<span class="caret"></span>{/if}
		</a>
		{if $sidebarLink->submenus|@count gt 0}
			<ul class="parent-sub-nav">
				{foreach $sidebarLink->submenus as $submenusLink}
					<li>
						<a href="{if $submenusLink->is_third_party eq '1'}{$submenusLink->url}{else}{$WEB_ROOT}{if $submenusLink->url|substr:0:1 neq '/'}/{/if}{$submenusLink->url}{/if}" class="{if $submenusLink->activeClass}active{/if}" target="{if $submenusLink->open_new_tab eq '1'}_blank{else}_self{/if}" class="{if $submenusLink->class neq ''}{$submenusLink->class}{/if}">
							{if $submenusLink->icon neq ''}
								<i class="{$submenusLink->icon}"></i>
							{/if}
							{$submenusLink->name}
						</a>
					</li>					
				{/foreach}
			</ul>
		{/if}		
	</li>
{/foreach}
<script>
	jQuery(document).ready(function(){
		setTimeout(function(){
			jQuery(".parent-nav.has-dropdown").find(".parent-sub-nav").find("li").each(function(){
				if(jQuery(this).find("a").hasClass("active")){
					jQuery(this).addClass("parent-list-active");
					jQuery(this).parent().parent().children('a:first-child').trigger('click');
				}
			});
		}, 350);
	});
</script>