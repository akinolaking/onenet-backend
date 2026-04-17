<div class="dedicated_servers">
  <div class="loader-wrapper dedicated-server-loader"></div>
  <div class="container">
    <div class="clearfix"></div>
    <div class="row" >
      <div class="col-md-3" id="filters-row" >
        <div class="left" >
          <div class="filters_box">
            <h6>{$LANG.cpanelserverlocation}</h6> 
             <div class="dropdown">
                  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                    <span id="sLocation"> {$LANG.dedicatedSideBarRegions} </span>
                  </button>
                  <div class="dropdown-menu dedicateelocation" id="locationList">
                    <a class="dropdown-item" href="javascript:;" data-value="" > {$LANG.dedicatedSideBarRegionsMenu} </a>
                    {foreach from=$location_options key=locale_code item=location}
                      <a class="dropdown-item" href="javascript:;" data-value="{$locale_code}" ><img src="{$WEB_ROOT}/templates/{$template}/flags/blank.gif" class="flag flag-{$locale_code}" alt="{$LANG.cpanelcountry1}" /> {$location}</a>
                    {/foreach}
                </div>
            </div> 
          </div>
          {if isset($product_groups) && count($product_groups) > 0}
            <div class="filters_box">
              <h6>{$LANG.dedicatedSideBarServices}</h6>
              {foreach from=$product_groups item=group}
                {if $currentPage eq $group->pageTitle }
                <label class="custom_checkbox">
                  <input type="checkbox" class="groups default" value="{$group->id}" checked="true" > <span></span>{$group->name}
                </label>
                {else}
                 <label class="custom_checkbox">
                  <input type="checkbox" class="groups" value="{$group->id}" > <span></span>{$group->name}
                </label>
                {/if}
              {/foreach}
            </div>
          {/if}
          <div class="filters_box">
            <h6>{$LANG.dedicatedSideBarPriceRange} {$hxselectedcurrency.prefix}</h6> 
            <div class="range_slider">
              <input id="price_filter" /> 
            </div>
          </div> 

          <div class="filters_box"> 
            <h6>{$LANG.dedicatedSideBarRam}</h6>  
            <div class="range_slider">
              <input id="ram_filter" /> 
            </div>
          </div>

          <div class="filters_box" id="disk_filter"> 
            <h6>{$LANG.dedicatedSideBarDisk}</h6>
            {if isset($harddisk_options)}
              {foreach from=$harddisk_options item=hddoption}
                  <label class="custom_checkbox">
                  <input value="{$hddoption}" type="checkbox"> <span></span> {$hddoption|Upper}</label>
              {/foreach}
            {/if}
          </div>
        </div>
      </div>
      <div class="col-md-9">
        <div class="right">
          <div class="results"></div>
          <div id="result-container"></div>
        </div>
      </div>
    </div>
  </div> 
</div> 