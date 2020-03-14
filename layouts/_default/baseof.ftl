<#macro baseof title,canonical>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noodp"/>
    <@global.head />
    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}">
    <link rel="canonical" href="${canonical}" />
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
    <title>${title!}</title>
    <meta name="title" content="${title!}">
    <#include "../partials/css.ftl">
    <link rel="alternate" href="${atom_url!}" type="application/rss+xml" title="${blog_title!}">
    <link rel="feed" href="${rss_url!}" type="application/rss+xml" title="${blog_title!}">
    <meta name="twitter:card" content="summary"/>
    <meta name="twitter:title" content="${title!}"/>
    <meta name="twitter:description" content="${meta_description!}"/>
</head>
  <body class="">
    <div class="wrapper">
        <#include "../partials/header.ftl">
    	 <main class="main">
          <div class="container">
      		<#nested />
          </div>
		   </main>
      <#include "../partials/footer.ftl">
     </div>
  </body>
</html>
</#macro>