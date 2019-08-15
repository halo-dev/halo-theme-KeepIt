<div class="post-warp">
	<div class="intro">
		<div class="avatar">
			<a href="${context!}/archives/"> <img src="${user.avatar!}"> </a>
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
				<h1 class="post-title" itemprop="name headline"><a href="${context!}/archives/${post.url!}">${post.title!}</a></h1>
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
							  <a href="${context!}/categories/${category.slugName!}"> ${category.name!} </a>
							</#list>
						</span>
					</#if>
        		</div>
				<#if post.tags??>
					<div class="post-tags">
						<#list post.tags as tag>
						<span class="tag"><a href="${context!}/tags/${tag.slugName!}">${tag.name}</a></span>
						</#list>
					</div>
				</#if>
			</div>
		</article>
	</#list>

	<#if posts.totalPages gt 1>
		<ul class="pagination">
			<#if posts.hasPrevious()>
				<#if posts.number == 1>
					<li class="page-item">
						<span class="page-link">
							<a href="${context!}/">首页</a>
						</span>
					</li>
				<#else>
					<li class="page-item">
						<span class="page-link">
							<a href="${context!}/page/${posts.number}">上一页</a>
						</span>
					</li>
				</#if>
			</#if>
			<#list rainbow as r>
				<#if r == posts.number+1>
					<li class="page-item active">
						<span class="page-link">
							<a href="${context!}/page/${posts.number+1}">${posts.number+1}</a>
						</span>
					</li>
				<#else>
					<li class="page-item">
						<span class="page-link">
							<a href="${context!}/page/${r}">${r}</a>
						</span>
					</li>
				</#if>
			</#list>
			<#if posts.hasNext()>
				<li class="page-item">
                    <span class="page-link">
                        <a href="${context!}/page/${posts.number+2}/">下一页</a>
                    </span>
				</li>
			</#if>
		</ul>
	</#if>
</div>
