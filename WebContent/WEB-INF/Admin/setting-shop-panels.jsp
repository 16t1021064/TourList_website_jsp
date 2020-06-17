<%@page import="org.json.JSONObject"%>
<%@page import="com.van.travel.models.setting.ShopPanelsSetting"%>
<%@page import="com.van.travel.models.setting.FooterSetting"%>
<%@page import="com.van.travel.models.setting.InfosSetting"%>
<%

	ShopPanelsSetting shopPanelsSetting = (ShopPanelsSetting) request.getAttribute("shopPanelsSetting");

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
                    <h2>Search tour panel</h2>
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
                    <form id="formSeachTourPanel" action="<%= request.getAttribute("sitePath") %>/admin/setting/shop-panels" method="post" data-parsley-validate class="form-horizontal form-label-left">
						
						<input type="hidden" name="action_request" value="search_tour">
						
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Title h1 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="title_h1" value="<%= shopPanelsSetting.searchTour.get("title_h1") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Label keywords <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="label_key" value="<%= shopPanelsSetting.searchTour.get("label_key") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Label activity <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="label_act" value="<%= shopPanelsSetting.searchTour.get("label_act") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Label destination <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="label_des" value="<%= shopPanelsSetting.searchTour.get("label_des") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Label duration <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="label_dur" value="<%= shopPanelsSetting.searchTour.get("label_dur") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Label date <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="label_dat" value="<%= shopPanelsSetting.searchTour.get("label_dat") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Label submit <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="label_submit" value="<%= shopPanelsSetting.searchTour.get("label_submit") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Placeholder select any <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="select_any" value="<%= shopPanelsSetting.searchTour.get("select_any") %>" required="required" class="form-control">
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
			
			<div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Benefit panel</h2>
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
                    <form id="formBenefitPanel" action="<%= request.getAttribute("sitePath") %>/admin/setting/shop-panels" method="post" data-parsley-validate class="form-horizontal form-label-left">
						
						<input type="hidden" name="action_request" value="benefit">
						
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Title h1 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="title_h1" value="<%= shopPanelsSetting.benefit.get("title_h1") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Benefit items <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
		                    <div class="accordion" id="accordionBenefit" role="tablist" aria-multiselectable="true">
		                      <% for(int i=0; i<shopPanelsSetting.benefit.getJSONArray("list").length(); i=i+1){ %>
		                      <% JSONObject item = shopPanelsSetting.benefit.getJSONArray("list").getJSONObject(i); %>
		                      <div id="accordionItemBenefit-<%= i %>" class="panel">
		                        <a class="panel-heading collapsed" role="tab" id="accordionHeadingBenefit-<%= i %>" data-toggle="collapse" data-parent="#accordionBenefit" href="#accordionCollapseBenefit-<%= i %>" aria-expanded="false" aria-controls="accordionCollapseBenefit-<%= i %>">
		                          <h4 class="panel-title">#<%= item.get("text") %></h4>
		                        </a>
		                        <div id="accordionCollapseBenefit-<%= i %>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="accordionHeadingBenefit-<%= i %>">
		                          <div class="panel-body">
		                          		<div class="form-group">
		                          	 		<label class="control-label">Icon <span class="required">*</span></label>
		                          	 		<div class="row">
		                          	 			<div class="col-sm-8">
		                          	 				<input type="text" required="required" value="<%= item.get("icon") %>" name="list_icon[]" class="form-control">
		                          	 			</div>
		                          	 			<div class="col-sm-4">
		                          	 				<a href="<%= request.getAttribute("sitePath") %>/admin/preview/icon" class="btn btn-success" target="_blank">List</a>
		                          	 			</div>
		                          	 		</div>
		                          	 	</div>
		                          	 	<div class="form-group">
		                          	 		<label class="control-label">Text <span class="required">*</span></label>
		                          	 		<div>
		                          	 			<input type="text" required="required" value="<%= item.get("text") %>" name="list_text[]" class="form-control">
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
			
			<div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Support panel</h2>
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
                    <form id="formSupportPanel" action="<%= request.getAttribute("sitePath") %>/admin/setting/shop-panels" method="post" data-parsley-validate class="form-horizontal form-label-left">
						
						<input type="hidden" name="action_request" value="support">
						
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Title h1 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="title_h1" value="<%= shopPanelsSetting.support.get("title_h1") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Description <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<textarea class="form-control" name="description" required="required"><%= shopPanelsSetting.support.get("description") %></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Phone <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="phone" value="<%= shopPanelsSetting.support.get("phone") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Email <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="email" value="<%= shopPanelsSetting.support.get("email") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Background <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="input_support_bg" name="bg" value="<%= shopPanelsSetting.support.get("bg") %>" required="required" class="form-control">
                        	<small>Prefer: 400 x 271</small>
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                          <button data-input="#input_support_bg" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>
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
			
			<div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Tour panel</h2>
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
                    <form id="formTourPanel" action="<%= request.getAttribute("sitePath") %>/admin/setting/shop-panels" method="post" data-parsley-validate class="form-horizontal form-label-left">
						
						<input type="hidden" name="action_request" value="tour">
						
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Prefix price <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="prefix_price" value="<%= shopPanelsSetting.tour.get("prefix_price") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Availability <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="availability" value="<%= shopPanelsSetting.tour.get("availability") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Reviews <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="reviews" value="<%= shopPanelsSetting.tour.get("reviews") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Button view <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="btn_view" value="<%= shopPanelsSetting.tour.get("btn_view") %>" required="required" class="form-control">
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
    	var counterBenefit = <%= shopPanelsSetting.benefit.getJSONArray("list").length() %>;
    	$('#btnAddListBenefit').click(function(){
    		counterBenefit++;
    		var template = '';
    		template+='<div id="accordionItemBenefit-'+counterBenefit+'" class="panel">';
    		template+='    <a class="panel-heading" role="tab" id="accordionHeadingBenefit-'+counterBenefit+'" data-toggle="collapse" data-parent="#accordionBenefit" href="#accordionCollapseBenefit-'+counterBenefit+'" aria-expanded="true" aria-controls="accordionCollapseBenefit-'+counterBenefit+'">';
    		template+='      <h4 class="panel-title">#New</h4>';
    		template+='    </a>';
    		template+='    <div id="accordionCollapseBenefit-'+counterBenefit+'" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="accordionHeadingBenefit-'+counterBenefit+'">';
    		template+='      <div class="panel-body">';
    		
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Icon <span class="required">*</span></label>';
    		template+='      	 		<div class="row">';
    		template+='      	 			<div class="col-sm-8">';
    		template+='      	 				<input type="text" required="required"  name="list_icon[]" class="form-control">';
    		template+='      	 			</div>';
    		template+='      	 			<div class="col-sm-4">';
    		template+='      	 				<a href="<%= request.getAttribute("sitePath") %>/admin/preview/icon" class="btn btn-success" target="_blank">List</a>';
    		template+='      	 			</div>';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
    		template+='      	 	<div class="form-group">';
    		template+='      	 		<label class="control-label">Text <span class="required">*</span></label>';
    		template+='      	 		<div>';
    		template+='      	 			<input type="text" required="required"  name="list_text[]" class="form-control">';
    		template+='      	 		</div>';
    		template+='      	 	</div>';
	  	 	
    		template+='      	 	<div style="padding: 5px;text-align: center;"><button type="button" data-target="#accordionItemBenefit-'+counterBenefit+'" class="btn-delete-panel btn btn-danger">Remove This</button></div>';
    		template+='      </div>';
    		template+='    </div>';
    		template+='  </div>';
	        $('#accordionBenefit').prepend(template);
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