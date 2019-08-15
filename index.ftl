<#include "layouts/_default/baseof.ftl">
<@baseof title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}">

    <#if (settings.home_mode!'post') == 'post'>
        <#include "layouts/partials/home_post.ftl">
    <#else>
        <#include "layouts/partials/home_profile.ftl">
    </#if>
</@baseof>