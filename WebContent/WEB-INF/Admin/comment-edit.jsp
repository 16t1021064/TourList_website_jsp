<%@page import="com.van.travel.models.Comment"%>
<%@page import="com.van.travel.models.Tour"%>
<%@page import="com.van.travel.common.DateConvertion"%>
<%@page import="com.van.travel.models.Review"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.van.travel.models.Destination"%>
<%

	Comment comment = (Comment) request.getAttribute("comment");
	DateConvertion dateConvertion = new DateConvertion("MM-dd-yyyy HH:mm:ss");

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
    <title>Edit Comment || Admin</title>
	<%@include file="./layout/style.jsp" %>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
		<%@include file="./layout/sidebar.jsp" %>
		<%@include file="./layout/topbar.jsp" %>
        <div class="right_col" role="main">
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
                    <form id="formEdit" action="/travel/admin/comment/edit" method="post" data-parsley-validate class="form-horizontal form-label-left">
						<input type="hidden" name="blog_id" value="<%= comment.getBlogId() %>">
						<input type="hidden" name="id" value="<%= comment.getId() %>">
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="name" value="<%= comment.getName() %>" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Email <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" required="required" name="email" value="<%= comment.getEmail() %>" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Content <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <textarea required="required" class="form-control" name="content"><%= comment.getContent() %></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">Created Time <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="form-group">
		                        <div class="input-group date" id="myDatepicker">
		                            <input type="text" class="form-control" value="<%= dateConvertion.toStringDate(comment.getCreatedTime()) %>" name="created_time" />
		                            <span class="input-group-addon">
		                               <span class="glyphicon glyphicon-calendar"></span>
		                            </span>
		                        </div>
		                    </div>
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <a href="/travel/admin/comment?blog_id=<%= comment.getBlogId() %>" class="btn btn-primary" type="button">Cancel</a>
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
    
    
    <!-- Parsley -->
    <script src="/travel/public/be/vendors/parsleyjs/dist/parsley.min.js"></script>
    
    <script>
		$('#myDatepicker').datetimepicker({format: 'MM-DD-YYYY HH:mm:ss', defaultDate: new Date()});
	</script>
  </body>
</html>