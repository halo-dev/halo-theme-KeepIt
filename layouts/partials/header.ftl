<nav class="navbar">
    <div class="container">
        <div class="navbar-header header-logo">
        	<a href="${context!}">${options.blog_title!}</a>
        </div>
        <div class="menu navbar-right">
            <@menuTag method="list">
                <#list menus?sort_by('priority') as menu>
                    <a class="menu-item" href="${menu.url!}" title="${menu.name!}">${menu.name!}</a>
                </#list>
            </@menuTag>
            <a href="javascript:void(0);" class="theme-switch"><i class="iconfont icon-sun"></i></a>&nbsp;
        </div>
    </div>
</nav>
<nav class="navbar-mobile" id="nav-mobile" style="display: none">
     <div class="container">
        <div class="navbar-header">
            <div>  <a href="javascript:void(0);" class="theme-switch"><i class="iconfont icon-sun"></i></a>&nbsp;<a href="${context!}">${options.blog_title!}</a></div>
            <div class="menu-toggle">
                <span></span><span></span><span></span>
            </div>
        </div>
     
          <div class="menu" id="mobile-menu">
              <@menuTag method="list">
                  <#list menus?sort_by('priority') as menu>
                      <a class="menu-item" href="${menu.url!}" title="${menu.name!}">${menu.name!}</a>
                  </#list>
              </@menuTag>
        </div>
    </div>
</nav>
