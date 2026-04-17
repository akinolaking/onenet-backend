{foreach $navbar as $item}
    <li menuItemName="{$item->getName()}" class="{if !isset($rightDrop) || !$rightDrop}parent-nav{/if} {if $item@first} no-collapse{/if}{if $item->hasChildren()} has-dropdown{/if}{if $item->getClass()} {$item->getClass()}{/if}" id="{$item->getId()}">
        <a {if $item->hasChildren() && isset($rightDrop) || $rightDrop} class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#"{else} href="{$item->getUri()}"{/if}{if $item->getAttribute('target')} target="{$item->getAttribute('target')}"{/if} {if !isset($rightDrop) || !$rightDrop}{if $item->hasChildren() && !$item@first}onclick="return false;"{/if}{/if}>
            {if $item->hasIcon()}<i class="{$item->getIcon()}"></i>&nbsp;{else}{if !isset($rightDrop) || !$rightDrop}{if isset($sideMenuWhmcsDefaultIcons[$item->getName()])}<i class="{$sideMenuWhmcsDefaultIcons[$item->getName()]}"></i>&nbsp;{else}<i class="fas fa-th-large"></i>&nbsp;{/if}{/if}{/if}
            {if !isset($rightDrop) || !$rightDrop}
                <span class="parent-nav-menu-name">{$item->getLabel()}</span>
                {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
                {if $item->hasChildren()}<span class="caret"></span>{/if}
            {else}
                {$item->getLabel()}
                {if $item->hasBadge()}&nbsp;<span class="badge">{$item->getBadge()}</span>{/if}
            {/if} 
        </a>
        {if $item->hasChildren()}
            <ul class="{if isset($rightDrop) && $rightDrop}dropdown-menu dropdown-menu-right{else}parent-sub-nav{/if}">
            {foreach $item->getChildren() as $childItem}
                {if $childItem->getClass() && in_array($childItem->getClass(), ['dropdown-divider', 'nav-divider'])}
                    {if isset($rightDrop) || $rightDrop}<div class="dropdown-divider"></div>{/if}
                {else}
                    <li menuItemName="{$childItem->getName()}" class="{if isset($rightDrop) || $rightDrop}dropdown-item{/if}{if $childItem->getClass()} {$childItem->getClass()}"{/if} id="{$childItem->getId()}">
                        <a href="{$childItem->getUri()}" class="{if isset($rightDrop) || $rightDrop}dropdown-item px-2 py-0{/if}"{if $childItem->getAttribute('target')} target="{$childItem->getAttribute('target')}"{/if}>
                            {if $childItem->hasIcon()}<i class="{$childItem->getIcon()}"></i>&nbsp;{else}{if !isset($rightDrop) || !$rightDrop}{if isset($sideMenuWhmcsDefaultIcons[$childItem->getName()])}<i class="{$sideMenuWhmcsDefaultIcons[$childItem->getName()]}"></i>&nbsp;{else}<i class="fas fa-th-large"></i>{/if}{/if}{/if}
                            {$childItem->getLabel()}
                            {if $childItem->hasBadge()}&nbsp;<span class="badge">{$childItem->getBadge()}</span>{/if}
                        </a>
                    </li>
                {/if}
            {/foreach}
            </ul>
        {/if}
    </li>
{/foreach}
{if !isset($rightDrop) || !$rightDrop}
    <li class="d-none dropdown collapsable-dropdown">
        <a class="dropdown-toggle" href="#" id="navbarDropdownMenu" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            {lang key='more'}
        </a>
        <ul class="collapsable-dropdown-menu dropdown-menu" aria-labelledby="navbarDropdownMenu">
        </ul>
    </li>
{/if}
