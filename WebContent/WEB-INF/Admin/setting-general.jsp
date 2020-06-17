<%@page import="com.van.travel.models.setting.FooterSetting"%>
<%@page import="com.van.travel.models.setting.InfosSetting"%>
<%

	InfosSetting infosSetting = (InfosSetting) request.getAttribute("infosSetting");
	FooterSetting footerSetting = (FooterSetting) request.getAttribute("footerSetting");

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
              <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Shop Infos</h2>
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
                    <form id="formInfosSetting" action="<%= request.getAttribute("sitePath") %>/admin/setting" method="post" data-parsley-validate class="form-horizontal form-label-left">

						<input type="hidden" name="type_setting" value="shop_infos">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Shop name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="shop_name" value="<%= infosSetting.data.get("shop_name") %>" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Shop logo <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="input_shop_logo" name="shop_logo" value="<%= infosSetting.data.get("shop_logo") %>" required="required" class="form-control">
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                          <button data-input="#input_shop_logo" type="button" class="btnUploadImage btn btn-primary" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Shop email <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="shop_email" value="<%= infosSetting.data.get("shop_email") %>" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Shop phone <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="shop_phone" value="<%= infosSetting.data.get("shop_phone") %>" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Shop address <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea class="form-control" name="shop_address" required="required"><%= infosSetting.data.get("shop_address") %></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Facebook <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="shop_media_fb" value="<%= infosSetting.data.get("shop_media_fb") %>" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Youtube <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="shop_media_yt" value="<%= infosSetting.data.get("shop_media_yt") %>" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Instagram <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="shop_media_ig" value="<%= infosSetting.data.get("shop_media_ig") %>" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Twitter <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="shop_media_tw" value="<%= infosSetting.data.get("shop_media_tw") %>" class="form-control">
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
              <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
	              <div class="x_panel">
	                  <div class="x_title">
	                    <h2>Footer</h2>
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
	                    <form id="formInfosSetting" action="<%= request.getAttribute("sitePath") %>/admin/setting" method="post" data-parsley-validate class="form-horizontal form-label-left">
	
							<input type="hidden" name="type_setting" value="fe_footer">
	
	                      <div class="form-group">
	                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Shop address <span class="required">*</span>
	                        </label>
	                        <div class="col-md-6 col-sm-6 col-xs-12">
	                          <textarea class="form-control" name="description" required="required"><%= footerSetting.data.get("description") %></textarea>
	                        </div>
	                      </div>
	                      
	                      <div class="form-group">
	                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Image Awards <span class="required">*</span>
	                        </label>
	                        <div class="col-md-9 col-sm-9 col-xs-12" id="FeFooterAwardContainer">
	                        	<% int footerSettingAwardsSize = 0; %>
	                        	<% for(Object image : footerSetting.getAwards()){ %>
	                        	<% footerSettingAwardsSize=footerSettingAwardsSize+1; %>
					    		<div class="row" id="FeFooterAwardWrap<%= footerSettingAwardsSize %>" style="margin-bottom: 10px;">
					    			<div class="col-md-8 col-sm-8 col-xs-12">
					    				<input id="FeFooterAwardInput<%= footerSettingAwardsSize %>" type="text" value="<%= image %>" name="awards[]" required="required" class="form-control">
					    		    </div>
					    		    <div class="col-md-4 col-sm-4 col-xs-12">
					    		      <button type="button" class="btnUploadImage btn btn-success" data-input="#FeFooterAwardInput<%= footerSettingAwardsSize %>" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>
					    		      <button type="button" class="btnRemoveInputFeFooterAward btn btn-danger" data-target="#FeFooterAwardWrap<%= footerSettingAwardsSize %>"><i class="fa fa-close"></i></button>
					    		    </div>
					    		</div>
					    		<% } %>
	                        	<div class="row">
	                        		<div class="col-md-8 col-sm-8 col-xs-12">
	                          			
			                        </div>
			                        <div class="col-md-4 col-sm-4 col-xs-12">
			                          <button type="button" class="btn btn-success btnAddInputFeFooterAward">+</button>
			                        </div>
	                        	</div>
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
    	var dumpCountFeFooterAward = <%= footerSettingAwardsSize + 1 %>;
    	$('.btnAddInputFeFooterAward').click(function(){
    		dumpCountFeFooterAward += 1;
    		var tempIdInput = "FeFooterAwardInput"+dumpCountFeFooterAward;
    		var tempIdInputWrap = "FeFooterAwardWrap"+dumpCountFeFooterAward;
    		var template = "";
    		template+='<div class="row" id="'+tempIdInputWrap+'" style="margin-bottom: 10px;">';
    		template+='	<div class="col-md-8 col-sm-8 col-xs-12">';
    		template+='		<input id="'+tempIdInput+'" type="text" name="awards[]" required="required" class="form-control">';
    		template+='    </div>';
    		template+='    <div class="col-md-4 col-sm-4 col-xs-12">';
    		template+='      <button type="button" class="btnUploadImage btn btn-success" data-input="#'+tempIdInput+'" data-toggle="modal" data-target="#modalUploadImage"><i class="fa fa-upload"></i></button>';
    		template+='      <button type="button" class="btnRemoveInputFeFooterAward btn btn-danger" data-target="#'+tempIdInputWrap+'"><i class="fa fa-close"></i></button>';
    		template+='    </div>';
    		template+='</div>';
    		$('#FeFooterAwardContainer').prepend(template);
    	});
    	$(document).on('click', '.btnRemoveInputFeFooterAward', function(){
    		var dataTarget = $(this).attr('data-target');
    		$(dataTarget).remove();
    	});
    </script>
    
  </body>
</html>