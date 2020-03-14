<#include "layouts/_default/baseof.ftl">
<@baseof title="标签：${tag.name} | ${blog_title!}" canonical="${tag.fullPath!}">
    <div class="post-warp archive">
        <h2 class="post-title" style="text-align:right;padding-bottom:2em">-&nbsp;标签：${tag.name!}&nbsp;-</h2>
        <#list posts.content as post>
            <article class="archive-item">
                <a href="${post.fullPath!}" class="archive-item-link">${post.title!}</a>
                <span class="archive-item-date">
                ${post.createTime?string('yyyy年MM月dd日')}
            </span>
            </article>
        </#list>
        <#if posts.totalPages gt 1>
            <ul class="pagination">
                <@paginationTag method="tagPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${tag.slug!}">
                    <#if pagination.hasPrev>
                        <li class="page-item">
                        <span class="page-link">
                            <a href="${pagination.prevPageFullPath!}">上一页</a>
                        </span>
                        </li>
                    </#if>
                    <#list pagination.rainbowPages as number>
                        <#if number.isCurrent>
                            <li class="page-item active">
							<span class="page-link">
								<a href="${number.fullPath!}">${number.page!}</a>
							</span>
                            </li>
                        <#else>
                            <li class="page-item">
							<span class="page-link">
								<a href="${number.fullPath!}">${number.page!}</a>
							</span>
                            </li>
                        </#if>
                    </#list>
                    <#if pagination.hasNext>
                        <li class="page-item">
                        <span class="page-link">
                            <a href="${pagination.nextPageFullPath!}">下一页</a>
                        </span>
                        </li>
                    </#if>
                </@paginationTag>
            </ul>
        </#if>
    </div>
</@baseof>