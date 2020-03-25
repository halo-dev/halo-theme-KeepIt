<#include "layouts/_default/baseof.ftl">
<@baseof title="标签 | ${blog_title!}" canonical="${tags_url!}">
    <div class="post-warp {{.Data.Plural}}">
        <h2 class="post-title" style="text-align:right;padding-bottom:2em">-&nbsp;标签&nbsp;-</h2>
        <!-- Tag cloud Page -->
        <div class="tag-cloud-tags">
            <@tagTag method="list">
                <#list tags as tag>
                    <a href="${tag.fullPath!}"> ${tag.name!} <small>(${tag.postCount!})</small></a>
                </#list>
            </@tagTag>
        </div>
    </div>
</@baseof>