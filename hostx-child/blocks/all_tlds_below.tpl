<div class="tlds all-tld-below p-vertical">
    <div class="container">
      <div class="top text-center mb-5">
        <h2 class="color-white">{$LANG.domainchecktld}</h2>
        <p class="color-white">{$LANG.domainchecktldtext}</p>
      </div>
      <div class="clearfix"></div>
      <div class="row">
        <div class="{if $tld_data['tld_for_new']}col-sm-4{else}col-sm-5 offset-sm-1{/if}">  
          <div class="left">
            <table>
              <tr>
                <th>{$LANG.headerdomainsale}</th>
                <th class="text-center">{$LANG.domainfreeemailsale}</th> 
                <th class="text-right">{$LANG.domainprice} / {$LANG.domainyear}</th>
              </tr>
              {foreach from=$tld_data['tld_for_sale']  item=sale_item}
              <tr>
                <td><span>
                   <p class="rotate"> {$LANG.domainCheckerSalesGroup.sale} </p>
                  </span>
                  <h6>.{$sale_item->tld_id}</h6></td>
                <td class="text-center">
                  <img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/check.svg" class="svg" alt="check icon">

                </td> 
                <td class="text-right"><h6>{$sale_item->register}</h6><small>{$LANG.domainrenewalprice} {$sale_item->renew}</small></td>
              </tr>
              {/foreach}
            </table>
          </div>
        </div>
        <div class="{if $tld_data['tld_for_new']}col-sm-4{else}col-sm-5{/if}">  
          <div class="left">
            <table>
              <tr>
                <th>{$LANG.headerdomainhot}</th>
                <th class="text-center">{$LANG.domainfreeemailhot}</th> 
                <th class="text-right">{$LANG.domainprice} / {$LANG.domainyear}</th>
              </tr>
              {foreach from=$tld_data['hot_tld_for_sale']  item=hot_item}
              <tr>
                <td><span class="hot"> <p class="rotate"> {$LANG.domainCheckerSalesGroup.hot} </p> </span><h6>.{$hot_item->tld_id}</h6></td>
                <td class="text-center"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/check.svg" class="svg" alt="check icon"></td> 
                <td class="text-right"><h6>{$hot_item->register}</h6><small>{$LANG.domainrenewalprice} {$hot_item->renew}</small></td>
              </tr>
              {/foreach}
            </table>
          </div>
        </div>
		{if $tld_data['tld_for_new']}
			<div class="col-sm-4">  
			  <div class="left">
				<table>
				  <tr>
					<th>{$LANG.headerdomainnew}</th>
					<th class="text-center">{$LANG.domainfreeemailnew}</th> 
					<th class="text-right">{$LANG.domainprice} / {$LANG.domainyear}</th>
				  </tr>
				  {foreach from=$tld_data['tld_for_new']  item=new_item}
				  <tr>
					<td><span class="new"> <p class="rotate"> {$LANG.domainCheckerSalesGroup.new} </p> </span><h6>.{$new_item->tld_id}</h6></td>
					<td class="text-center"><img src="{$WEB_ROOT}/templates/{$template}/images/{$layoutStyle}/check.svg" class="svg" alt="check icon"></td> 
					<td class="text-right"><h6>{$new_item->register}</h6><small>{$LANG.domainrenewalprice} {$new_item->renew}</small></td>
				  </tr>
				  {/foreach}
				</table>
			  </div>
			</div>
		{/if}
      </div>
    </div>
</div>