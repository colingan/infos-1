<#include "../header/header.ftl">
<link href="/src/blogs/blog.css" rel="stylesheet" />
<div class="blog-detail">
<form class="form-horizontal" role="form" method="POST" id="blog-form">
    <div class="form-group">
        <label class="col-sm-2 control-label">标题：</label>
        <div class="col-sm-8" style="height:30px;">
            <input type="text" class="required" style="height:25px; text-align:left; width:100%; left: 0px;" id="title" name="title" placeholder="请输入文章标题"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">分类：</label>
        <div class="col-sm-4">
            <select class="form-control required" id="category1" name="category1">
            	<#list model.basic.nav as rootEntry>
                	<#if rootEntry??>
                		<option value="${rootEntry.getKey().id}">${rootEntry.getKey().name}</option>
                	</#if>
                </#list>
            </select>
        </div>
        <div class="col-sm-4">
            <select class="form-control required" id="category2" name="category2">
            </select>
        </div>
    </div>
    <div class="form-group" style="margin-bottom: 10px;">
    	<label class="col-sm-2 control-label"></label>
    	<div class="col-sm-8">
    		<textarea id="service-edit" name="content" style="width:100%; min-height:500px;" class="required">
        
    		</textarea>
    	</div>
    </div>
    <div class="form-group" style="margin-top:10px;">
    	<label class="col-sm-2 control-label"></label>
    	<div class="col-sm-8">
		    <button type="submit" class="btn btn-primary" id="submitBtn">提交</button>
		    <button type="reset" class="btn btn-default">取消</button>
	    </div>
    </div>
</form>
</div>
<#include "../footer/footer.ftl">
<script>
	require(['blogs/create']);
</script>
</body>
</html>