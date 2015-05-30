<#include "../header/header.ftl">
<link href="/src/service/service.css" rel="stylesheet" />
<link href="/src/blogs/blog.css" rel="stylesheet" />
<link href="/bower_components/font-awesome/font-awesome.min.css" rel="stylesheet" />

<div class="service-detail">
	<#include "sidebar.ftl">
	    
    <div class="pull-right service-main">
    	<div id="blogsContainer"style="text-align:left;height:90%;">
    		<#list model.blogs as blog>
	    		<div class="row" style="height:10%;">
					<div class="col-lg-10">
						<!--blog title-->
						<h3 style="margin-top:0;"><a href="/blogs/view?id=${blog.id}">${blog.title}</a></h3>
						<p class="lead" style="margin-bottom:5px;font-size:16px;"><i class="fa fa-user"></i> ${blog.author} 发布于 ${blog.addTime} </p>
						<hr style="margin-top:0; margin-bottom:2px;">
					</div>
				</div>
			</#list>
    	</div>
    	<div id="page-selection" style="height:10%;"></div>
    </div>
</div>

<#include "../footer/footer.ftl">
</body>
<script>
	var pageNum = ${model.pageNum?number};
	var totalPage = ${model.totalPage?number};
	var rootCategory = ${RequestParameters.rootCategory};
	var childCategory = ${RequestParameters.childCategory};
	if(pageNum > totalPage) {
		pageNum = totalPage;
	}
	require(['blogs/list']);
	
</script>
</html>