{* OneNet Servers — footer_block_latest.tpl
   Matches main site nav structure from site-data.ts *}
<footer class="onenet-footer" id="mainfooterhostx">
    <div class="container">
        <div class="onenet-footer-grid">

            {* Brand column *}
            <div class="onenet-footer-brand">
                <a href="{$systemurl}" class="onenet-footer-logo" aria-label="OneNet Servers home">
                    <img src="{$WEB_ROOT}/templates/{$template}/images/onenet-logo-icon.svg"
                         alt="OneNet Servers" width="28" height="28">
                </a>
                <p>Hosting, domains, email, and infrastructure for businesses operating across Nigeria, the UK, and global markets from one clearer platform.</p>
                <div class="onenet-footer-social">
                    <a href="https://twitter.com/onenetservers" class="onenet-social-pill" target="_blank" rel="noopener" aria-label="Follow us on X">
                        <svg width="13" height="13" viewBox="0 0 24 24" fill="currentColor"><path d="M18.244 2.25h3.308l-7.227 8.26 8.502 11.24H16.17l-4.714-6.231-5.401 6.231H2.748l7.73-8.835L2.25 2.25h6.891l4.259 5.632 5.844-5.632zm-1.161 17.52h1.833L7.084 4.126H5.117z"/></svg>
                    </a>
                    <a href="https://linkedin.com/company/onenetservers" class="onenet-social-pill" target="_blank" rel="noopener" aria-label="Follow us on LinkedIn">
                        <svg width="13" height="13" viewBox="0 0 24 24" fill="currentColor"><path d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z"/><circle cx="4" cy="4" r="2"/></svg>
                    </a>
                    <a href="https://instagram.com/onenetservers" class="onenet-social-pill" target="_blank" rel="noopener" aria-label="Follow us on Instagram">
                        <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8"><rect x="2" y="2" width="20" height="20" rx="5"/><circle cx="12" cy="12" r="5"/><circle cx="17.5" cy="6.5" r="1.2" fill="currentColor" stroke="none"/></svg>
                    </a>
                    <a href="https://youtube.com/@onenetservers" class="onenet-social-pill" target="_blank" rel="noopener" aria-label="Follow us on YouTube">
                        <svg width="13" height="13" viewBox="0 0 24 24" fill="currentColor"><path d="M22.54 6.42a2.78 2.78 0 00-1.95-1.96C18.88 4 12 4 12 4s-6.88 0-8.59.46a2.78 2.78 0 00-1.95 1.96A29 29 0 001 12a29 29 0 00.46 5.58A2.78 2.78 0 003.41 19.54C5.12 20 12 20 12 20s6.88 0 8.59-.46a2.78 2.78 0 001.95-1.96A29 29 0 0023 12a29 29 0 00-.46-5.58zM9.75 15.02V8.98L15.5 12l-5.75 3.02z"/></svg>
                    </a>
                </div>
            </div>

            {* Hosting column *}
            <div class="onenet-footer-col">
                <h3>Hosting</h3>
                <ul>
                    <li><a href="{$WEB_ROOT}/cart.php?gid=1">Web Hosting</a></li>
                    <li><a href="{$WEB_ROOT}/cart.php?gid=2">WordPress Hosting</a></li>
                    <li><a href="{$WEB_ROOT}/cart.php?gid=3">Reseller Hosting</a></li>
                    <li><a href="{$WEB_ROOT}/cart.php?gid=4">Cloud VPS</a></li>
                    <li><span class="onenet-footer-link-disabled">Garium Private AI</span></li>
                </ul>
            </div>

            {* Domains column *}
            <div class="onenet-footer-col">
                <h3>Domains</h3>
                <ul>
                    <li><a href="{$WEB_ROOT}/domainchecker.php">Register a Domain</a></li>
                    <li><a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer">Transfer a Domain</a></li>
                    <li><a href="{$WEB_ROOT}/domainchecker.php">.NG Domains</a></li>
                    <li><a href="{$WEB_ROOT}/domainchecker.php">.COM.NG Domains</a></li>
                    <li><a href="{$WEB_ROOT}/domainchecker.php">TLD Pricing</a></li>
                </ul>
            </div>

            {* Tools & Security column *}
            <div class="onenet-footer-col">
                <h3>Tools &amp; Security</h3>
                <ul>
                    <li><a href="{$WEB_ROOT}/cart.php?gid=email">Business Email</a></li>
                    <li><a href="{$WEB_ROOT}/cart.php?gid=ssl">SSL Certificates</a></li>
                    <li><a href="{$WEB_ROOT}/cart.php?gid=security">OneGuard Security</a></li>
                    <li><span class="onenet-footer-link-disabled">Web Design</span></li>
                    <li><a href="{$WEB_ROOT}/announcements.php">Community</a></li>
                </ul>
            </div>

            {* Company column *}
            <div class="onenet-footer-col">
                <h3>Company</h3>
                <ul>
                    <li><a href="{$WEB_ROOT}/contact.php">About Us</a></li>
                    <li><a href="{$WEB_ROOT}/contact.php">Contact Us</a></li>
                    <li><a href="{$WEB_ROOT}/contact.php">Digital Identity Initiative</a></li>
                    <li><a href="{$WEB_ROOT}/tos.php">Terms of Service</a></li>
                    <li><a href="{$WEB_ROOT}/privacy.php">Privacy Policy</a></li>
                    <li><a href="{$WEB_ROOT}/tos.php">Hosting Agreement</a></li>
                </ul>
            </div>

        </div>{* /.onenet-footer-grid *}

        {* Trust badges *}
        <div class="onenet-footer-band">
            <span class="onenet-footer-chip">NiRA Accredited</span>
            <span class="onenet-footer-chip">UK RC: 14565201</span>
            <span class="onenet-footer-chip">NG RC: 1775966</span>
            <span class="onenet-footer-chip">SCUML Registered</span>
            <span class="onenet-footer-chip">Tech Nation Endorsed</span>
            <span class="onenet-footer-chip">Itana Digital Resident</span>
        </div>

        {* Legal *}
        <div class="onenet-footer-legal">
            &copy; {$smarty.now|date_format:"%Y"} OneNet Servers, trading name of ConqolX Technologies Limited.
            Registered in England &amp; Wales No.&nbsp;14565201. Registered in Nigeria No.&nbsp;1775966.
            SCUML registered. NiRA accredited. Prices shown exclude applicable VAT.
            Renewal prices may differ from first-term prices.
        </div>

    </div>{* /.container *}
</footer>
