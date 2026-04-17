<div class="standout-features standout p-vertical">
    <div class="container">
        <div class="row text-center">
            {if $type == 'ev'}
                <div class="col-md-6 col-lg-4 aa">
					<div class ="standout-heading">
						<img src="{$WEB_ROOT}/templates/{$template}/marketconnect/symantec/{$layoutStyle}/ssl-icon.png">
						<h6>{lang key='store.ssl.shared.ev.visualVerification'}</h6>
						<p>{lang key='store.ssl.shared.ev.visualVerificationDescription'}</p>
					</div>
                </div>
            {elseif $type == 'ov'}
                <div class="col-md-6 col-lg-4 bb">
					<div class ="standout-heading">
						<img src="{$WEB_ROOT}/templates/{$template}/marketconnect/symantec/{$layoutStyle}/ssl-icon.png">
						<h6>{lang key='store.ssl.shared.ov.ov'}</h6>
						<p>{lang key='store.ssl.shared.ov.ovDescription'}</p>
					</div>
                </div>
            {else}
                <div class="col-md-6 col-lg-4 cc">
					<div class ="standout-heading">
						<img src="{$WEB_ROOT}/templates/{$template}/marketconnect/symantec/{$layoutStyle}/ssl-icon.png">
						<h6>{lang key='store.ssl.shared.delivery'}</h6>
						<p>{lang key='store.ssl.shared.deliveryDescription'}</p>
					</div>
                </div>
            {/if}
            <div class="col-md-6 col-lg-4 dd">
				<div class ="standout-heading">
					<img src="{$WEB_ROOT}/templates/{$template}/marketconnect/symantec/{$layoutStyle}/ssl-icon-two.png">
					<h6>{lang key='store.ssl.shared.siteSeal'}</h6>
					<p>{lang key='store.ssl.shared.siteSealDescription'}</p>
				</div>
            </div>
            {if $type == 'ev'}
                <div class="col-md-12 col-lg-4 ee">
					<div class ="standout-heading">
						<img src="{$WEB_ROOT}/templates/{$template}/marketconnect/symantec/{$layoutStyle}/boost-icon.png">
						<h6>{lang key='store.ssl.shared.ev.warranty'}</h6>
						<p>{lang key='store.ssl.shared.ev.warrantyDescription'}</p>
					</div>
                </div>
            {elseif $type == 'ov'}
                <div class="col-md-12 col-lg-4 ff">
					<div class ="standout-heading">
						<img src="{$WEB_ROOT}/templates/{$template}/marketconnect/symantec/{$layoutStyle}/boost-icon.png">
						<h6>{lang key='store.ssl.shared.ov.warranty'}</h6>
						<p>{lang key='store.ssl.shared.ov.warrantyDescription'}</p>
					</div>
                </div>
            {else}
                <div class="col-md-12 col-lg-4 gg">
					<div class ="standout-heading">
						<img src="{$WEB_ROOT}/templates/{$template}/marketconnect/symantec/{$layoutStyle}/boost-icon.png">
						<h6>{lang key='store.ssl.shared.googleRanking'}</h6>
						<p>{lang key='store.ssl.shared.googleRankingDescription'}</p>
					</div>
                </div>
            {/if}
        </div>
    </div>
</div>

<div class=" features feature-dv p-vertical">
    <div class="container">
        <h2>{lang key='store.ssl.shared.features'}</h2>
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="feature">
                    <i class="fas fa-lock"></i>
                    <h5>{lang key='store.ssl.shared.encryptData'}</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="feature">
                    <i class="fas fa-credit-card"></i>
                    <h5>{lang key='store.ssl.shared.secureTransactions'}</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="feature">
                    <i class="fas fa-trophy"></i>
                    <h5>{lang key='store.ssl.shared.legitimacy'}</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="feature">
                    <i class="fas fa-certificate"></i>
                    <h5>{lang key='store.ssl.shared.fastestSsl'}</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="feature">
                    <i class="fas fa-window-maximize"></i>
                    <h5>{lang key='store.ssl.shared.browserCompatability'}</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="feature">
                    <i class="fas fa-search"></i>
                    <h5>{lang key='store.ssl.shared.seoRank'}</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="feature">
                    <i class="far fa-clock"></i>
                    {if $type == 'ev'}
                        <h5>{lang key='store.ssl.shared.ev.issuance'}</h5>
                    {elseif $type == 'ov'}
                        <h5>{lang key='store.ssl.shared.ov.issuance'}</h5>
                    {else}
                        <h5>{lang key='store.ssl.shared.issuance'}</h5>
                    {/if}
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="feature">
                    <i class="fas fa-sync"></i>
                    <h5>{lang key='store.ssl.shared.freeReissues'}</h5>
                </div>
            </div>
        </div>
    </div>
</div>
