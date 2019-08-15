<#include "layouts/_default/baseof.ftl">
<#include "layouts/partials/comments.ftl">
<@baseof title="${sheet.title!} | ${options.blog_title!}" keywords="${sheet.title!},${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/s/${sheet.url!}">
    <div class="post-warp archive">
        <h2 class="post-title" style="text-align:right;padding-bottom:2em">${sheet.title!}</h2>
        <div class="post-content">
            ${sheet.formatContent}
        </div>
        <div class="post-comment">
            <@comment post=sheet type="sheet" />
        </div>
    </div>
</@baseof>

