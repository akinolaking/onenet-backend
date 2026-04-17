{if $hostx_blocks[$block_slug]}

<div class="frequently-questions faq-about-us p-vertical">

    <div class="container">

       <div class="row frequently-questions-row">
         <div class="frequently-questions-titles">

            <h2>{eval var=$hostx_blocks[$block_slug]->title|html_entity_decode}</h2>

            <h5>{eval var=$hostx_blocks[$block_slug]->sub_title|html_entity_decode}</h5>
         </div>

          <div class="col-sm-12">

             <div class="accordion-container-main">

                <div class="accordion md-accordion" id="accordionEx1" role="tablist" aria-multiselectable="true">

                   {foreach $hostx_blocks[$block_slug]->widgets as $index => $widget}

                        {assign var=faqId value="Quest`$index`"}

                        <div class="card card-faq {if $index == 0}current{/if}">
                           <div class="card-header" role="tab" id="{$faqId}Label">
                                 <a class="{if $index != 0}collapsed{/if}"
                                    data-toggle="collapse"
                                    href="#{$faqId}"
                                    aria-expanded="{if $index == 0}true{else}false{/if}"
                                    aria-controls="{$faqId}">
                                    <h5 class="mb-0">
                                       {eval var=$widget->widget_sub_title|html_entity_decode}
                                    </h5>
                                 </a>
                           </div>

                           <div id="{$faqId}"
                                 class="collapse {if $index == 0}show{/if}"
                                 role="tabpanel"
                                 aria-labelledby="{$faqId}Label">
                                 <div class="card-body">
                                    {eval var=$widget->widget_description|html_entity_decode}
                                 </div>
                           </div>
                        </div>

                     {/foreach}


                </div>

            </div>

         </div>

      </div>

   </div>

</div>

{else}

<div class="frequently-questions faq-about-us p-vertical">

    <div class="container">

       <div class="row frequently-questions-row">

          <h2>{$LANG.aboutPageFaqHead}</h2>

          <div class="col-sm-12">

             <div class="accordion-container-main">

                <div class="accordion md-accordion" id="accordionEx1" role="tablist" aria-multiselectable="true">

                    <div class="card card-faq current"><div class="card-header" role="tab" id="QuestLabel1"><a class="" data-toggle="collapse" href="#Quest1" aria-expanded="false" aria-controls="QuestLabel1"><h5 class="mb-0">{$LANG.aboutPageFaqAccord1Head}</h5></a></div><div id="Quest1" class="collapse show" role="tabpanel" aria-labelledby="QuestLabel1"><div class="card-body">{$LANG.aboutPageFaqAccord1Body}</div></div></div>

                    <div class="card card-faq"><div class="card-header" role="tab" id="QuestLabel2"><a class="collapsed" data-toggle="collapse" href="#Quest2" aria-expanded="false" aria-controls="QuestLabel2"><h5 class="mb-0">{$LANG.aboutPageFaqAccord2Head}</h5></a></div><div id="Quest2" class="collapse" role="tabpanel" aria-labelledby="QuestLabel2"><div class="card-body">{$LANG.aboutPageFaqAccord2Body}</div></div></div>

                    <div class="card card-faq"><div class="card-header" role="tab" id="QuestLabel3"><a class="collapsed" data-toggle="collapse" href="#Quest3" aria-expanded="false" aria-controls="QuestLabel3"><h5 class="mb-0">{$LANG.aboutPageFaqAccord3Head}</h5></a></div><div id="Quest3" class="collapse" role="tabpanel" aria-labelledby="QuestLabel3"><div class="card-body">{$LANG.aboutPageFaqAccord3Body}</div></div></div>

                    <div class="card card-faq"><div class="card-header" role="tab" id="QuestLabel4"><a class="collapsed" data-toggle="collapse" href="#Quest4" aria-expanded="false" aria-controls="QuestLabel4"><h5 class="mb-0">{$LANG.aboutPageFaqAccord4Head}</h5></a></div><div id="Quest4" class="collapse" role="tabpanel" aria-labelledby="QuestLabel4"><div class="card-body">{$LANG.aboutPageFaqAccord4Body}</div></div></div>

                    <div class="card card-faq"><div class="card-header" role="tab" id="QuestLabel5"><a class="collapsed" data-toggle="collapse" href="#Quest5" aria-expanded="false" aria-controls="QuestLabel5"><h5 class="mb-0">{$LANG.aboutPageFaqAccord5Head}</h5></a></div><div id="Quest5" class="collapse" role="tabpanel" aria-labelledby="QuestLabel5"><div class="card-body">{$LANG.aboutPageFaqAccord5Body}</div></div></div>

                </div>

             </div>

          </div>

       </div>

    </div>

 </div>

{/if}