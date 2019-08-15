<#macro sharelinks post>
<#if settings.socialShare!true>
    <#if settings.shareTwitter!true>
        <a href="//twitter.com/share?url=${context!}/archives/${post.url}&amp;text=${post.title!}&amp;via=Twitter"
           target="_blank" title="Share on Twitter">
            <i class="iconfont icon-twitter"></i>
        </a>
    </#if>
    <#if settings.shareFacebook!true>
        <a href="//www.facebook.com/sharer/sharer.php?u=${context!}/archives/${post.url}" target="_blank" title="Share on Facebook">
            <i class="iconfont icon-facebook"></i>
        </a>
    </#if>
    <#if settings.shareReddit!true>
        <a href="//reddit.com/submit?url=${context!}/archives/${post.url}&amp;title=${post.title!}" target="_blank"
           title="Share on Reddit">
            <i class="iconfont icon-reddit"></i>
        </a>
    </#if>
    <#if settings.shareLinkedin!true>
        <a href="//www.linkedin.com/shareArticle?url=${context!}/archives/${post.url}&amp;title=${post.title!}" target="_blank"
           title="Share on LinkedIn">
            <i class="iconfont icon-linkedin"></i>
        </a>
    </#if>
    <#if settings.sharePinterest!true>
        <a href="//www.pinterest.com/pin/create/button/?url=${context!}/archives/${post.url}&amp;description=${post.title!}"
           target="_blank" title="Share on Pinterest">
            <i class="iconfont icon-pinterest"></i>
        </a>
    </#if>
    <#if settings.shareHackerNews!true>
        <a href="//news.ycombinator.com/submitlink?u=${context!}/archives/${post.url}&amp;description=${post.title!}" target="_blank"
           title="Share on Hacker News">
            <i class="iconfont icon-ycombinator"></i>
        </a>
    </#if>
    <#if settings.shareMix!true>
        <a href="//mix.com/add?url=${context!}/archives/${post.url}&amp;description=${post.title!}" target="_blank" title="Share on Mix">
            <i class="iconfont icon-mix"></i>
        </a>
    </#if>
    <#if settings.shareTumblr!true>
        <a href="//www.tumblr.com/widgets/share/tool?canonicalUrl=${context!}/archives/${post.url}&amp;title=${post.title!}"
           target="_blank" title="Share on Tumblr">
            <i class="iconfont icon-tumblr"></i>
        </a>
    </#if>

    <#if settings.shareVKontakte!true>
        <a href="//vk.com/share.php?url=${context!}/archives/${post.url}&amp;title=${post.title!}" target="_blank"
           title="Share on VKontakte ">
            <i class="iconfont icon-vk"></i>
        </a>
    </#if>

    <#if settings.shareDouban!true>
        <a href="//www.douban.com/recommend/?url=${context!}/archives/${post.url}&amp;title=${post.title!}" target="_blank"
           title="Share on Douban ">
            <i class="iconfont icon-douban"></i>
        </a>
    </#if>

    <#if settings.shareWeibo!true>
        <a href="//service.weibo.com/share/share.php?url=${context!}/archives/${post.url}&amp;appkey=&amp;title=${post.title!}"
           target="_blank" title="Share on Douban ">
            <i class="iconfont icon-weibo"></i>
        </a>
    </#if>
</#if>
</#macro>