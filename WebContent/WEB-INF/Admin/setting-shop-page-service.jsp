<%@page import="com.van.travel.models.setting.ShopPageServiceSetting"%>
<%@page import="com.van.travel.models.setting.FooterSetting"%>
<%@page import="com.van.travel.models.setting.InfosSetting"%>
<%

	ShopPageServiceSetting shopPageServiceSetting = (ShopPageServiceSetting) request.getAttribute("shopPageServiceSetting");

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
                    <form id="formShopPageServiceSetting" action="<%= request.getAttribute("sitePath") %>/admin/setting/shop-page-service" method="post" data-parsley-validate class="form-horizontal form-label-left">
						
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Nums of service panel <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" step="1" required="required" name="service_panel_count" min="0" value="<%= shopPageServiceSetting.data.get("service_panel_count") %>" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Nums of service item <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" step="1" required="required" name="service_item_count" min="0" value="<%= shopPageServiceSetting.data.get("service_item_count") %>" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Head background <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="input_head_bg" name="head_bg" value="<%= shopPageServiceSetting.data.get("head_bg") %>" required="required" class="form-control">
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                          <button data-input="#input_head_bg" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Part panel item background <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="input_panel_item_image_bg" name="panel_item_image_bg" value="<%= shopPageServiceSetting.data.get("panel_item_image_bg") %>" required="required" class="form-control">
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                          <button data-input="#input_panel_item_image_bg" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>
                        </div>
                      </div>
                      
                      <hr>
                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Head title h1 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="head_h1" value="<%= shopPageServiceSetting.forItem.get("head_h1") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Head title h2 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="head_h2" value="<%= shopPageServiceSetting.forItem.get("head_h2") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Stretch title h1 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="stretch_h1" value="<%= shopPageServiceSetting.forItem.get("stretch_h1") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Stretch title h2 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="stretch_h2" value="<%= shopPageServiceSetting.forItem.get("stretch_h2") %>" required="required" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Stretch button contact <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="stretch_button" value="<%= shopPageServiceSetting.forItem.get("stretch_button") %>" required="required" class="form-control">
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
    
  </body>
</html>