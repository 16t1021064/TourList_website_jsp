<%@page import="com.van.travel.models.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Dashboard</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="<%= request.getAttribute("sitePath") %>/public/be/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2><%= ((Admin) session.getAttribute("admin")).getName() %></h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-wrench"></i> Tour <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/tour">List</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/tour/create">Create</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-wrench"></i> Destination <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/destination">List</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/destination/create">Create</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-wrench"></i> Activity <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/activity">List</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/activity/create">Create</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-wrench"></i> Tag <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/tag">List</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/tag/create">Create</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-wrench"></i> Blog <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/blog">List</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/blog/create">Create</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-wrench"></i> Contact message <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/contactmessage">List</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-wrench"></i> Banner <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/banner">List</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/banner/create">Create</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-wrench"></i> Service Panel <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/service-panel">List</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/service-panel/create">Create</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-wrench"></i> Service Panel <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/service-item">List</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/service-item/create">Create</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-wrench"></i> Page Setting <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/setting">General</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/setting/shop-page-home">Home</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/setting/shop-page-service">Services</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/setting/shop-page-about">About</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/setting/shop-page-contact">Contact</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/setting/shop-page-blogs">Blogs</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/setting/shop-page-destinations">Destinations</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/setting/shop-blog-sidebar">Blog sidebar</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/setting/shop-page-tours">Tours</a></li>
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/setting/shop-panels">Panels</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-wrench"></i> Preview <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<%= request.getAttribute("sitePath") %>/admin/preview/icon" target="_blank">Icon library</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>