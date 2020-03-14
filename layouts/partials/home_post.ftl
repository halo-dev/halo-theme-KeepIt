<div class="post-warp">
	<div class="intro">
		<div class="avatar">
			<a href="${archives_url!}"> <img src="${user.avatar!}"> </a>
		</div>
		<#if user.description??>
			<h2 class="description">
				${user.description!}
			</h2>
		</#if>
	</div>
	<#list posts.content as post>
		<article class="post" itemscope="" itemtype="http://schema.org/Article">

			<header class="post-header">
				<h1 class="post-title" itemprop="name headline"><a href="${post.fullPath!}">${post.title!}</a></h1>
			</header>
			<div class="post-content">
				 <!--featured_image-->
				   <#if settings.show_thumbnail!true && post.thumbnail?? && post.thumbnail!=''>
          			<p><img src="${post.thumbnail!}" class="featured_image"></p>
       				</#if>
       			 <!-- end featured_image-->
       			${post.summary!}
			</div>
			<div class="post-footer">
				<div class="post-meta">
					<span class="post-time">
						<time datetime="${post.createTime?string('yyyy-MM-dd')}" itemprop="datePublished">${post.createTime?string('yyyy年MM月dd日')}</time>
					</span>
					<#if post.categories?? && post.categories?size gt 0>
						in
						<i class="iconfont icon-folder"></i>
						<span class="post-category">
							<#list post.categories as category>
							  <a href="${category.fullPath!}"> ${category.name!} </a>
							</#list>
						</span>
					</#if>
        		</div>
				<#if post.tags??>
					<div class="post-tags">
						<#list post.tags as tag>
						<span class="tag"><a href="${tag.fullPath!}">${tag.name}</a></span>
						</#list>
					</div>
				</#if>
			</div>
		</article>
	</#list>

	<#if posts.totalPages gt 1>
		<ul class="pagination">
			<@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
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
