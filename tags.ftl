<#include "layouts/_default/baseof.ftl">
<@baseof title="标签 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}">
    <div class="post-warp {{.Data.Plural}}">
        <h2 class="post-title" style="text-align:right;padding-bottom:2em">-&nbsp;标签&nbsp;-</h2>
        <!-- Tag cloud Page -->
        <div class="tag-cloud-tags">
            <@tagTag method="list">
                <#list tags as tag>
                    <a href="${context!}/tags/${tag.slugName!}/"> ${tag.name!} <small>(${tag.postCount!})</small></a>
                </#list>
            </@tagTag>
        </div>
    </div>
</@baseof>