<#include "layouts/_default/baseof.ftl">
<#include "layouts/partials/comments.ftl">
<@baseof title="${post.title!} | ${blog_title!}" canonical="${post.fullPath!}">
<article class="post-warp">
    <header class="post-header">
        <h1 class="post-title">${post.title!}</h1>
        <div class="post-meta">
            Written by <a href="${blog_url!}" rel="author">${user.nickname!}</a> with ♥
            <span class="post-time">
                    on <time datetime="${post.createTime?string('yyyy-MM-dd')}" >${post.createTime?string('yyyy年MM月dd日')}</time>
                </span>
            <#if categories?? && categories?size gt 0>
                in
                <i class="iconfont icon-folder"></i>
                <span class="post-category">
                    <#list categories as category>
                        <a href="${category.fullPath!}"> ${category.name!} </a>
                    </#list>
                </span>
            </#if>
        </div>
    </header>
    <div class="post-content">
        <!--featured_image-->
        <#if post.thumbnail?? && post.thumbnail!=''>
        <img src="${post.thumbnail}" class="featured_image">
        </#if>
        <!-- end featured_image-->
        ${post.formatContent!}
    </div>

    <div class="post-copyright">
        <p class="copyright-item">
            <span>作者:</span>
            <span>${user.nickname!} </span>
        </p>

        <p class="copyright-item">
            <span>字数:</span>
            <span>${post.formatContent?length?c}</span>
        </p>

        <p class="copyright-item">
            <#if settings.socialShare!true>
            <span>分享:</span>
            <span>
                <#include "layouts/partials/share-links.ftl">
                <@sharelinks post />
            </span>
            </#if>
        </p>

        <p class="copyright-item">
            lincese <a rel="license external nofollow noopener noreffer" href="https://creativecommons.org/licenses/by-nc/4.0/" target="_blank">CC BY-NC 4.0</a>
        </p>
    </div>


    <div class="post-tags">
        <#if tags?? && tags?size gt 0>
        <section>
            <i class="iconfont icon-icon-tag"></i>标签:
            <#list tags as tag>
            <span class="tag"><a href="${tag.fullPath!}">
                #${tag.name!}</a></span>
            </#list>
        </section>
        </#if>
        <section>
            <a href="javascript:window.history.back();">返回</a></span> ·
            <span><a href="${blog_url!}">主页</a></span>
        </section>
    </div>

    <div class="post-nav">
        <#if nextPost??>
        <a href="${nextPost.fullPath!}" class="prev" rel="prev" title="${nextPost.title}"><i class="iconfont icon-dajiantou"></i>&nbsp;${nextPost.title}</a>
        </#if>
        <#if prevPost??>
        <a href="${prevPost.fullPath!}" class="next" rel="next" title="${prevPost.title}">${prevPost.title}&nbsp;<i class="iconfont icon-xiaojiantou"></i></a>
        </#if>
    </div>

    <div class="post-comment">
        <@comment post=post type="post" />
    </div>
</article>
</@baseof>

