<%@page import="com.van.travel.models.ServiceItem"%>
<%
	ServiceItem serviceItem = (ServiceItem) request.getAttribute("serviceItem");
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
    <title>Edit Service Item || Admin</title>
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
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Form Design <small>different form elements</small></h2>
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
                    <form id="formEdit" action="<%= request.getAttribute("sitePath") %>/admin/service-item/edit" method="post" data-parsley-validate class="form-horizontal form-label-left">

						<input type="hidden" name="id" value="<%= serviceItem.getId() %>">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Title
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="title" class="form-control" value="<%= serviceItem.getTitle() %>">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Icon
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="icon" class="form-control" value="<%= serviceItem.getIcon() %>">
                        </div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                          <a href="<%= request.getAttribute("sitePath") %>/admin/preview/icon" class="btn btn-success" target="_blank">List</a>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Description
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea class="form-control" name="description"><%= serviceItem.getDescription() %></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Active <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="">
                            <div class="checkbox">
                            	<label><input type="checkbox" id="inputActive" class="js-switch" <% if(serviceItem.isActive()){ %> checked <% } %>/><input type="hidden" name="active"/></label>
	                        </div>
	                      </div>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Priority <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="number" step="1" required="required" name="priority" value="<%= serviceItem.getPriority() %>" class="form-control">
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <a href="<%= request.getAttribute("sitePath") %>/admin/service-item" class="btn btn-primary" type="button">Cancel</a>
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
		 $('#formEdit').on('submit', function() {
			 var temp = $('#inputActive').is(":checked") ? 1 : 0;
			 $('#inputActive').siblings('input[name="active"]').val(temp);
		 });
	</script>
  </body>
</html>