{if $hostx_blocks[$block_slug]}

    <div class="great-service">

        <div class="container">

            <div class="row great-service-row">

                <h2>{eval var=$hostx_blocks[$block_slug]->sub_title|html_entity_decode}</h2>

                {foreach $hostx_blocks[$block_slug]->widgets as $widget}

                    {eval var=$widget->widget_description|html_entity_decode}

                {/foreach}

            </div>

        </div>

    </div>

{else}

    <div class="great-service">

        <div class="container">

        <div class="row great-service-row">

            <h2>{$LANG.aboutPageTeamHead}</h2>

            <div class="col-sm-3">

            <div class="maintenance-inner-img">

                <img src="{$WEB_ROOT}/templates/{$template}/images/great-services-peoples-1.png" alt="user image">

                <h5>{$LANG.aboutPageTeamHeadMember1Name}</h5>

                <p>{$LANG.aboutPageTeamHeadMember1Position}</p>

                <ul class="list-inline">

                <li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

                <li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>

                </ul>

            </div>

            </div>

            <div class="col-sm-3">

            <div class="maintenance-inner-img">

                <img src="{$WEB_ROOT}/templates/{$template}/images/great-services-peoples-2.png" alt="user image">

                <h5>{$LANG.aboutPageTeamHeadMember2Name}</h5>

                <p>{$LANG.aboutPageTeamHeadMember2Position}</p>

                <ul class="list-inline">

                <li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

                <li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>

                </ul>

            </div>

            </div>

            <div class="col-sm-3">

            <div class="maintenance-inner-img">

                <img src="{$WEB_ROOT}/templates/{$template}/images/great-services-peoples-3.png" alt="user image">

                <h5>{$LANG.aboutPageTeamHeadMember3Name}</h5>

                <p>{$LANG.aboutPageTeamHeadMember3Position}</p>

                <ul class="list-inline">

                <li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

                <li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>

                </ul>

            </div>

            </div>

            <div class="col-sm-3">

            <div class="maintenance-inner-img">

                <img src="{$WEB_ROOT}/templates/{$template}/images/great-services-peoples-4.png" alt="user image">

                <h5>{$LANG.aboutPageTeamHeadMember4Name}</h5>

                <p>{$LANG.aboutPageTeamHeadMember4Position}</p>

                <ul class="list-inline">

                <li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

                <li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>

                </ul>

            </div>

            </div>

            <div class="col-sm-3">

            <div class="maintenance-inner-img">

                <img src="{$WEB_ROOT}/templates/{$template}/images/great-services-peoples-5.png" alt="user image">

                <h5>{$LANG.aboutPageTeamHeadMember5Name}</h5>

                <p>{$LANG.aboutPageTeamHeadMember5Position}</p>

                <ul class="list-inline">

                <li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

                <li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>

                </ul>

            </div>

            </div>

            <div class="col-sm-3">

            <div class="maintenance-inner-img">

                <img src="{$WEB_ROOT}/templates/{$template}/images/great-services-peoples-6.png" alt="user image">

                <h5>{$LANG.aboutPageTeamHeadMember6Name}</h5>

                <p>{$LANG.aboutPageTeamHeadMember6Position}</p>

                <ul class="list-inline">

                <li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

                <li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>

                </ul>

            </div>

            </div>

            <div class="col-sm-3">

            <div class="maintenance-inner-img">

                <img src="{$WEB_ROOT}/templates/{$template}/images/great-services-peoples-7.png" alt="user image">

                <h5>{$LANG.aboutPageTeamHeadMember7Name}</h5>

                <p>{$LANG.aboutPageTeamHeadMember7Position}</p>

                <ul class="list-inline">

                <li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

                <li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>

                </ul>

            </div>

            </div>

            <div class="col-sm-3">

            <div class="maintenance-inner-img">

                <img src="{$WEB_ROOT}/templates/{$template}/images/great-services-peoples-8.png" alt="user image">

                <h5>{$LANG.aboutPageTeamHeadMember8Name}</h5>

                <p>{$LANG.aboutPageTeamHeadMember8Position}</p>

                <ul class="list-inline">

                <li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>

                <li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>

                </ul>

            </div>

            </div>

            

        </div>

    </div>

    </div>

{/if}