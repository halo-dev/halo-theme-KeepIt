<#include "layouts/_default/baseof.ftl">
<@baseof title="${blog_title!}" canonical="${blog_url!}">

    <#if (settings.home_mode!'post') == 'post'>
        <#include "layouts/partials/home_post.ftl">
    <#else>
        <#include "layouts/partials/home_profile.ftl">
    </#if>
</@baseof>