<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	Object successNotis = session.getAttribute("noti_success");
    %>
    
    <% if(successNotis != null){ %>
    	<% String[] successNotiss = (String[]) successNotis; %>
    	<% if(successNotiss.length > 0){ %>
    		<div style="padding-top: 70px;padding-bottom: 10px;">
    		<div class="alert alert-success" role="alert">
	    	<% for(String s : successNotiss){ %>
				  <p><%= s %></p>
			<% } %>
			</div>
			</div>
		<% } %>
		<% session.setAttribute("noti_success", null); %>
	<% } %>
	
	<%
    	Object dangerNotis = session.getAttribute("noti_danger");
    %>
    
    <% if(dangerNotis != null){ %>
    	<% String[] dangerNotiss = (String[]) dangerNotis; %>
    	<% if(dangerNotiss.length > 0){ %>
    		<div style="padding-top: 70px;padding-bottom: 10px;">
    		<div class="alert alert-danger" role="alert">
	    	<% for(String s : dangerNotiss){ %>
				  <p><%= s %></p>
			<% } %>
			</div>
			</div>
		<% } %>
		<% session.setAttribute("noti_danger", null); %>
	<% } %>
	
	<%
    	Object warningNotis = session.getAttribute("noti_warning");
    %>
    
    <% if(warningNotis != null){ %>
    	<% String[] warningNotiss = (String[]) warningNotis; %>
    	<% if(warningNotiss.length > 0){ %>
    		<div style="padding-top: 70px;padding-bottom: 10px;">
    		<div class="alert alert-warning" role="alert">
	    	<% for(String s : warningNotiss){ %>
				  <p><%= s %></p>
			<% } %>
			</div>
			</div>
		<% } %>
		<% session.setAttribute("noti_warning", null); %>
	<% } %>
	
	<%
    	Object infoNotis = session.getAttribute("noti_info");
    %>
    
    <% if(infoNotis != null){ %>
    	<% String[] infoNotiss = (String[]) infoNotis; %>
    	<% if(infoNotiss.length > 0){ %>
    		<div style="padding-top: 70px;padding-bottom: 10px;">
    		<div class="alert alert-info" role="alert">
	    	<% for(String s : infoNotiss){ %>
				  <p><%= s %></p>
			<% } %>
			</div>
			</div>
		<% } %>
		<% session.setAttribute("noti_info", null); %>
	<% } %>