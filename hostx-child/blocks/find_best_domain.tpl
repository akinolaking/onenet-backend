<div class="domain-block-home find_best_domain_block p-vertical">
    <div class="container">
      <div class="row">
        <div class="col-md-7">
         <div class="domain-block-content">
           <h2>{$LANG.domainBlockFindDomain}</h2>
           <form action="domainchecker.php" method="post">
        	<input type="hidden" name="register">
             <div class="domain-search-frm">
               <div class="domain-block-search">
                <div class="domain-block-inner">
                {if $showAdvancedSearchOptions}
                <input type="text" class="domain-b-search" name="message" placeholder="{$LANG.domainBlockPlaceHolder}">
                {else}
                  {* <input type="text" class="domain-b-search" name="domain" placeholder="{$LANG.domainBlockPlaceHolder}"> *}
                  <input type="text" class="domain-b-search" name="message" placeholder="{$LANG.domainBlockPlaceHolder}">
                {/if}
                </div>
                <input type="submit" class="btn" value="{$LANG.domainsearch}">   
              </div>
             </div>
             </form>
         </div>
        </div>
        <div class="col-md-7">
          <div class="domain-block-tld">
            <ul class="domain-block-tld-price">
                {foreach from=$tld_data['show_on_home']  item=sale_item}
                  <li class="block-{$sale_item->tld_id|replace:'.':'-'}"><strong><span>.</span>{$sale_item->tld_id}</strong><p>{$sale_item->register}</p></li>
                {/foreach}
            </ul>
          </div>
        </div>
      </div>
    </div>
 </div>