<#include "layouts/_default/baseof.ftl">
<@baseof title="分类：${category.name} | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/categories/${category.slugName!}">
<div class="post-warp archive">
    <h2 class="post-title" style="text-align:right;padding-bottom:2em">-&nbsp;分类：${category.name!}&nbsp;-</h2>
    <#list posts.content as post>
        <article class="archive-item">
            <a href="${context!}/archives/${post.url!}" class="archive-item-link">${post.title!}</a>
            <span class="archive-item-date">
                ${post.createTime?string('yyyy年MM月dd日')}
            </span>
        </article>
    </#list>
    <#if posts.totalPages gt 1>
        <ul class="pagination">
            <#if posts.hasPrevious()>
                <#if posts.number == 1>
                    <li class="page-item">
						<span class="page-link">
							<a href="${context!}/categories/${category.slugName}">首页</a>
						</span>
                    </li>
                <#else>
                    <li class="page-item">
						<span class="page-link">
							<a href="${context!}/categories/${category.slugName}/page/${posts.number}">上一页</a>
						</span>
                    </li>
                </#if>
            </#if>
            <#list rainbow as r>
                <#if r == posts.number+1>
                    <li class="page-item active">
						<span class="page-link">
							<a href="${context!}/categories/${category.slugName}/page/${posts.number+1}">${posts.number+1}</a>
						</span>
                    </li>
                <#else>
                    <li class="page-item">
						<span class="page-link">
							<a href="${context!}/categories/${category.slugName}/page/${r}">${r}</a>
						</span>
                    </li>
                </#if>
            </#list>
            <#if posts.hasNext()>
                <li class="page-item">
                    <span class="page-link">
                        <a href="${context!}/categories/${category.slugName}/page/${posts.number+2}/">下一页</a>
                    </span>
                </li>
            </#if>
        </ul>
    </#if>
</div>
</@baseof>