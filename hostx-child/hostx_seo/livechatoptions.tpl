{if $hostx_theme_settings.enable_live_chat_hostx eq 'on'}
	{eval var=$hostx_theme_settings.live_chat_id|html_entity_decode:$smarty.const.ENT_QUOTES:'utf-8'}
{/if}