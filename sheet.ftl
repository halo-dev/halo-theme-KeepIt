<#include "layouts/_default/baseof.ftl">
<#include "layouts/partials/comments.ftl">
<@baseof title="${sheet.title!} | ${blog_title!}" canonical="${sheet.fullPath!}">
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

