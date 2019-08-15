<#include "layouts/_default/baseof.ftl">
<@baseof title="分类目录 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/categories">
<!-- Categories Page -->
<div class="post-warp categories">
    <h2 class="post-title" style="text-align:right;padding-bottom:2em">-&nbsp;分类目录&nbsp;-</h2>
    <div class="categories-card">
        <@categoryTag method="list">
            <#list categories as category>
                <div class="card-item">
                    <div class="categories" >
                        <a href="${context!}/categories/${category.slugName!}"><h3> <i class="iconfont icon-folder" style="padding-right: 3px"></i> ${category.name}  </h3> </a>
                        <@postTag method="listByCategoryId" categoryId="${category.id}">
                            <#list posts as post>
                                <#if post_index == 4>
                                    <#break />
                                </#if>
                                <article class="archive-item">
                                    <a href="${context!}/archives/${post.url!}" class="archive-item-link">${post.title!}</a>
                                </article>
                            </#list>
                            <#if posts?size gt 5>
                                <span class="more-post">
                                    <a href="${context!}/categories/${category.slugName!}" class="more-post-link">更多  >></a>
                                </span>
                            </#if>
                        </@postTag>
                    </div>
                </div>
            </#list>
        </@categoryTag>
    </div> <!-- //categories-card -->
</div>
</@baseof>