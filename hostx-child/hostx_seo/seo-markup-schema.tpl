{if $schemaMarkupHostx}
    {foreach $schemaMarkupHostx as $schemaMarkupHostxObj}
        {$schemaMarkupHostxObj|html_entity_decode}
    {/foreach}
{/if}