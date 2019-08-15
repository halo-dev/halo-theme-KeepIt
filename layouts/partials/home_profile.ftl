<div class="intro">
   <div class="avatar">
        <a href="${context!}/archives/"> <img src="${user.avatar!}"> </a>
    </div>
    <#if user.description??>
    <h2 class="description">
       ${user.description!}
    </h2>
    </#if>
    <div class="social-links">
      <#include "social.ftl">
    </div>
</div>