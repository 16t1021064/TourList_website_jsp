<%@page import="org.json.JSONObject"%>
<%@page import="com.van.travel.models.setting.ShopPageHomeSetting"%>
<%@page import="com.van.travel.models.setting.FooterSetting"%>
<%@page import="com.van.travel.models.setting.InfosSetting"%>
<%

	ShopPageHomeSetting shopPageHomeSetting = (ShopPageHomeSetting) request.getAttribute("shopPageHomeSetting");
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
			<%@include file="./layout/noti.jsp" %>
            <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Shop Page Home</h2>
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
                    <form id="formShopPageHomeSetting" action="<%= request.getAttribute("sitePath") %>/admin/setting/shop-page-home" method="post" data-parsley-validate class="form-horizontal form-label-left">
						
						<div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Services section</h4></div></div>
						<div class="form-group">
                        	<label class="control-label col-md-3 col-sm-3 col-xs-12">Detais items <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
		                    <div class="accordion" id="accordionSectionServices" role="tablist" aria-multiselectable="true">
		                      <% for(int i=0; i<shopPageHomeSetting.services.length(); i=i+1){ %>
		                      <% JSONObject item = shopPageHomeSetting.services.getJSONObject(i); %>
		                      <div id="accordionItemServices-<%= i %>" class="panel">
		                        <a class="panel-heading collapsed" role="tab" id="accordionHeadingServices-<%= i %>" data-toggle="collapse" data-parent="#accordionSectionServices" href="#accordionCollapseServices-<%= i %>" aria-expanded="false" aria-controls="accordionCollapseServices-<%= i %>">
		                          <h4 class="panel-title">#<%= item.get("title") %></h4>
		                        </a>
		                        <div id="accordionCollapseServices-<%= i %>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="accordionHeadingServices-<%= i %>">
		                          <div class="panel-body">
		                          		<div class="form-group">
		                          	 		<label class="control-label">Thumb <span class="required">*</span></label>
		                          	 		<div class="row">
		                          	 			<div class="col-sm-8">
		                          	 				<input id="inputSectionServices_<%= i %>" type="text" required="required" value="<%= item.get("thumb") %>" name="services_thumb[]" class="form-control">
		                          	 			</div>
		                          	 			<div class="col-sm-4">
		                          	 				<button data-input="#inputSectionServices_<%= i %>" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>
		                          	 			</div>
		                          	 		</div>
		                          	 	</div>
		                          	 	<div class="form-group">
		                          	 		<label class="control-label">Title <span class="required">*</span></label>
		                          	 		<div>
		                          	 			<input type="text" required="required" value="<%= item.get("title") %>" name="services_title[]" class="form-control">
		                          	 		</div>
		                          	 	</div>
		                          	 	<div class="form-group">
		                          	 		<label class="control-label">Subtitle <span class="required">*</span></label>
		                          	 		<div>
		                          	 			<input type="text" required="required" value="<%= item.get("sub_title") %>" name="services_sub_title[]" class="form-control">
		                          	 		</div>
		                          	 	</div>
		                          	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#accordionItemServices-<%= i %>" class="btn-delete-panel btn btn-danger">Remove This</button></div>
		                          </div>
		                        </div>
		                      </div>
		                      <% } %>
		                    </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-12"><button id="btnAddListServices" type="button" class="btn btn-primary">Add</button></div>
                      </div>
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Tour section</h4></div></div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Background <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="inputTourBg" name="tour_bg" value="<%= shopPageHomeSetting.tour.get("bg") %>" required="required" class="form-control">
                        	<small>Prefer: 1800 x 863</small>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                          <button data-input="#inputTourBg" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Title <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="tour_title" value="<%= shopPageHomeSetting.tour.get("title") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Link label <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="tour_link_label" value="<%= shopPageHomeSetting.tour.get("link_label") %>" required="required" class="form-control">
                        </div>
                      </div>
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Destination section</h4></div></div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Title <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="destination_title" value="<%= shopPageHomeSetting.tour.get("title") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Link label <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="destination_link_label" value="<%= shopPageHomeSetting.destination.get("link_label") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Link tour label <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="destination_link_tour_label" value="<%= shopPageHomeSetting.destination.get("link_tour_label") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Description <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<textarea class="form-control" name="destination_description" required="required"><%= shopPageHomeSetting.destination.get("description") %></textarea>
                        </div>
                      </div>
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Activity section</h4></div></div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Title <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="activity_title" value="<%= shopPageHomeSetting.activity.get("title") %>" required="required" class="form-control">
                        </div>
                      </div>
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Subcribe section</h4></div></div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Title <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="subcribe_title" value="<%= shopPageHomeSetting.subcribe.get("title") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Description <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<textarea class="form-control" name="subcribe_description" required="required"><%= shopPageHomeSetting.subcribe.get("description") %></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Placeholder input <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="subcribe_placeholder_input" value="<%= shopPageHomeSetting.subcribe.get("placeholder_input") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Button submit <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="subcribe_button_submit" value="<%= shopPageHomeSetting.subcribe.get("button_submit") %>" required="required" class="form-control">
                        </div>
                      </div>
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Sale</h4></div></div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Background <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="inputSaleBg" name="sale_bg" value="<%= shopPageHomeSetting.sale.get("bg") %>" required="required" class="form-control">
                        	<small>Prefer: 1800 x 700</small>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                          <button data-input="#inputSaleBg" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Title white <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="sale_title_white" value="<%= shopPageHomeSetting.sale.get("title_white") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Title yellow <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="sale_title_yellow" value="<%= shopPageHomeSetting.sale.get("title_yellow") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Description <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<textarea class="form-control" name="sale_description" required="required"><%= shopPageHomeSetting.sale.get("description") %></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Button submit <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="sale_button_submit" value="<%= shopPageHomeSetting.sale.get("button_submit") %>" required="required" class="form-control">
                        </div>
                      </div>
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Blog</h4></div></div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Title <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="blog_title" value="<%= shopPageHomeSetting.blog.get("title") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Link label <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="blog_link_label" value="<%= shopPageHomeSetting.blog.get("link_label") %>" required="required" class="form-control">
                        </div>
                      </div>
                      
                      <div class="row"><div class="col-sm-3"></div><div class="col-sm-6"><h4>Benefit</h4></div></div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Title <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="benefit_title" value="<%= shopPageHomeSetting.benefit.get("title") %>" required="required" class="form-control">
                        </div>
                      </div>
                      
                      
                      <div class="form-group">
                        	<label class="control-label col-md-3 col-sm-3 col-xs-12">List items <span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
		                    <div class="accordion" id="accordionSectionBenefit" role="tablist" aria-multiselectable="true">
		                      <% for(int i=0; i<shopPageHomeSetting.benefit.getJSONArray("list").length(); i=i+1){ %>
		                      <% JSONObject item = shopPageHomeSetting.benefit.getJSONArray("list").getJSONObject(i); %>
		                      <div id="accordionItemBenefit-<%= i %>" class="panel">
		                        <a class="panel-heading collapsed" role="tab" id="accordionHeadingBenefit-<%= i %>" data-toggle="collapse" data-parent="#accordionSectionBenefit" href="#accordionCollapseBenefit-<%= i %>" aria-expanded="false" aria-controls="accordionCollapseBenefit-<%= i %>">
		                          <h4 class="panel-title">#<%= item.get("title") %></h4>
		                        </a>
		                        <div id="accordionCollapseBenefit-<%= i %>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="accordionHeadingBenefit-<%= i %>">
		                          <div class="panel-body">
		                          		<div class="form-group">
		                          	 		<label class="control-label">Thumb <span class="required">*</span></label>
		                          	 		<div class="row">
		                          	 			<div class="col-sm-8">
		                          	 				<input id="inputSectionBenefit_<%= i %>" type="text" required="required" value="<%= item.get("thumb") %>" name="benefit_list_thumb[]" class="form-control">
		                          	 			</div>
		                          	 			<div class="col-sm-4">
		                          	 				<button data-input="#inputSectionBenefit_<%= i %>" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>
		                          	 			</div>
		                          	 		</div>
		                          	 	</div>
		                          	 	<div class="form-group">
		                          	 		<label class="control-label">Title <span class="required">*</span></label>
		                          	 		<div>
		                          	 			<input type="text" required="required" value="<%= item.get("title") %>" name="benefit_list_title[]" class="form-control">
		                          	 		</div>
		                          	 	</div>
		                          	 	<div class="form-group">
		                          	 		<label class="control-label">Subtitle <span class="required">*</span></label>
		                          	 		<div>
		                          	 			<input type="text" required="required" value="<%= item.get("sub_title") %>" name="benefit_list_sub_title[]" class="form-control">
		                          	 		</div>
		                          	 	</div>
		                          	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#accordionItemBenefit-<%= i %>" class="btn-delete-panel btn btn-danger">Remove This</button></div>
		                          </div>
		                        </div>
		                      </div>
		                      <% } %>
		                    </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-12"><button id="btnAddListBenefit" type="button" class="btn btn-primary">Add</button></div>
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
    	var counterServices = <%= shopPageHomeSetting.services.length() %>;
    	$('#btnAddListServices').click(function(){
    		counterServices++;
    		var template = '';
    		template+='<div id="accordionItemServices-'+counterServices+'" class="panel">';
    		template+='    <a class="panel-heading" role="tab" id="accordionHeadingServices-'+counterServices+'" data-toggle="collapse" data-parent="#accordionSectionServices" href="#accordionCollapseServices-'+counterServices+'" aria-expanded="true" aria-controls="accordionCollapseServices-'+counterServices+'">';
    		template+='      <h4 class="panel-title">#New</h4>';
    		template+='    </a>';
    		template+='    <div id="accordionCollapseServices-'+counterServices+'" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="accordionHeadingServices-'+counterServices+'">';
    		template+='      <div class="panel-body">';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Thumb <span class="required">*</span></label>';
    		template+='      	 		<div class="row">';
    		template+='      	 			<div class="col-sm-8">';
    		template+='      	 				<input id="inputSectionServices_'+counterServices+'" type="text" required="required" name="services_thumb[]" class="form-control">';
    		template+='      	 			</div>';
    		template+='      	 			<div class="col-sm-4">';
    		template+='      	 				<button data-input="#inputSectionServices_'+counterServices+'" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>';
    		template+='      	 			</div>';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Title <span class="required">*</span></label>';
    		template+='      	 		<div>';
    		template+='      	 			<input type="text" required="required"  name="services_title[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Subtitle <span class="required">*</span></label>';
    		template+='      	 		<div>';
    		template+='      	 			<input type="text" required="required"  name="services_sub_title[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
	  	 	
    		template+='      	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#accordionItemServices-'+counterServices+'" class="btn-delete-panel btn btn-danger">Remove This</button></div>';
    		template+='      </div>';
    		template+='    </div>';
    		template+='  </div>';
	        $('#accordionSectionServices').prepend(template);
    	});
    </script>
    <script>
    	var counterBenefit = <%= shopPageHomeSetting.benefit.getJSONArray("list").length() %>;
    	$('#btnAddListBenefit').click(function(){
    		counterBenefit++;
    		var template = '';
    		template+='<div id="accordionItemBenefit-'+counterBenefit+'" class="panel">';
    		template+='    <a class="panel-heading" role="tab" id="accordionHeadingBenefit-'+counterBenefit+'" data-toggle="collapse" data-parent="#accordionSectionBenefit" href="#accordionCollapseBenefit-'+counterBenefit+'" aria-expanded="true" aria-controls="accordionCollapseBenefit-'+counterBenefit+'">';
    		template+='      <h4 class="panel-title">#New</h4>';
    		template+='    </a>';
    		template+='    <div id="accordionCollapseBenefit-'+counterBenefit+'" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="accordionHeadingBenefit-'+counterBenefit+'">';
    		template+='      <div class="panel-body">';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Thumb <span class="required">*</span></label>';
    		template+='      	 		<div class="row">';
    		template+='      	 			<div class="col-sm-8">';
    		template+='      	 				<input id="inputSectionBenefit_'+counterBenefit+'" type="text" required="required" name="benefit_list_thumb[]" class="form-control">';
    		template+='      	 			</div>';
    		template+='      	 			<div class="col-sm-4">';
    		template+='      	 				<button data-input="#inputSectionBenefit_'+counterBenefit+'" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>';
    		template+='      	 			</div>';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Title <span class="required">*</span></label>';
    		template+='      	 		<div>';
    		template+='      	 			<input type="text" required="required"  name="benefit_list_title[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Subtitle <span class="required">*</span></label>';
    		template+='      	 		<div>';
    		template+='      	 			<input type="text" required="required"  name="benefit_list_sub_title[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
	  	 	
    		template+='      	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#accordionItemBenefit-'+counterBenefit+'" class="btn-delete-panel btn btn-danger">Remove This</button></div>';
    		template+='      </div>';
    		template+='    </div>';
    		template+='  </div>';
	        $('#accordionSectionBenefit').prepend(template);
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