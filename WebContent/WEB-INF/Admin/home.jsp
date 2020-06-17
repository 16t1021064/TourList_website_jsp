<%@page import="com.van.travel.models.Comment"%>
<%@page import="com.van.travel.common.DateConvertion"%>
<%@page import="com.van.travel.models.ContactMessage"%>
<%@page import="java.util.ArrayList"%>
<%
	DateConvertion dateConvertion = new DateConvertion("yyyy-MM-dd");
	ArrayList<ContactMessage> listUnreadContactMessage = (ArrayList<ContactMessage>) request.getAttribute("listUnreadContactMessage");
	ArrayList<Comment> listUnreadComment = (ArrayList<Comment>) request.getAttribute("listUnreadComment");
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
    <title>Dashboard || Admin</title>
	<%@include file="./layout/style.jsp" %>
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
		<%@include file="./layout/sidebar.jsp" %>
		<%@include file="./layout/topbar.jsp" %>
        <div class="right_col" role="main">
			<%@include file="./layout/noti.jsp" %>
        
        	<% if(listUnreadContactMessage.size() > 0){ %>
        	<h5><span class="label label-primary">New contact message:</span></h5>
        	<ul>
        		<% for(ContactMessage item : listUnreadContactMessage){ %>
        		<li>
        			<a href="<%= request.getAttribute("sitePath") %>/admin/contactmessage/edit?id=<%= item.getId() %>">
        				<%= item.getName() %> - <%= dateConvertion.toStringDate(item.getSubmitTime()) %>
        			</a>
        		</li>
        		<% } %>
        	</ul>
        	<% } %>
        	
        	<% if(listUnreadComment.size() > 0){ %>
        	<h5><span class="label label-primary">New comment:</span></h5>
        	<ul>
        		<% for(Comment item : listUnreadComment){ %>
        		<li>
        			<a href="<%= request.getAttribute("sitePath") %>/admin/comment/edit?id=<%= item.getId() %>">
        				<%= item.getName() %> - <%= dateConvertion.toStringDate(item.getCreatedTime()) %>
        			</a>
        		</li>
        		<% } %>
        	</ul>
        	<% } %>
        	
        </div>
		<%@include file="./layout/footer.jsp" %>
      </div>
    </div>
    <%@include file="./layout/scripts.jsp" %>
  </body>
</html>