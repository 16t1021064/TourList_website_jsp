<%@page import="org.json.JSONObject"%>
<%@page import="com.van.travel.models.setting.ShopPageAboutSetting"%>
<%@page import="com.van.travel.models.setting.FooterSetting"%>
<%@page import="com.van.travel.models.setting.InfosSetting"%>
<%

	ShopPageAboutSetting shopPageAboutSetting = (ShopPageAboutSetting) request.getAttribute("shopPageAboutSetting");

%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Setting || Admin</title>
	<%@include file="./layout/style.jsp" %>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
		<%@include file="./layout/sidebar.jsp" %>
		<%@include file="./layout/topbar.jsp" %>
        <div class="right_col" role="main">
            <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Shop Page Service</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                          <li><a href="#">Settings 1</a>
                          </li>
                          <li><a href="#">Settings 2</a>
                          </li>
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="formShopPageAboutSetting" action="<%= request.getAttribute("sitePath") %>/admin/setting/shop-page-about" method="post" data-parsley-validate class="form-horizontal form-label-left">
						
						<div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>General</h4></div></div>
						
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Head background <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="input_head_bg" name="head_bg" value="<%= shopPageAboutSetting.data.get("head_bg") %>" required="required" class="form-control">
                        	<small>Prefer: 1800 x 500</small>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                          <button data-input="#input_head_bg" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>
                        </div>
                      </div>
                      
                      <hr>
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Section A</h4></div></div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Detais items <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
		                    <div class="accordion" id="accordionSectionA" role="tablist" aria-multiselectable="true">
		                      <% for(int i=0; i<shopPageAboutSetting.sectionA.length(); i=i+1){ %>
		                      <% JSONObject item = shopPageAboutSetting.sectionA.getJSONObject(i); %>
		                      <div id="accordionItemSectionA-<%= i %>" class="panel">
		                        <a class="panel-heading collapsed" role="tab" id="accordionHeadingSectionA-<%= i %>" data-toggle="collapse" data-parent="#accordionSectionA" href="#accordionCollapseSectionA-<%= i %>" aria-expanded="false" aria-controls="accordionCollapseSectionA-<%= i %>">
		                          <h4 class="panel-title">#<%= item.get("title") %></h4>
		                        </a>
		                        <div id="accordionCollapseSectionA-<%= i %>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="accordionHeadingSectionA-<%= i %>">
		                          <div class="panel-body">
		                          	 	<div class="form-group">
		                          	 		<label class="control-label">Name <span class="required">*</span></label>
		                          	 		<div>
		                          	 			<input type="text" required="required" value="<%= item.get("title") %>" name="section_a_title[]" class="form-control">
		                          	 		</div>
		                          	 	</div>
		                          	 	<div class="form-group">
		                          	 		<label class="control-label">Description <span class="required">*</span></label>
				                          	<div>
				                              <textarea name="section_a_description[]" class="form-control" rows="4" required="required"><%= item.get("description") %></textarea>
		                          	 		</div>
		                          	 	</div>
		                          	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#accordionItemSectionA-<%= i %>" class="btn-delete-panel btn btn-danger">Remove This</button></div>
		                          </div>
		                        </div>
		                      </div>
		                      <% } %>
		                    </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-12"><button id="btnAddListSectionA" type="button" class="btn btn-primary">Add</button></div>
                      </div>
                      
                      <hr>
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Section B</h4></div></div>
                      
                      	<div class="form-group">
	               	 		<label class="control-label col-md-3 col-sm-3 col-xs-12">Title h1 <span class="required">*</span></label>
	               	 		<div class="col-md-6 col-sm-6 col-xs-12">
	               	 			<input type="text" required="required" value="<%= shopPageAboutSetting.sectionB.getString("title_h1") %>" name="section_b_title_h1" class="form-control">
	               	 		</div>
	               	 	</div>
	               	 	<div class="form-group">
	               	 		<label class="control-label col-md-3 col-sm-3 col-xs-12">Description <span class="required">*</span></label>
	                 		<div class="col-md-6 col-sm-6 col-xs-12">
	                     		<textarea name="section_b_description" class="form-control" rows="4" required="required"><%= shopPageAboutSetting.sectionB.getString("description") %></textarea>
	               	 		</div>
	               	 	</div>
	               	 	<div class="form-group">
	                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Background image <span class="required">*</span>
	                        </label>
	                        <div class="col-md-6 col-sm-6 col-xs-12">
	                          	<input type="text" id="input_section_b_bg" name="section_b_bg" value="<%= shopPageAboutSetting.sectionB.getString("bg") %>" required="required" class="form-control">
	                        	<small>Prefer: 1800 x 700</small>
	                        </div>
	                        <div class="col-md-3 col-sm-3 col-xs-12">
	                          	<button data-input="#input_section_b_bg" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>
	                        </div>
                      	</div>
                      	<div class="form-group">
	               	 		<label class="control-label col-md-3 col-sm-3 col-xs-12">Link label <span class="required">*</span></label>
	               	 		<div class="col-md-6 col-sm-6 col-xs-12">
	               	 			<input type="text" required="required" value="<%= shopPageAboutSetting.sectionB.getString("link_label") %>" name="section_b_link_label" class="form-control">
	               	 		</div>
	               	 	</div>
	               	 	<div class="form-group">
	               	 		<label class="control-label col-md-3 col-sm-3 col-xs-12">Link <span class="required">*</span></label>
	               	 		<div class="col-md-6 col-sm-6 col-xs-12">
	               	 			<input type="text" required="required" value="<%= shopPageAboutSetting.sectionB.getString("link") %>" name="section_b_link" class="form-control">
	               	 		</div>
	               	 	</div>
	               	 	<div class="form-group">
	                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Detais items <span class="required">*</span>
	                        </label>
	                        <div class="col-md-6 col-sm-6 col-xs-12">
			                    <div class="accordion" id="accordionSectionB" role="tablist" aria-multiselectable="true">
			                      <% for(int i=0; i<shopPageAboutSetting.sectionB.getJSONArray("list").length(); i=i+1){ %>
			                      <% JSONObject item = shopPageAboutSetting.sectionB.getJSONArray("list").getJSONObject(i); %>
			                      <div id="accordionItemSectionB-<%= i %>" class="panel">
			                        <a class="panel-heading collapsed" role="tab" id="accordionHeadingSectionB-<%= i %>" data-toggle="collapse" data-parent="#accordionSectionB" href="#accordionCollapseSectionB-<%= i %>" aria-expanded="false" aria-controls="accordionCollapseSectionB-<%= i %>">
			                          <h4 class="panel-title">#<%= item.get("title") %></h4>
			                        </a>
			                        <div id="accordionCollapseSectionB-<%= i %>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="accordionHeadingSectionB-<%= i %>">
			                          <div class="panel-body">
			                          	 	<div class="form-group">
			                          	 		<label class="control-label">Name <span class="required">*</span></label>
			                          	 		<div>
			                          	 			<input type="text" required="required" value="<%= item.get("title") %>" name="section_b_list_title[]" class="form-control">
			                          	 		</div>
			                          	 	</div>
			                          	 	<div class="form-group">
			                          	 		<label class="control-label">Description <span class="required">*</span></label>
					                          	<div>
					                              <textarea name="section_b_list_description[]" class="form-control" rows="4" required="required"><%= item.get("description") %></textarea>
			                          	 		</div>
			                          	 	</div>
			                          	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#accordionItemSectionB-<%= i %>" class="btn-delete-panel btn btn-danger">Remove This</button></div>
			                          </div>
			                        </div>
			                      </div>
			                      <% } %>
			                    </div>
	                        </div>
	                        <div class="col-md-3 col-sm-4 col-xs-12"><button id="btnAddListSectionB" type="button" class="btn btn-primary">Add</button></div>
	                    </div>
	                    
	                  <hr>
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Section C</h4></div></div>
                      
	               	 	<div class="form-group">
	                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Background image <span class="required">*</span>
	                        </label>
	                        <div class="col-md-6 col-sm-6 col-xs-12">
	                          	<input type="text" id="input_section_c_bg" name="section_c_bg" value="<%= shopPageAboutSetting.sectionC.getString("bg") %>" required="required" class="form-control">
	                        </div>
	                        <div class="col-md-3 col-sm-3 col-xs-12">
	                          	<button data-input="#input_section_c_bg" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>
	                        </div>
                      	</div>
	               	 	<div class="form-group">
	                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Detais items <span class="required">*</span>
	                        </label>
	                        <div class="col-md-6 col-sm-6 col-xs-12">
			                    <div class="accordion" id="accordionSectionC" role="tablist" aria-multiselectable="true">
			                      <% for(int i=0; i<shopPageAboutSetting.sectionC.getJSONArray("list").length(); i=i+1){ %>
			                      <% JSONObject item = shopPageAboutSetting.sectionC.getJSONArray("list").getJSONObject(i); %>
			                      <div id="accordionItemSectionC-<%= i %>" class="panel">
			                        <a class="panel-heading collapsed" role="tab" id="accordionHeadingSectionC-<%= i %>" data-toggle="collapse" data-parent="#accordionSectionC" href="#accordionCollapseSectionC-<%= i %>" aria-expanded="false" aria-controls="accordionCollapseSectionC-<%= i %>">
			                          <h4 class="panel-title">#<%= item.get("name") %></h4>
			                        </a>
			                        <div id="accordionCollapseSectionC-<%= i %>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="accordionHeadingSectionC-<%= i %>">
			                          <div class="panel-body">
			                          	 	<div class="form-group">
			                          	 		<label class="control-label">Name <span class="required">*</span></label>
			                          	 		<div>
			                          	 			<input type="text" required="required" value="<%= item.get("name") %>" name="section_c_list_name[]" class="form-control">
			                          	 		</div>
			                          	 	</div>
			                          	 	<div class="form-group">
			                          	 		<label class="control-label">Prefix </label>
			                          	 		<div>
			                          	 			<input type="text" value="<%= item.get("prefix") %>" name="section_c_list_prefix[]" class="form-control">
			                          	 		</div>
			                          	 	</div>
			                          	 	<div class="form-group">
			                          	 		<label class="control-label">Count <span class="required">*</span></label>
			                          	 		<div>
			                          	 			<input type="number" step="1" required="required" value="<%= item.get("count") %>" name="section_c_list_count[]" class="form-control">
			                          	 		</div>
			                          	 	</div>
			                          	 	<div class="form-group">
			                          	 		<label class="control-label">Suffix </label>
			                          	 		<div>
			                          	 			<input type="text" value="<%= item.get("suffix") %>" name="section_c_list_suffix[]" class="form-control">
			                          	 		</div>
			                          	 	</div>
			                          	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#accordionItemSectionC-<%= i %>" class="btn-delete-panel btn btn-danger">Remove This</button></div>
			                          </div>
			                        </div>
			                      </div>
			                      <% } %>
			                    </div>
	                        </div>
	                        <div class="col-md-3 col-sm-4 col-xs-12"><button id="btnAddListSectionC" type="button" class="btn btn-primary">Add</button></div>
	                    </div>
                      
                      <hr>
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Translation</h4></div></div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Head title h1 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="foritem_head_h1" value="<%= shopPageAboutSetting.forItem.get("head_h1") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Head title h2 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="foritem_head_h2" value="<%= shopPageAboutSetting.forItem.get("head_h2") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Stretch title h1 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="foritem_stretch_h1" value="<%= shopPageAboutSetting.forItem.get("stretch_h1") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Stretch description <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<textarea name="foritem_stretch_description" rows="4" class="form-control" required="required"><%= shopPageAboutSetting.forItem.get("stretch_description") %></textarea>
                        </div>
                      </div>
                      
                      <h1></h1>
                      
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
						  <button class="btn btn-primary" type="reset">Reset</button>
                          <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
              </div>
			</div>
		</div>
		
		<%@include file="./layout/footer.jsp" %>
		
      </div>
    </div>
    <%@include file="./layout/scripts.jsp" %>
    <%@include file="./layout/upload.jsp" %>
    <script>
    	var counterSectionA = <%= shopPageAboutSetting.sectionA.length() %>;
    	$('#btnAddListSectionA').click(function(){
    		counterSectionA++;
    		var template = '';
    		template+='<div id="accordionItemSectionA-'+counterSectionA+'" class="panel">';
    		template+='    <a class="panel-heading" role="tab" id="accordionHeadingSectionA-'+counterSectionA+'" data-toggle="collapse" data-parent="#accordionSectionA" href="#accordionCollapseSectionA-'+counterSectionA+'" aria-expanded="true" aria-controls="accordionCollapseSectionA-'+counterSectionA+'">';
    		template+='      <h4 class="panel-title">#New</h4>';
    		template+='    </a>';
    		template+='    <div id="accordionCollapseSectionA-'+counterSectionA+'" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="accordionHeadingSectionA-'+counterSectionA+'">';
    		template+='      <div class="panel-body">';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Name <span class="required">*</span></label>';
    		template+='       	 		<div>';
    		template+='      	 			<input type="text" required="required" name="section_a_title[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Description <span class="required">*</span></label>';
    		template+='              	<div>';
    		template+='                  <textarea name="section_a_description[]" class="form-control" rows="4" required="required"></textarea>';
    		template+='       	 		</div>';
    		template+='       	 	</div>';
    		template+='      	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#accordionItemSectionA-'+counterSectionA+'" class="btn-delete-panel btn btn-danger">Remove This</button></div>';
    		template+='      </div>';
    		template+='    </div>';
    		template+='  </div>';
	        $('#accordionSectionA').prepend(template);
    	});
    </script>
    <script>
    	var counterSectionB = <%= shopPageAboutSetting.sectionB.getJSONArray("list").length() %>;
    	$('#btnAddListSectionB').click(function(){
    		counterSectionB++;
    		var template = '';
    		template+='<div id="accordionItemSectionB-'+counterSectionB+'" class="panel">';
    		template+='    <a class="panel-heading" role="tab" id="accordionHeadingSectionB-'+counterSectionB+'" data-toggle="collapse" data-parent="#accordionSectionB" href="#accordionCollapseSectionB-'+counterSectionB+'" aria-expanded="true" aria-controls="accordionCollapseSectionB-'+counterSectionB+'">';
    		template+='      <h4 class="panel-title">#New</h4>';
    		template+='    </a>';
    		template+='    <div id="accordionCollapseSectionB-'+counterSectionB+'" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="accordionHeadingSectionB-'+counterSectionB+'">';
    		template+='      <div class="panel-body">';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Name <span class="required">*</span></label>';
    		template+='       	 		<div>';
    		template+='      	 			<input type="text" required="required" name="section_b_list_title[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Description <span class="required">*</span></label>';
    		template+='              	<div>';
    		template+='                  <textarea name="section_b_list_description[]" class="form-control" rows="4" required="required"></textarea>';
    		template+='       	 		</div>';
    		template+='       	 	</div>';
    		template+='      	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#accordionItemSectionB-'+counterSectionB+'" class="btn-delete-panel btn btn-danger">Remove This</button></div>';
    		template+='      </div>';
    		template+='    </div>';
    		template+='  </div>';
	        $('#accordionSectionB').prepend(template);
    	});
    </script>
    <script>
    	var counterSectionC = <%= shopPageAboutSetting.sectionC.getJSONArray("list").length() %>;
    	$('#btnAddListSectionC').click(function(){
    		counterSectionC++;
    		var template = '';
    		template+='<div id="accordionItemSectionC-'+counterSectionC+'" class="panel">';
    		template+='    <a class="panel-heading" role="tab" id="accordionHeadingSectionC-'+counterSectionC+'" data-toggle="collapse" data-parent="#accordionSectionC" href="#accordionCollapseSectionC-'+counterSectionC+'" aria-expanded="true" aria-controls="accordionCollapseSectionC-'+counterSectionC+'">';
    		template+='      <h4 class="panel-title">#New</h4>';
    		template+='    </a>';
    		template+='    <div id="accordionCollapseSectionC-'+counterSectionC+'" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="accordionHeadingSectionC-'+counterSectionC+'">';
    		template+='      <div class="panel-body">';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Name <span class="required">*</span></label>';
    		template+='       	 		<div>';
    		template+='      	 			<input type="text" required="required" name="section_c_list_name[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Prefix </label>';
    		template+='       	 		<div>';
    		template+='      	 			<input type="text" name="section_c_list_prefix[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Count <span class="required">*</span></label>';
    		template+='       	 		<div>';
    		template+='      	 			<input type="number" step="1" required="required" name="section_c_list_count[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Suffix </label>';
    		template+='       	 		<div>';
    		template+='      	 			<input type="text"  name="section_c_list_suffix[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#accordionItemSectionC-'+counterSectionC+'" class="btn-delete-panel btn btn-danger">Remove This</button></div>';
    		template+='      </div>';
    		template+='    </div>';
    		template+='  </div>';
	        $('#accordionSectionC').prepend(template);
    	});
    </script>
    <script>
    	$(document).on('click', '.btn-delete-panel', function(){
    		var dataTarget = $(this).attr('data-target');
    		$(dataTarget).remove();
    	});
    </script>
  </body>
</html>