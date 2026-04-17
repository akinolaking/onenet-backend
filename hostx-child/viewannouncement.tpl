<div class="card view-announcement-page">
    <div class="card-body extra-padding">
        <h5>
            {$title}
            {if $twittertweet}
                <div class="float-right">
                    <a href="https://twitter.com/share" class="twitter-share-button" data-count="vertical" data-size="large" data-via="{$twitterusername}">
                        Tweet
                    </a>
                    <script src="https://platform.twitter.com/widgets.js"></script>
                </div>
            {/if}
        </h5>

        <ul class="list-inline">
            <li class="list-inline-item text-muted pr-3">
                <i class="far fa-calendar-alt fa-fw"></i>
                {$carbon->createFromTimestamp($timestamp)->format('l, jS F, Y')}
            </li>
            <li class="list-inline-item text-muted pr-3">
                <i class="far fa-clock fa-fw"></i>
                {$carbon->createFromTimestamp($timestamp)->format('H:ia')}
            </li>
        </ul>

        <div class="annc-content-ar">
            {$text}
        </div>

        {if $facebookrecommend}
            <div id="fb-root"></div>
            <script>
                (function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) {
                        return;
                    }
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            </script>
            <div class="fb-like" data-href="{fqdnRoutePath('announcement-view', $id, $urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend">
            </div>
        {/if}
    </div>
</div>

{if $facebookcomments}
    <div class="card">
        <div class="card-body p-5">
            <div id="fb-root">
            </div>
            <script>
                (function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) {
                        return;
                    }
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            </script>
            <fb:comments href="{fqdnRoutePath('announcement-view', $id, $urlfriendlytitle)}" num_posts="5" width="100%"></fb:comments>
        </div>
    </div>
{/if}

<a href="{routePath('announcement-index')}" class="button-style hx-black-btn">
    {lang key='clientareabacklink'}
</a>

{if $editLink}
    <a href="{$editLink}" class="button-style hx-primary-btn">
        <i class="fas fa-pencil-alt fa-fw"></i>
        {lang key='edit'}
    </a>
{/if}
