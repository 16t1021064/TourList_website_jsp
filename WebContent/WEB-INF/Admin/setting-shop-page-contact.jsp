<%@page import="org.json.JSONObject"%>
<%@page import="com.van.travel.models.setting.ShopPageContactSetting"%>
<%@page import="com.van.travel.models.setting.FooterSetting"%>
<%@page import="com.van.travel.models.setting.InfosSetting"%>
<%

	ShopPageContactSetting shopPageContactSetting = (ShopPageContactSetting) request.getAttribute("shopPageContactSetting");

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
                    <form id="formShopPageContactSetting" action="<%= request.getAttribute("sitePath") %>/admin/setting/shop-page-contact" method="post" data-parsley-validate class="form-horizontal form-label-left">
						
						<div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>General</h4></div></div>
						
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Head background <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="input_head_bg" name="head_bg" value="<%= shopPageContactSetting.data.get("head_bg") %>" required="required" class="form-control">
                        	<small>Prefer: 1800 x 855</small>
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
		                      <% for(int i=0; i<shopPageContactSetting.sectionA.length(); i=i+1){ %>
		                      <% JSONObject item = shopPageContactSetting.sectionA.getJSONObject(i); %>
		                      <div id="accordionItemSectionA-<%= i %>" class="panel">
		                        <a class="panel-heading collapsed" role="tab" id="accordionHeadingSectionA-<%= i %>" data-toggle="collapse" data-parent="#accordionSectionA" href="#accordionCollapseSectionA-<%= i %>" aria-expanded="false" aria-controls="accordionCollapseSectionA-<%= i %>">
		                          <h4 class="panel-title">#<%= item.get("name") %></h4>
		                        </a>
		                        <div id="accordionCollapseSectionA-<%= i %>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="accordionHeadingSectionA-<%= i %>">
		                          <div class="panel-body">
		                          		<div class="form-group">
		                          	 		<label class="control-label">Icon <span class="required">*</span></label>
		                          	 		<div class="row">
		                          	 			<div class="col-sm-8">
		                          	 				<input type="text" required="required" value="<%= item.get("icon") %>" name="section_a_icon[]" class="form-control">
		                          	 			</div>
		                          	 			<div class="col-sm-4">
		                          	 				<a href="<%= request.getAttribute("sitePath") %>/admin/preview/icon" class="btn btn-success" target="_blank">List</a>
		                          	 			</div>
		                          	 		</div>
		                          	 	</div>
		                          	 	<div class="form-group">
		                          	 		<label class="control-label">Name <span class="required">*</span></label>
		                          	 		<div>
		                          	 			<input type="text" required="required" value="<%= item.get("name") %>" name="section_a_name[]" class="form-control">
		                          	 		</div>
		                          	 	</div>
		                          	 	<div class="form-group">
		                          	 		<label class="control-label">Description <span class="required">*</span></label>
				                          	<div>
				                              <textarea name="section_a_description[]" class="form-control" rows="4" required="required"><%= item.get("description") %></textarea>
		                          	 		</div>
		                          	 	</div>
		                          	 	<div class="form-group">
		                          	 		<label class="control-label">Link label <span class="required">*</span></label>
		                          	 		<div>
		                          	 			<input type="text" required="required" value="<%= item.get("link_label") %>" name="section_a_link_label[]" class="form-control">
		                          	 		</div>
		                          	 	</div>
		                          	 	<div class="form-group">
		                          	 		<label class="control-label">Link <span class="required">*</span></label>
		                          	 		<div>
		                          	 			<input type="text" required="required" value="<%= item.get("link") %>" name="section_a_link[]" class="form-control">
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
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Map</h4></div></div>
                      
                      	<div class="form-group">
	               	 		<label class="control-label col-md-3 col-sm-3 col-xs-12">Center latitude <span class="required">*</span></label>
	               	 		<div class="col-md-6 col-sm-6 col-xs-12">
	               	 			<input type="text" required="required" value="<%= shopPageContactSetting.map.getString("center_lat") %>" name="map_center_lat" class="form-control">
	               	 		</div>
	               	 	</div>
	               	 	<div class="form-group">
	               	 		<label class="control-label col-md-3 col-sm-3 col-xs-12">Center longitude <span class="required">*</span></label>
	               	 		<div class="col-md-6 col-sm-6 col-xs-12">
	               	 			<input type="text" required="required" value="<%= shopPageContactSetting.map.getString("center_lng") %>" name="map_center_lng" class="form-control">
	               	 		</div>
	               	 	</div>
	               	 	<div class="form-group">
	               	 		<label class="control-label col-md-3 col-sm-3 col-xs-12">Marker latitude <span class="required">*</span></label>
	               	 		<div class="col-md-6 col-sm-6 col-xs-12">
	               	 			<input type="text" required="required" value="<%= shopPageContactSetting.map.getString("marker_lat") %>" name="map_marker_lat" class="form-control">
	               	 		</div>
	               	 	</div>
	               	 	<div class="form-group">
	               	 		<label class="control-label col-md-3 col-sm-3 col-xs-12">Marker longitude <span class="required">*</span></label>
	               	 		<div class="col-md-6 col-sm-6 col-xs-12">
	               	 			<input type="text" required="required" value="<%= shopPageContactSetting.map.getString("marker_lng") %>" name="map_marker_lng" class="form-control">
	               	 		</div>
	               	 	</div>
	               	 	<div class="form-group">
	               	 		<label class="control-label col-md-3 col-sm-3 col-xs-12">Marker name <span class="required">*</span></label>
	               	 		<div class="col-md-6 col-sm-6 col-xs-12">
	               	 			<input type="text" required="required" value="<%= shopPageContactSetting.map.getString("marker_name") %>" name="map_marker_name" class="form-control">
	               	 		</div>
	               	 	</div>
	               	 	
                      <hr>
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Translation</h4></div></div>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Head title h1 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="foritem_head_h1" value="<%= shopPageContactSetting.forItem.get("head_h1") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Head title h2 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="foritem_head_h2" value="<%= shopPageContactSetting.forItem.get("head_h2") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Form title h1 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="foritem_form_title_h1" value="<%= shopPageContactSetting.forItem.get("form_title_h1") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Form title h2 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="foritem_form_title_h2" value="<%= shopPageContactSetting.forItem.get("form_title_h2") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Form placeholder name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="foritem_form_holder_name" value="<%= shopPageContactSetting.forItem.get("form_holder_name") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Form placeholder email <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="foritem_form_holder_email" value="<%= shopPageContactSetting.forItem.get("form_holder_email") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Form placeholder message <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="foritem_form_holder_message" value="<%= shopPageContactSetting.forItem.get("form_holder_message") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Form submit label <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="foritem_form_button_submit" value="<%= shopPageContactSetting.forItem.get("form_button_submit") %>" required="required" class="form-control">
                        </div>
                      </div>
                      
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
    	var counterSectionA = <%= shopPageContactSetting.sectionA.length() %>;
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
    		template+='      	 		<label class="control-label">Icon <span class="required">*</span></label>';
    		template+='      	 		<div class="row">';
    		template+='      	 			<div class="col-sm-8">';
    		template+='      	 				<input type="text" required="required"  name="section_a_icon[]" class="form-control">';
    		template+='      	 			</div>';
    		template+='      	 			<div class="col-sm-4">';
    		template+='      	 				<a href="<%= request.getAttribute("sitePath") %>/admin/preview/icon" class="btn btn-success" target="_blank">List</a>';
    		template+='      	 			</div>';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Name <span class="required">*</span></label>';
    		template+='      	 		<div>';
    		template+='      	 			<input type="text" required="required"  name="section_a_name[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Description <span class="required">*</span></label>';
    		template+='      	 	  	<div>';
    		template+='      	 	      <textarea name="section_a_description[]" class="form-control" rows="4" required="required"></textarea>';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Link label <span class="required">*</span></label>';
    		template+='      	 		<div>';
    		template+='      	 			<input type="text" required="required" name="section_a_link_label[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Link <span class="required">*</span></label>';
    		template+='      	 		<div>';
    		template+='      	 			<input type="text" required="required" name="section_a_link[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
	  	 	
    		template+='      	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#accordionItemSectionA-'+counterSectionA+'" class="btn-delete-panel btn btn-danger">Remove This</button></div>';
    		template+='      </div>';
    		template+='    </div>';
    		template+='  </div>';
	        $('#accordionSectionA').prepend(template);
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