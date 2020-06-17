<%
	Admin admin2 = (Admin) request.getAttribute("admin2");
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
    <title>Edit admin || Admin</title>
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
                    <h2>Edit admin <small><%= admin2.getName() %></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <ul class="dropdown-menu" role="menu">
                        </ul>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="formEdit" action="<%= request.getAttribute("sitePath") %>/admin/admin/edit" method="post" data-parsley-validate class="form-horizontal form-label-left">
						
						<input type="hidden" name="id" value="<%= admin2.getId() %>" >
						<input type="hidden" name="action-request" value="UPDATE-INFO" >
						
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Name
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="name" value="<%= admin2.getName() %>" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Email
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" name="email" value="<%= admin2.getEmail() %>" class="form-control">
                        </div>
                      </div>
                      

                      
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Is superadmin <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="">
                            <div class="checkbox">
                            	<label><input type="checkbox" id="inputIsSuperadmin" <% if(admin2.isSuperadmin()){ %> checked <% } %> class="js-switch" /><input type="hidden" name="is_superadmin"/></label>
	                        </div>
	                      </div>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <a href="<%= request.getAttribute("sitePath") %>/admin/admin" class="btn btn-primary" type="button">Cancel</a>
						  <button class="btn btn-primary" type="reset">Reset</button>
                          <button type="submit" class="btn btn-success">Submit</button>
                          <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modalChangePassword">Change password</button>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
              </div>
            </div>
		</div>
		
		<form action="<%= request.getAttribute("sitePath") %>/admin/admin/edit" method="post" data-parsley-validate>
			<div id="modalChangePassword" data-input="" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
			  <div class="modal-dialog modal-lg">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
			        </button>
			        <h4 class="modal-title" id="myModalLabel">Change password</h4>
			      </div>
			      <div class="modal-body">
			      
			      		<input type="hidden" name="id" value="<%= admin2.getId() %>" >
			      		<input type="hidden" name="action-request" value="UPDATE-PASSWORD" >
			        
					  <div class="form-group row">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">New password
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="password" minlength="8" name="password" class="form-control">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Re-type
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="password" minlength="8" name="password2" class="form-control">
                        </div>
                      </div>
			        
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        <button type="submit" class="btn btn-primary">Update</button>
			      </div>
			
			    </div>
			  </div>
			</div>
		</form>
		
		<%@include file="./layout/footer.jsp" %>
      </div>
    </div>
    <%@include file="./layout/scripts.jsp" %>
    
    <%@include file="./layout/upload.jsp" %>
    <script>
		 $('#formEdit').on('submit', function() {
			 var temp = $('#inputIsSuperadmin').is(":checked") ? 1 : 0;
			 $('#inputIsSuperadmin').siblings('input[name="is_superadmin"]').val(temp);
		 });
	</script>
  </body>
</html>