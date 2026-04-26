{include file="orderforms/{$carttpl}/common.tpl"}
<script>
var _localLang = {
    'addToCart': '{$LANG.orderForm.addToCart|escape}',
    'addedToCartRemove': '{$LANG.orderForm.addedToCartRemove|escape}'
}
</script>

<div id="order-standard_cart" class="hostx-cart-body-section">
    {include file="orderforms/{$carttpl}/product-group-list.tpl"}

    <div class="on-cfg-wrap">
        <form id="frmConfigureProduct">
            <input type="hidden" name="configure" value="true" />
            <input type="hidden" name="i" value="{$i}" />

            <!-- ── MAIN COLUMN ─────────────────────────────── -->
            <div class="on-cfg-main">

                <!-- Added to cart + product name -->
                <div class="on-cfg-product-header">
                    <span class="on-added-badge">
                        <svg width="12" height="12" viewBox="0 0 12 12" fill="none" aria-hidden="true"><path d="M1.5 6L4.5 9L10.5 3" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg>
                        Added to cart
                    </span>
                    <p class="on-product-name">{$productinfo.name}</p>
                </div>

                <div class="alert alert-danger w-hidden" role="alert" id="containerProductValidationErrors">
                    <p>{$LANG.orderForm.correctErrors}:</p>
                    <ul id="containerProductValidationErrorsList"></ul>
                </div>

                <!-- Customize your plan heading -->
                <h1 class="on-cfg-h1">Customize your plan</h1>
                {if $productinfo.shortdescription}
                    <p class="on-cfg-short-desc">{$productinfo.shortdescription}</p>
                {/if}

                <!-- ── TERM LENGTH — GoDaddy-style selected card ──── -->
                {if $pricing.type eq "recurring"}
                <div class="on-cfg-section">
                    <p class="on-section-label">Select term length</p>
                    <p class="on-section-sub">Lock in your savings with a multi-year term length.</p>

                    <div class="on-term-dropdown" data-term-dropdown>
                        <select name="billingcycle" id="inputBillingcycle" class="on-term-select" actionCall="{if $configurableoptions}{$i}{else}callHostxCartSummary{/if}" onchange="recalctotals()" aria-hidden="true" tabindex="-1">
                            {if $pricing.monthly}<option value="monthly"{if $billingcycle eq "monthly"} selected{/if}>1 month</option>{/if}
                            {if $pricing.quarterly}<option value="quarterly"{if $billingcycle eq "quarterly"} selected{/if}>3 months</option>{/if}
                            {if $pricing.semiannually}<option value="semiannually"{if $billingcycle eq "semiannually"} selected{/if}>6 months</option>{/if}
                            {if $pricing.annually}<option value="annually"{if $billingcycle eq "annually"} selected{/if}>12 months</option>{/if}
                            {if $pricing.biennially}<option value="biennially"{if $billingcycle eq "biennially"} selected{/if}>24 months</option>{/if}
                            {if $pricing.triennially}<option value="triennially"{if $billingcycle eq "triennially"} selected{/if}>36 months</option>{/if}
                        </select>
                        <button type="button" class="on-term-trigger" aria-haspopup="listbox" aria-expanded="false">
                            <span class="on-term-card-left">
                                {if $billingcycle eq "annually" || $billingcycle eq "biennially" || $billingcycle eq "triennially"}<span class="on-term-save">Save</span>{/if}
                                <span class="on-term-name" data-term-current-name>
                                    {if $billingcycle eq "monthly"}1 month
                                    {elseif $billingcycle eq "quarterly"}3 months
                                    {elseif $billingcycle eq "semiannually"}6 months
                                    {elseif $billingcycle eq "biennially"}24 months
                                    {elseif $billingcycle eq "triennially"}36 months
                                    {else}12 months{/if}
                                </span>
                            </span>
                            <span class="on-term-card-right">
                                <span class="on-term-price" data-term-current-price>
                                    {$pricing.minprice.price->format('{PREFIX}')}
                                    {if $billingcycle eq "monthly"}{$pricing.rawpricing.monthly}
                                    {elseif $billingcycle eq "quarterly"}{$pricing.rawpricing.quarterly}
                                    {elseif $billingcycle eq "semiannually"}{$pricing.rawpricing.semiannually}
                                    {elseif $billingcycle eq "biennially"}{$pricing.rawpricing.biennially}
                                    {elseif $billingcycle eq "triennially"}{$pricing.rawpricing.triennially}
                                    {else}{$pricing.rawpricing.annually}{/if}
                                    {$pricing.minprice.price->format('{SUFFIX}')}<span class="on-term-mo">/mo</span>
                                </span>
                                <span class="on-term-total" data-term-current-total>
                                    You pay {$pricing.minprice.price->format('{PREFIX}')}
                                    {if $billingcycle eq "monthly"}{$pricing.rawpricing.monthly}
                                    {elseif $billingcycle eq "quarterly"}{$pricing.rawpricing.quarterly}
                                    {elseif $billingcycle eq "semiannually"}{$pricing.rawpricing.semiannually}
                                    {elseif $billingcycle eq "biennially"}{$pricing.rawpricing.biennially}
                                    {elseif $billingcycle eq "triennially"}{$pricing.rawpricing.triennially}
                                    {else}{$pricing.rawpricing.annually}{/if}
                                    {$pricing.minprice.price->format('{SUFFIX}')} today
                                </span>
                            </span>
                            <span class="on-term-chevron" aria-hidden="true">
                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none"><path d="M4.5 7l4.5 4 4.5-4" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg>
                            </span>
                        </button>
                        <div class="on-term-menu" role="listbox" aria-label="Select term length">
                            {if $pricing.monthly}
                            <button type="button" class="on-term-option {if $billingcycle eq 'monthly'}is-selected{/if}" role="option" aria-selected="{if $billingcycle eq 'monthly'}true{else}false{/if}" data-cycle="monthly" data-name="1 month" data-price="{$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.monthly}{$pricing.minprice.price->format('{SUFFIX}')}" data-total="You pay {$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.monthly}{$pricing.minprice.price->format('{SUFFIX}')} today">
                                <span class="on-term-card-left"><span class="on-term-name">1 month</span></span>
                                <span class="on-term-card-right"><span class="on-term-price">{$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.monthly}{$pricing.minprice.price->format('{SUFFIX}')}<span class="on-term-mo">/mo</span></span><span class="on-term-total">You pay {$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.monthly}{$pricing.minprice.price->format('{SUFFIX}')} today</span></span>
                                <span class="on-term-check" aria-hidden="true"><svg width="18" height="18" viewBox="0 0 18 18" fill="none"><circle cx="9" cy="9" r="9" fill="#0f0f1a"/><path d="M5 9l3 3 5-5" stroke="#fff" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg></span>
                            </button>
                            {/if}
                            {if $pricing.annually}
                            <button type="button" class="on-term-option {if $billingcycle eq 'annually'}is-selected{/if}" role="option" aria-selected="{if $billingcycle eq 'annually'}true{else}false{/if}" data-cycle="annually" data-name="12 months" data-price="{$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.annually}{$pricing.minprice.price->format('{SUFFIX}')}" data-total="You pay {$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.annually}{$pricing.minprice.price->format('{SUFFIX}')} today">
                                <span class="on-term-card-left"><span class="on-term-save">Save</span><span class="on-term-name">12 months</span></span>
                                <span class="on-term-card-right"><span class="on-term-price">{$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.annually}{$pricing.minprice.price->format('{SUFFIX}')}<span class="on-term-mo">/mo</span></span><span class="on-term-total">You pay {$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.annually}{$pricing.minprice.price->format('{SUFFIX}')} today</span></span>
                                <span class="on-term-check" aria-hidden="true"><svg width="18" height="18" viewBox="0 0 18 18" fill="none"><circle cx="9" cy="9" r="9" fill="#0f0f1a"/><path d="M5 9l3 3 5-5" stroke="#fff" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg></span>
                            </button>
                            {/if}
                            {if $pricing.biennially}
                            <button type="button" class="on-term-option {if $billingcycle eq 'biennially'}is-selected{/if}" role="option" aria-selected="{if $billingcycle eq 'biennially'}true{else}false{/if}" data-cycle="biennially" data-name="24 months" data-price="{$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.biennially}{$pricing.minprice.price->format('{SUFFIX}')}" data-total="You pay {$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.biennially}{$pricing.minprice.price->format('{SUFFIX}')} today">
                                <span class="on-term-card-left"><span class="on-term-save">Save</span><span class="on-term-name">24 months</span></span>
                                <span class="on-term-card-right"><span class="on-term-price">{$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.biennially}{$pricing.minprice.price->format('{SUFFIX}')}<span class="on-term-mo">/mo</span></span><span class="on-term-total">You pay {$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.biennially}{$pricing.minprice.price->format('{SUFFIX}')} today</span></span>
                                <span class="on-term-check" aria-hidden="true"><svg width="18" height="18" viewBox="0 0 18 18" fill="none"><circle cx="9" cy="9" r="9" fill="#0f0f1a"/><path d="M5 9l3 3 5-5" stroke="#fff" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg></span>
                            </button>
                            {/if}
                            {if $pricing.triennially}
                            <button type="button" class="on-term-option {if $billingcycle eq 'triennially'}is-selected{/if}" role="option" aria-selected="{if $billingcycle eq 'triennially'}true{else}false{/if}" data-cycle="triennially" data-name="36 months" data-price="{$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.triennially}{$pricing.minprice.price->format('{SUFFIX}')}" data-total="You pay {$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.triennially}{$pricing.minprice.price->format('{SUFFIX}')} today">
                                <span class="on-term-card-left"><span class="on-term-save">Save</span><span class="on-term-name">36 months</span></span>
                                <span class="on-term-card-right"><span class="on-term-price">{$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.triennially}{$pricing.minprice.price->format('{SUFFIX}')}<span class="on-term-mo">/mo</span></span><span class="on-term-total">You pay {$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.triennially}{$pricing.minprice.price->format('{SUFFIX}')} today</span></span>
                                <span class="on-term-check" aria-hidden="true"><svg width="18" height="18" viewBox="0 0 18 18" fill="none"><circle cx="9" cy="9" r="9" fill="#0f0f1a"/><path d="M5 9l3 3 5-5" stroke="#fff" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg></span>
                            </button>
                            {/if}
                            {if $pricing.quarterly}
                            <button type="button" class="on-term-option {if $billingcycle eq 'quarterly'}is-selected{/if}" role="option" aria-selected="{if $billingcycle eq 'quarterly'}true{else}false{/if}" data-cycle="quarterly" data-name="3 months" data-price="{$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.quarterly}{$pricing.minprice.price->format('{SUFFIX}')}" data-total="You pay {$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.quarterly}{$pricing.minprice.price->format('{SUFFIX}')} today">
                                <span class="on-term-card-left"><span class="on-term-name">3 months</span></span>
                                <span class="on-term-card-right"><span class="on-term-price">{$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.quarterly}{$pricing.minprice.price->format('{SUFFIX}')}<span class="on-term-mo">/mo</span></span><span class="on-term-total">You pay {$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.quarterly}{$pricing.minprice.price->format('{SUFFIX}')} today</span></span>
                                <span class="on-term-check" aria-hidden="true"><svg width="18" height="18" viewBox="0 0 18 18" fill="none"><circle cx="9" cy="9" r="9" fill="#0f0f1a"/><path d="M5 9l3 3 5-5" stroke="#fff" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg></span>
                            </button>
                            {/if}
                            {if $pricing.semiannually}
                            <button type="button" class="on-term-option {if $billingcycle eq 'semiannually'}is-selected{/if}" role="option" aria-selected="{if $billingcycle eq 'semiannually'}true{else}false{/if}" data-cycle="semiannually" data-name="6 months" data-price="{$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.semiannually}{$pricing.minprice.price->format('{SUFFIX}')}" data-total="You pay {$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.semiannually}{$pricing.minprice.price->format('{SUFFIX}')} today">
                                <span class="on-term-card-left"><span class="on-term-name">6 months</span></span>
                                <span class="on-term-card-right"><span class="on-term-price">{$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.semiannually}{$pricing.minprice.price->format('{SUFFIX}')}<span class="on-term-mo">/mo</span></span><span class="on-term-total">You pay {$pricing.minprice.price->format('{PREFIX}')}{$pricing.rawpricing.semiannually}{$pricing.minprice.price->format('{SUFFIX}')} today</span></span>
                                <span class="on-term-check" aria-hidden="true"><svg width="18" height="18" viewBox="0 0 18 18" fill="none"><circle cx="9" cy="9" r="9" fill="#0f0f1a"/><path d="M5 9l3 3 5-5" stroke="#fff" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round"/></svg></span>
                            </button>
                            {/if}
                        </div>
                    </div>
                </div>
                {/if}

                {assign var=onProductNameLower value=$productinfo.name|lower}
                {assign var=onServiceName value="service"}
                {if $productinfo.type eq "server"}
                    {assign var=onServiceName value="server"}
                {elseif $onProductNameLower|strstr:"wordpress" || $onProductNameLower|strstr:"wp "}
                    {assign var=onServiceName value="WordPress site"}
                {elseif $onProductNameLower|strstr:"reseller" || $onProductNameLower|strstr:"rsl"}
                    {assign var=onServiceName value="reseller service"}
                {elseif $onProductNameLower|strstr:"vps" || $onProductNameLower|strstr:"dedicated" || $onProductNameLower|strstr:"cloud"}
                    {assign var=onServiceName value="server"}
                {elseif $onProductNameLower|strstr:"email" || $onProductNameLower|strstr:"mail"}
                    {assign var=onServiceName value="email service"}
                {elseif $onProductNameLower|strstr:"web"}
                    {assign var=onServiceName value="web hosting service"}
                {/if}

                <!-- ── CONFIGURABLE OPTIONS (qty stepper + others) ── -->
                {assign var=hasQuantityOption value=false}
                {if $configurableoptions}
                <div id="productConfigurableOptions">
                    {foreach $configurableoptions as $num => $configoption}

                        {if $configoption.optiontype eq 4}
                        {assign var=hasQuantityOption value=true}
                        <!-- Quantity stepper — "Add more X to your plan" -->
                        <div class="on-cfg-section on-cfg-divider-top">
                            <div class="on-qty-row">
                                <div class="on-qty-info">
                                    <p class="on-section-label">Add More {if $onServiceName eq "service"}{$configoption.optionname|lower}{else}{$onServiceName}{/if} to your plan
                                        <button type="button" class="on-qty-help-btn" aria-label="More information" title="Add more to your plan">
                                            <svg width="14" height="14" viewBox="0 0 14 14" fill="none"><circle cx="7" cy="7" r="6.5" stroke="currentColor" stroke-width="1.2"/><path d="M7 6v4M7 4.5v.5" stroke="currentColor" stroke-width="1.4" stroke-linecap="round"/></svg>
                                        </button>
                                    </p>
                                    <p class="on-section-sub">Your plan includes {$productinfo.name|trim}. Want more? You can have access to more for less in your plan.</p>
                                </div>
                                <div class="on-qty-control">
                                    <div class="on-qty-stepper" role="group" aria-label="{$configoption.optionname} quantity">
                                        <button type="button" class="on-qty-btn on-qty-minus" aria-label="Decrease quantity" data-target="qty_{$configoption.id}">
                                            <svg width="14" height="14" viewBox="0 0 14 14" fill="none"><path d="M2.5 7h9" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"/></svg>
                                        </button>
                                        <input type="number"
                                            id="qty_{$configoption.id}"
                                            name="configoption[{$configoption.id}]"
                                            value="{if $configoption.selectedqty}{$configoption.selectedqty}{else}{$configoption.qtyminimum}{/if}"
                                            min="{$configoption.qtyminimum}"
                                            {if $configoption.qtymaximum}max="{$configoption.qtymaximum}"{/if}
                                            class="on-qty-input"
                                            aria-label="{$configoption.optionname} quantity"
                                            onchange="recalctotals()" />
                                        <button type="button" class="on-qty-btn on-qty-plus" aria-label="Increase quantity" data-target="qty_{$configoption.id}" {if $configoption.qtymaximum}data-max="{$configoption.qtymaximum}"{/if}>
                                            <svg width="14" height="14" viewBox="0 0 14 14" fill="none"><path d="M7 2.5v9M2.5 7h9" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"/></svg>
                                        </button>
                                    </div>
                                    {if $configoption.options.0.name}
                                        <p class="on-qty-unit-price">{$configoption.options.0.name}</p>
                                    {/if}
                                </div>
                            </div>
                        </div>

                        {elseif $configoption.optiontype eq 1}
                        <div class="on-cfg-section on-cfg-divider-top">
                            <div class="form-group">
                                <label class="on-section-label" for="inputConfigOption{$configoption.id}">{$configoption.optionname}</label>
                                <select name="configoption[{$configoption.id}]" id="inputConfigOption{$configoption.id}" class="form-control on-select">
                                    {foreach key=num2 item=options from=$configoption.options}
                                        <option value="{$options.id}"{if $configoption.selectedvalue eq $options.id} selected="selected"{/if}>{$options.name}</option>
                                    {/foreach}
                                </select>
                            </div>
                        </div>

                        {elseif $configoption.optiontype eq 2}
                        <div class="on-cfg-section on-cfg-divider-top">
                            <div class="form-group">
                                <label class="on-section-label">{$configoption.optionname}</label>
                                {foreach key=num2 item=options from=$configoption.options}
                                    <label class="on-radio-label">
                                        <input type="radio" name="configoption[{$configoption.id}]" value="{$options.id}"{if $configoption.selectedvalue eq $options.id} checked="checked"{/if} />
                                        {if $options.name}{$options.name}{else}{$LANG.enable}{/if}
                                    </label>
                                {/foreach}
                            </div>
                        </div>

                        {elseif $configoption.optiontype eq 3}
                        <div class="on-cfg-section on-cfg-divider-top">
                            <div class="form-group">
                                <label class="on-section-label">{$configoption.optionname}</label>
                                <label class="on-checkbox-label">
                                    <input type="checkbox" name="configoption[{$configoption.id}]" id="inputConfigOption{$configoption.id}" value="1"{if $configoption.selectedqty} checked{/if} />
                                    {if $configoption.options.0.name}{$configoption.options.0.name}{else}{$LANG.enable}{/if}
                                </label>
                            </div>
                        </div>
                        {/if}

                    {/foreach}
                </div>
                {/if}

                {if !$hasQuantityOption}
                <div class="on-cfg-section on-cfg-divider-top on-qty-fallback">
                    <div class="on-qty-row">
                        <div class="on-qty-info">
                            <p class="on-section-label">Add More {$onServiceName} to your plan
                                <button type="button" class="on-qty-help-btn" aria-label="More information" title="Add more to your plan">
                                    <svg width="14" height="14" viewBox="0 0 14 14" fill="none"><circle cx="7" cy="7" r="6.5" stroke="currentColor" stroke-width="1.2"/><path d="M7 6v4M7 4.5v.5" stroke="currentColor" stroke-width="1.4" stroke-linecap="round"/></svg>
                                </button>
                            </p>
                            <p class="on-section-sub">Your plan includes {$productinfo.name|trim}. Want more? You can have access to more for less in your plan.</p>
                        </div>
                        <div class="on-qty-control">
                            <div class="on-qty-stepper" role="group" aria-label="Additional websites quantity">
                                <button type="button" class="on-qty-btn on-qty-minus" aria-label="Decrease quantity" data-target="qty_extra_sites">
                                    <svg width="14" height="14" viewBox="0 0 14 14" fill="none"><path d="M2.5 7h9" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"/></svg>
                                </button>
                                <input type="number" id="qty_extra_sites" name="qty_extra_sites" value="1" min="0" max="99" class="on-qty-input" aria-label="Additional websites quantity" />
                                <button type="button" class="on-qty-btn on-qty-plus" aria-label="Increase quantity" data-target="qty_extra_sites" data-max="99">
                                    <svg width="14" height="14" viewBox="0 0 14 14" fill="none"><path d="M7 2.5v9M2.5 7h9" stroke="currentColor" stroke-width="1.8" stroke-linecap="round"/></svg>
                                </button>
                            </div>
                            <p class="on-qty-unit-price">$4.99/mo per site</p>
                        </div>
                    </div>
                </div>
                {/if}

                <!-- ── SERVER FIELDS ───────────────────────── -->
                {if $productinfo.type eq "server"}
                <div class="on-cfg-section on-cfg-divider-top">
                    <p class="on-section-label">{$LANG.cartconfigserver}</p>
                    <div class="row">
                        <div class="col-sm-6"><div class="form-group">
                            <label for="inputHostname">{$LANG.serverhostname}</label>
                            <input type="text" name="hostname" class="form-control on-input" id="inputHostname" value="{$server.hostname}" placeholder="servername.example.com">
                        </div></div>
                        <div class="col-sm-6"><div class="form-group">
                            <label for="inputRootpw">{$LANG.serverrootpw}</label>
                            <input type="password" name="rootpw" class="form-control on-input" id="inputRootpw" value="{$server.rootpw}">
                        </div></div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6"><div class="form-group">
                            <label for="inputNs1prefix">{$LANG.serverns1prefix}</label>
                            <input type="text" name="ns1prefix" class="form-control on-input" id="inputNs1prefix" value="{$server.ns1prefix}" placeholder="ns1">
                        </div></div>
                        <div class="col-sm-6"><div class="form-group">
                            <label for="inputNs2prefix">{$LANG.serverns2prefix}</label>
                            <input type="text" name="ns2prefix" class="form-control on-input" id="inputNs2prefix" value="{$server.ns2prefix}" placeholder="ns2">
                        </div></div>
                    </div>
                </div>
                {/if}

                <!-- ── CUSTOM FIELDS ───────────────────────── -->
                {if $customfields}
                <div class="on-cfg-section on-cfg-divider-top">
                    <p class="on-section-label">{$LANG.orderadditionalrequiredinfo}</p>
                    {foreach $customfields as $customfield}
                        <div class="form-group">
                            <label for="customfield{$customfield.id}">{$customfield.name} {$customfield.required}</label>
                            {$customfield.input}
                            {if $customfield.description}<span class="on-field-help">{$customfield.description}</span>{/if}
                        </div>
                    {/foreach}
                </div>
                {/if}

                <!-- ── METRICS ─────────────────────────────── -->
                {if count($metrics) > 0}
                <div class="on-cfg-section on-cfg-divider-top">
                    <p class="on-section-label">{$LANG.metrics.title}</p>
                    <p class="on-section-sub">{$LANG.metrics.explanation}</p>
                    <ul class="on-metrics-list">
                        {foreach $metrics as $metric}
                            <li>{$metric.displayName} —
                                {if count($metric.pricing) > 1}
                                    {$LANG.metrics.startingFrom} {$metric.lowestPrice} / {if $metric.unitName}{$metric.unitName}{else}{$LANG.metrics.unit}{/if}
                                    <button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#modalMetricPricing-{$metric.systemName}">{$LANG.metrics.viewPricing}</button>
                                {elseif count($metric.pricing) == 1}
                                    {$metric.lowestPrice} / {if $metric.unitName}{$metric.unitName}{else}{$LANG.metrics.unit}{/if}
                                    {if $metric.includedQuantity > 0}({$metric.includedQuantity} {$LANG.metrics.includedNotCounted}){/if}
                                {/if}
                                {include file="$template/usagebillingpricing.tpl"}
                            </li>
                        {/foreach}
                    </ul>
                </div>
                {/if}

                <!-- ── INCLUDED IN YOUR PLAN ───────────────── -->
                <div class="on-cfg-divider-top" style="margin-top:8px; padding-top:32px;">
                    <h2 class="on-included-h2">Included in your plan</h2>
                    {if $addons || count($addonsPromoOutput) > 0}
                    {foreach $addonsPromoOutput as $output}<div>{$output}</div>{/foreach}
                    <div class="on-included-list" id="productAddonsContainer">
                        {foreach $addons as $addon}
                        <div class="on-included-item">
                            <input type="hidden" name="addons[{$addon.id}]" value="1" />
                            <div class="on-included-icon">
                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none" aria-hidden="true"><rect width="18" height="18" rx="4" fill="#eeeeff"/><path d="M4.5 9l3 3L13.5 6" stroke="#4343f0" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"/></svg>
                            </div>
                            <div class="on-included-text">
                                <p class="on-included-name">{$addon.name}</p>
                                <p class="on-included-desc">{$addon.description}</p>
                            </div>
                        </div>
                        {/foreach}
                    </div>
                    {else}
                    <div class="on-included-list" id="productAddonsContainer">
                        <div class="on-included-item">
                            <div class="on-included-icon">
                                <svg width="18" height="18" viewBox="0 0 18 18" fill="none" aria-hidden="true"><rect width="18" height="18" rx="4" fill="#eeeeff"/><path d="M5 4.5h8v9H5z" stroke="#4343f0" stroke-width="1.4"/><path d="M3 6.5h2v5H3z" stroke="#4343f0" stroke-width="1.4"/></svg>
                            </div>
                            <div class="on-included-text">
                                <p class="on-included-name">Microsoft 365 Email Essentials Free Trial</p>
                                <p class="on-included-desc">Get domain-based secure email, like you@yourdomain.com, that helps build your brand and trust.</p>
                            </div>
                        </div>
                    </div>
                    {/if}
                </div>

            </div><!-- /.on-cfg-main -->

            <!-- ── SIDEBAR ─────────────────────────────────── -->
            <div class="on-cfg-sidebar" id="scrollingPanelContainer">
                <div id="orderSummary" class="on-summary-wrap">
                    <div class="on-summary-card">
                        <div class="on-summary-loader" id="orderSummaryLoader">
                            <i class="fas fa-fw fa-sync fa-spin"></i>
                        </div>
                        <h2 class="on-summary-title">Your Current Item(s)</h2>
                        <div class="on-summary-body" id="producttotal"></div>
                    </div>
                    <button type="submit" id="btnCompleteProductConfig" class="on-cta-btn hx-primary-btn">
                        Continue to cart
                    </button>
                    <p class="on-summary-note">Term length for each product can be changed in your cart.</p>
                </div>
            </div>

        </form>
    </div><!-- /.on-cfg-wrap -->
</div>

<script>
(function () {
    // Custom term dropdown mirrors GoDaddy while keeping WHMCS-compatible billing values.
    var billingSelect = document.getElementById('inputBillingcycle');
    var termDropdown = document.querySelector('[data-term-dropdown]');
    if (billingSelect && termDropdown) {
        var trigger = termDropdown.querySelector('.on-term-trigger');
        var currentName = termDropdown.querySelector('[data-term-current-name]');
        var currentPrice = termDropdown.querySelector('[data-term-current-price]');
        var currentTotal = termDropdown.querySelector('[data-term-current-total]');
        var options = termDropdown.querySelectorAll('.on-term-option');

        function closeDropdown() {
            termDropdown.classList.remove('is-open');
            if (trigger) trigger.setAttribute('aria-expanded', 'false');
        }

        if (trigger) {
            trigger.addEventListener('click', function () {
                var isOpen = termDropdown.classList.toggle('is-open');
                trigger.setAttribute('aria-expanded', isOpen ? 'true' : 'false');
            });
        }

        options.forEach(function (option) {
            option.addEventListener('click', function () {
                billingSelect.value = option.getAttribute('data-cycle');
                if (currentName) currentName.textContent = option.getAttribute('data-name');
                if (currentPrice) currentPrice.innerHTML = option.getAttribute('data-price') + '<span class="on-term-mo">/mo</span>';
                if (currentTotal) currentTotal.textContent = option.getAttribute('data-total');
                options.forEach(function (item) {
                    item.classList.remove('is-selected');
                    item.setAttribute('aria-selected', 'false');
                });
                option.classList.add('is-selected');
                option.setAttribute('aria-selected', 'true');
                closeDropdown();
                recalctotals();
            });
        });

        billingSelect.addEventListener('change', function () {
            recalctotals();
        });

        document.addEventListener('click', function (event) {
            if (!termDropdown.contains(event.target)) closeDropdown();
        });

        document.addEventListener('keydown', function (event) {
            if (event.key === 'Escape') closeDropdown();
        });
    }

    // Quantity stepper buttons
    document.querySelectorAll('.on-qty-btn').forEach(function (btn) {
        btn.addEventListener('click', function () {
            var targetId = btn.getAttribute('data-target');
            var input = document.getElementById(targetId);
            if (!input) return;
            var val = parseInt(input.value, 10) || 0;
            var min = parseInt(input.min, 10) || 0;
            var max = parseInt(btn.getAttribute('data-max'), 10) || 9999;
            if (btn.classList.contains('on-qty-minus')) {
                if (val > min) { input.value = val - 1; recalctotals(); }
            } else {
                if (val < max) { input.value = val + 1; recalctotals(); }
            }
        });
    });
})();
</script>

<script>recalctotals(); cartWindowResizeHostx();</script>
{include file="orderforms/{$carttpl}/recommendations-modal.tpl"}
