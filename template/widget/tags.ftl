<#assign num= settings.tags_num!18 />
<div class="card widget${settings.hide_tags!}">
    <@tagTag method="list">
        <div class="card-title">
            <i class="fa fa-tags card-title-label"></i><span>标签</span>
            <#if settings.tags_more?? && settings.tags_more== true && tags?size gt num?number>
                <a class="card-more" href="${tags_url!}">更多<i class="fa fa-angle-double-right"></i></a>
            </#if>
        </div>
        <div class="card-content tags">
            <#assign size= (tags?size > num?number)?string(num, tags?size)?number - 1 />
            <#list 0..size as i>
                <#assign tag= tags[i] />
                <a href="${tag.fullPath!}">${tag.name!}</a>
            </#list>
        </div>
    </@tagTag>
</div>