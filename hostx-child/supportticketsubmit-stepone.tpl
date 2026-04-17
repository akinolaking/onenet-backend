<div class="card submit-ticket-step-one">
    <div class="card-body extra-padding">
        <div class="mb-4">
            <h3 class="card-title">{lang key="createNewSupportRequest"}</h3>
            <p class="text-muted mb-0">{lang key='supportticketsheader'}</p>
        </div>
        <div class="row">
            <div class="col-md-12">
                {foreach $departments as $num => $department}
                    <div class="col-md-3 department-support">
                        <a href="{$smarty.server.PHP_SELF}?step=2&amp;deptid={$department.id}">
                            <div class="image-sec-depart">
                                {if !empty($hostx_theme_settings.{"dept_{$department.id}"})}
                                    <img src='{$hostx_theme_settings.{"dept_{$department.id}"}}' alt="{$WEB_ROOT}/templates/{$template}/images/sharedhosting.png">
                                {else}
                                    <img src="{$WEB_ROOT}/templates/{$template}/images/{if $num > 4}sharedhosting{else}ticketicon{$num}{/if}.png" alt="{$WEB_ROOT}/templates/{$template}/images/sharedhosting.png">
                                {/if}
                            </div>
                            <div class="depart-content-area">
                                <h5>{$department.name}</h5>
                                {if $department.description}
                                    <p class="text-muted">{$department.description}</p>
                                {/if}
                            </div>
                        </a>
                    </div>
                {foreachelse}
                    <div class="no-department">
                        {include file="$template/includes/alert.tpl" type="info" msg="{lang key='nosupportdepartments'}" textcenter=true}
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
</div>
