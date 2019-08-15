<#include "layouts/_default/baseof.ftl">
<#include "layouts/partials/comments.ftl">
<@baseof title="友情链接 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/links">
    <div class="post-warp archive">
        <h2 class="post-title" style="text-align:right;padding-bottom:2em">友情链接</h2>
        <div class="post-content">
            <@linkTag method="list">
                <#if links?? && links?size gt 0>
                    <ul>
                        <#list links as link>
                            <li>
                                <a href="${link.url}" target="_blank" rel="external">${link.name}</a>
                                <#if link.description!=''>
                                    – ${link.description}
                                </#if>
                            </li>
                        </#list>
                    </ul>
                </#if>
            </@linkTag>
        </div>
    </div>
</@baseof>

