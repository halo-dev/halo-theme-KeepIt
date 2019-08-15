<#include "layouts/_default/baseof.ftl">
<@baseof title="404 | ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/404">
    <div class="notfound">
        <h1 class="error-emoji"></h1>
        <p class="error-text">/* 404 页面未找到. */</p>
        <p class="error-link"><a href="${context!}">↑ 返回到主页 ↑</a></p>
    </div>
    <script>
        var errorEmojiContainer = document.getElementsByClassName('error-emoji')[0];
        var emojiArray = [
            '\\(o_o)/', '(o^^)o', '(˚Δ˚)b', '(^-^*)', '(≥o≤)', '(^_^)b', '(·_·)',
            '(=\'X\'=)', '(>_<)', '(;-;)', '\\(^Д^)/',
        ];
        var errorEmoji = emojiArray[Math.floor(Math.random() * emojiArray.length)];
        errorEmojiContainer.appendChild(document.createTextNode(errorEmoji));
    </script>
</@baseof>