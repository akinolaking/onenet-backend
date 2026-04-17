{foreach $seodata->page_blocks as $block_slug}
    {assign var="filename" value=$block_layouts.{$block_slug}}
    {include file="./blocks/$filename.tpl"}
{/foreach}