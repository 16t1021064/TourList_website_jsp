<%@page import="com.van.travel.models.Destination"%>
<%@page import="com.van.travel.web.views.HeaderView"%>
<%
	HeaderView header_headerView = new HeaderView();
%>
<div class="traveltour-header-background-transparent">
     <div class="traveltour-top-bar">
         <div class="traveltour-top-bar-background"></div>
         <div class="traveltour-top-bar-container clearfix traveltour-container ">
             
         <div class="traveltour-top-bar-left traveltour-item-pdlr">
             <i class="fa fa-phone" id="i_b45c_2"></i> 1.820.3345.33 
             <i class="fa fa-envelope-o" id="i_b45c_3"></i> Contact@TravelTourWP.com
         </div>
         <div class="traveltour-top-bar-right traveltour-item-pdlr">
             <div class="traveltour-top-bar-right-social">
                 <a href="#" target="_blank" class="traveltour-top-bar-social-icon" title="facebook">
                     <i class="fa fa-facebook" ></i>
                 </a>
                 <a href="#" target="_blank" class="traveltour-top-bar-social-icon" title="flickr">
                     <i class="fa fa-flickr" ></i>
                 </a>
                 <a href="#" target="_blank" class="traveltour-top-bar-social-icon" title="google-plus">
                     <i class="fa fa-google-plus" ></i>
                 </a>
                 <a href="#" target="_blank" class="traveltour-top-bar-social-icon" title="twitter">
                     <i class="fa fa-twitter" ></i>
                 </a>
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
                            <a href="index.html"><img src="/travel/public/fe/images/logo.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="traveltour-navigation traveltour-item-pdlr clearfix ">
                        <div class="traveltour-main-menu" id="traveltour-main-menu">
                            <ul id="menu-main-navigation-1" class="sf-menu">
							    <li class="menu-item traveltour-normal-menu current-menu-item menu-item-home"><a href="/travel/home">Home</a></li>
							    <li class="menu-item menu-item-has-children traveltour-normal-menu"><a href="/travel/destinations" class="sf-with-ul-pre">Destinations</a>
							        <ul class="sub-menu">
							        	<% for(Destination des : header_headerView.destinations){ %>
							            <li class="menu-item" data-size="60"><a href="/travel/tours?des=<%= des.getId() %>"><%= des.getName() %></a></li>
							            <% } %>
							        </ul>
							    </li>
							    <li class="menu-item menu-item-has-children traveltour-normal-menu"><a href="/travel/tours" class="sf-with-ul-pre">List Tour</a>
							        <ul class="sub-menu">
							            <li class="menu-item" data-size="60"><a href="/travel/tours?type=hot">Hot Tours</a></li>
							            <li class="menu-item" data-size="60"><a href="/travel/tours?type=promotion">Promotion Tours</a></li>
							            <li class="menu-item" data-size="60"><a href="/travel/tours?type=upcoming">Upcoming Tours</a></li>
							        </ul>
							    </li>
							    <li class="menu-item traveltour-normal-menu"><a href="/travel/services">Services</a></li>
							    <li class="menu-item traveltour-normal-menu"><a href="/travel/about">About</a></li>
							    <li class="menu-item traveltour-normal-menu"><a href="/travel/contact">Contact</a></li>
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