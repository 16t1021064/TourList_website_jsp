<%@page import="com.van.travel.models.setting.InfosSetting"%>
<%@page import="com.van.travel.models.Destination"%>
<%@page import="com.van.travel.web.views.HeaderView"%>
<%
	HeaderView header_headerView = new HeaderView();
	InfosSetting shopCtrl_InfosSetting_header = (InfosSetting) request.getAttribute("shopCtrl_InfosSetting");
%>
<div class="traveltour-header-background-transparent">
     <div class="traveltour-top-bar">
         <div class="traveltour-top-bar-background"></div>
         <div class="traveltour-top-bar-container clearfix traveltour-container ">
             
         <div class="traveltour-top-bar-left traveltour-item-pdlr">
             <i class="fa fa-phone" id="i_b45c_2"></i> <%= shopCtrl_InfosSetting_header.data.get("shop_phone") %> 
             <i class="fa fa-envelope-o" id="i_b45c_3"></i> <%= shopCtrl_InfosSetting_header.data.get("shop_email") %>
         </div>
         <div class="traveltour-top-bar-right traveltour-item-pdlr">
             <div class="traveltour-top-bar-right-social">
             	 <% if(!shopCtrl_InfosSetting_header.data.get("shop_media_fb").equals("")){ %>
                 <a href="<%= shopCtrl_InfosSetting_header.data.get("shop_media_fb") %>" target="_blank" class="traveltour-top-bar-social-icon" title="facebook">
                     <i class="fa fa-facebook" ></i>
                 </a>
                 <% } %>
                 <% if(!shopCtrl_InfosSetting_header.data.get("shop_media_yt").equals("")){ %>
                 <a href="<%= shopCtrl_InfosSetting_header.data.get("shop_media_yt") %>" target="_blank" class="traveltour-top-bar-social-icon" title="youtube">
                     <i class="fa fa-youtube" ></i>
                 </a>
                 <% } %>
                 <% if(!shopCtrl_InfosSetting_header.data.get("shop_media_ig").equals("")){ %>
                 <a href="<%= shopCtrl_InfosSetting_header.data.get("shop_media_ig") %>" target="_blank" class="traveltour-top-bar-social-icon" title="instagram">
                     <i class="fa fa-instagram" ></i>
                 </a>
                 <% } %>
                 <% if(!shopCtrl_InfosSetting_header.data.get("shop_media_tw").equals("")){ %>
                 <a href="<%= shopCtrl_InfosSetting_header.data.get("shop_media_tw") %>" target="_blank" class="traveltour-top-bar-social-icon" title="twitter">
                     <i class="fa fa-twitter" ></i>
                 </a>
                 <% } %>
             </div>

             </div>
         </div>
     </div>
        <header class="traveltour-header-wrap traveltour-header-style-plain  traveltour-style-menu-right traveltour-sticky-navigation traveltour-style-slide">
            <div class="traveltour-header-background"></div>
            <div class="traveltour-header-container  traveltour-container">
                <div class="traveltour-header-container-inner clearfix">
                    <div class="traveltour-logo  traveltour-item-pdlr">
                        <div class="traveltour-logo-inner">
                            <a href="<%= request.getAttribute("sitePath") %>"><img src="<%= shopCtrl_InfosSetting_header.data.get("shop_logo") %>" alt="" /></a>
                        </div>
                    </div>
                    <div class="traveltour-navigation traveltour-item-pdlr clearfix ">
                        <div class="traveltour-main-menu" id="traveltour-main-menu">
                            <ul id="menu-main-navigation-1" class="sf-menu">
							    <li class="menu-item traveltour-normal-menu menu-item-home" data-name="home"><a href="<%= request.getAttribute("sitePath") %>/">Home</a></li>
							    <li class="menu-item menu-item-has-children traveltour-normal-menu" data-name="destinations"><a href="<%= request.getAttribute("sitePath") %>/destinations" class="sf-with-ul-pre">Destinations</a>
							        <ul class="sub-menu">
							        	<% for(Destination des : header_headerView.destinations){ %>
							            <li class="menu-item" data-size="60"><a href="<%= request.getAttribute("sitePath") %>/tours?des=<%= des.getId() %>"><%= des.getName() %></a></li>
							            <% } %>
							        </ul>
							    </li>
							    <li class="menu-item menu-item-has-children traveltour-normal-menu" data-name="tours"><a href="<%= request.getAttribute("sitePath") %>/tours" class="sf-with-ul-pre">List Tour</a>
							        <ul class="sub-menu">
							            <li class="menu-item" data-size="60"><a href="<%= request.getAttribute("sitePath") %>/tours?type=hot">Hot Tours</a></li>
							            <li class="menu-item" data-size="60"><a href="<%= request.getAttribute("sitePath") %>/tours?type=promotion">Promotion Tours</a></li>
							            <li class="menu-item" data-size="60"><a href="<%= request.getAttribute("sitePath") %>/tours?type=upcoming">Upcoming Tours</a></li>
							        </ul>
							    </li>
							    <li class="menu-item traveltour-normal-menu" data-name="blogs"><a href="<%= request.getAttribute("sitePath") %>/blogs">Blogs</a></li>
							    <li class="menu-item traveltour-normal-menu" data-name="services"><a href="<%= request.getAttribute("sitePath") %>/services">Services</a></li>
							    <li class="menu-item traveltour-normal-menu" data-name="about"><a href="<%= request.getAttribute("sitePath") %>/about">About</a></li>
							    <li class="menu-item traveltour-normal-menu" data-name="contact"><a href="<%= request.getAttribute("sitePath") %>/contact">Contact</a></li>
    						</ul>
                            <div class="traveltour-navigation-slide-bar" id="traveltour-navigation-slide-bar"></div>
                        </div>
                        <div class="traveltour-main-menu-right-wrap clearfix ">
                            <div class="traveltour-main-menu-search" id="traveltour-top-search"><i class="fa fa-search"></i></div>
                            <div class="traveltour-top-search-wrap">
                                <div class="traveltour-top-search-close"></div>
                                <div class="traveltour-top-search-row">
                                    <div class="traveltour-top-search-cell">
                                        <form role="search" method="get" class="search-form" action="#">
                                            <input type="text" class="search-field traveltour-title-font" placeholder="Search..." value="" name="s">
                                            <div class="traveltour-top-search-submit"><i class="fa fa-search"></i></div>
                                            <input type="submit" class="search-submit" value="Search">
                                            <div class="traveltour-top-search-close"><i class="icon_close"></i></div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>