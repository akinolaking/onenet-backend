{if $hostx_blocks[$block_slug]}

  {eval var=$hostx_blocks[$block_slug]->description|html_entity_decode}

{else}

    <div class="main-sate dedicated-headings p-vertical">

        <div class="container">

            <div class="upper-sec-satelite">

                <h2 class="main-head-price-block-dedicated">Our Dedicated Servers</h2>

                <p class="sub-head-price-block-dedicated">Grow your website faster with our Dedicated Servers.Choose a plan that suits your requirements.</p>

            </div>

        </div>

    </div>

{/if}