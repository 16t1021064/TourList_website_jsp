<%@page import="com.van.travel.models.Tag"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.van.travel.models.Destination"%>
<%

	ArrayList<Tag> list = (ArrayList<Tag>) request.getAttribute("list");

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
    <title>List Tag || Admin</title>
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
                    <h2>Default Example <small>Users</small></h2>
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
                    <p class="text-muted font-13 m-b-30">
                      DataTables has most features enabled by default, so all you need to do to use it with your own tables is to call the construction function: <code>$().DataTable();</code>
                    </p>
                    <table id="datatable" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>Name</th>
                          <th>Clicked</th>
                          <th>Action</th>
                        </tr>
                      </thead>


                      <tbody>
                      	<% for(Tag tag : list){ %>
                        <tr>
                          <td><%= tag.getName() %></td>
                          <td><%= tag.getClicked() %></td>
                          <td>
                          	<a href="<%= request.getAttribute("sitePath") %>/admin/tag/edit?id=<%= tag.getId() %>" class="btn btn-primary btn-xs">Edit</a>
                          	<a href="javascript:void(0)" data-id="<%= tag.getId() %>" class="btn btn-danger btn-xs btn-delete">Delete</a>
                          </td>
                        </tr>
                        <% } %>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
			</div>
		</div>
		
		<form id="formDelete" method="post" action="<%= request.getAttribute("sitePath") %>/admin/tag/delete" style="display: none;">
			<input type="hidden" name="id">
		</form>
		
		<%@include file="./layout/footer.jsp" %>
      </div>
    </div>
    <%@include file="./layout/scripts.jsp" %>
   <script>
    	$(document).on('click', '.btn-delete' , function(){
    		Swal.fire({
   			  title: 'Are you sure?',
   			  text: "You won't be able to revert this!",
   			  icon: 'warning',
   			  showCancelButton: true,
   			  confirmButtonColor: '#3085d6',
   			  cancelButtonColor: '#d33',
   			  confirmButtonText: 'Yes, delete it!'
   			}).then((result) => {
   			  if (result.value) {
   				var dataId = $(this).attr('data-id');
   	    		$('#formDelete input[name="id"]').val(dataId);
   	    		$('#formDelete').submit();
   			  }
   			});
    	});
    </script>
  </body>
</html>