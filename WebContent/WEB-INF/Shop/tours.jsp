<%@page import="com.van.travel.models.setting.ShopPanelsSetting"%>
<%@page import="com.van.travel.models.Blog"%>
<%@page import="com.van.travel.models.setting.ShopPageToursSetting"%>
<%@page import="com.van.travel.models.Activity"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.van.travel.models.Tour"%>
<%@page import="com.van.travel.common.DateConvertion"%>
<%@page import="com.van.travel.common.PaginationData"%>
<%
	PaginationData dataTours = (PaginationData) request.getAttribute("dataTours");
	ArrayList<Tour> listTours = (ArrayList<Tour>) dataTours.data;
	ArrayList<Destination> hotDestinations = (ArrayList<Destination>) request.getAttribute("hotDestinations");
	ArrayList<Activity> hotActivities = (ArrayList<Activity>) request.getAttribute("hotActivities");
	ArrayList<Activity> listHotActivities = (ArrayList<Activity>) request.getAttribute("listHotActivities");
	ArrayList<Tour> upcomingTours = (ArrayList<Tour>) request.getAttribute("upcomingTours");
	DateConvertion dateConvertion = new DateConvertion("dd/MM");
	DateConvertion dateConvertion2 = new DateConvertion("dd.MM.yyyy");
	Object[] filters = (Object[]) request.getAttribute("filters");
	ShopPageToursSetting shopPageToursSetting = (ShopPageToursSetting) request.getAttribute("shopPageToursSetting");
	ArrayList<Blog> recentArticles = (ArrayList<Blog>) request.getAttribute("recentArticles");
	ShopPanelsSetting shopPanelsSetting = (ShopPanelsSetting) request.getAttribute("shopPanelsSetting");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">

<head>

    <%@include file="./layout/meta.jsp" %>
    <title>Tours</title>

    <%@include file="./layout/styles.jsp" %>
</head>

<body class="home page-template-default page page-id-2039 gdlr-core-body tourmaster-body woocommerce-no-js traveltour-body traveltour-body-front traveltour-full  traveltour-with-sticky-navigation gdlr-core-link-to-lightbox">
 	<%@include file="./layout/mobile-header.jsp" %>
    <div class="traveltour-body-outer-wrapper ">
        <div class="traveltour-body-wrapper clearfix  traveltour-with-transparent-header traveltour-with-frame">
            <%@include file="./layout/header.jsp" %>
            <div class="traveltour-page-wrapper" id="traveltour-page-wrapper">
                <div class="gdlr-core-page-builder-body">
                    <div class="gdlr-core-pbf-wrapper  gdlr-core-hide-in-mobile" id="div_aeb3_0" data-skin="Dark Search HP4">
                        <div class="gdlr-core-pbf-background-wrap">
                            <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" id="div_aeb3_1" data-parallax-speed="0.2" style="background-image: url(<%= shopPageToursSetting.data.get("head_bg") %>)"></div>
                        </div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_aeb3_2">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" id="h3_aeb3_0">
                                            	<span class="gdlr-core-title-item-left-icon" id="span_aeb3_0"  >
                                            		<i class="icon_search"  ></i>
                                            	</span>
                                            	<%= shopPanelsSetting.searchTour.get("title_h1") %>
                                            	<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="tourmaster-tour-search-item clearfix tourmaster-style-column tourmaster-column-count-6 tourmaster-item-pdlr">
                                        <div class="tourmaster-tour-search-wrap ">
                                            <form class="tourmaster-form-field tourmaster-with-border" action="<%= request.getAttribute("sitePath") %>/tours" method="GET">
                                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-keywords">
                                                    <label><%= shopPanelsSetting.searchTour.get("label_key") %></label>
                                                    <div class="tourmaster-tour-search-field-inner">
                                                        <input name="q" id="filterQ" type="text" value="" />
                                                    </div>
                                                </div>
                                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-tax">
                                                    <label><%= shopPanelsSetting.searchTour.get("label_act") %></label>
                                                    <div class="tourmaster-combobox-wrap">
                                                        <select name="act" id="filterAct">
                                                            <option value=""><%= shopPanelsSetting.searchTour.get("select_any") %></option>
                                                            <% for(Activity act : hotActivities) { %>
                                                            <option value="<%= act.getId() %>"><%= act.getName() %></option>
                                                            <% } %>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-tax">
                                                    <label><%= shopPanelsSetting.searchTour.get("label_des") %></label>
                                                    <div class="tourmaster-combobox-wrap">
                                                        <select name="des" id="filterDes">
                                                            <option value=""><%= shopPanelsSetting.searchTour.get("select_any") %></option>
                                                            <% for(Destination des : hotDestinations) { %>
                                                            <option value="<%= des.getId() %>"><%= des.getName() %></option>
                                                            <% } %>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-duration">
                                                    <label><%= shopPanelsSetting.searchTour.get("label_dur") %></label>
                                                    <div class="tourmaster-combobox-wrap">
                                                        <select name="dur" id="filterDur">
                                                            <option value=""><%= shopPanelsSetting.searchTour.get("select_any") %></option>
                                                            <option value="1">1 Day Tour</option>
                                                            <option value="2">2-4 Days Tour</option>
                                                            <option value="5">5-7 Days Tour</option>
                                                            <option value="7">7+ Days Tour</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-date">
                                                    <label><%= shopPanelsSetting.searchTour.get("label_dat") %></label>
                                                    <div class="tourmaster-datepicker-wrap">
                                                        <input class="tourmaster-datepicker" type="text" value="" id="filterDate" data-date-format="d M yy" />
                                                        <input class="tourmaster-datepicker-alt" name="date" type="hidden" value="" />
                                                    </div>
                                                </div>
                                                <input class="tourmaster-tour-search-submit" type="submit" value="<%= shopPanelsSetting.searchTour.get("label_submit") %>" />
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-sidebar-wrapper ">
                        <div class="gdlr-core-pbf-sidebar-container gdlr-core-line-height-0 clearfix gdlr-core-js gdlr-core-container">
                            <div class="gdlr-core-pbf-sidebar-content  gdlr-core-column-40 gdlr-core-pbf-sidebar-padding gdlr-core-line-height gdlr-core-column-extend-left">
                                <div class="gdlr-core-pbf-background-wrap" id="div_aeb3_3"></div>
                                <div class="gdlr-core-pbf-sidebar-content-inner">
                                    <div class="gdlr-core-pbf-element">
                                        <div class="tourmaster-tour-item clearfix  tourmaster-tour-item-style-medium">
                                            <div class="tourmaster-tour-item-holder gdlr-core-js-2 clearfix" data-layout="fitrows">
                                            	<% for(Tour tour : listTours){ %>
                                                <div class="tourmaster-item-list tourmaster-tour-medium tourmaster-item-mglr clearfix tourmaster-tour-frame gdlr-core-skin-e-background">
                                                    <div class="tourmaster-tour-medium-inner">
                                                        <div class="tourmaster-tour-thumbnail tourmaster-media-image">
                                                            <a href="<%= request.getAttribute("sitePath") %>/tour?id=<%= tour.getId() %>"><img src="<%= tour.getThumbnail600x700() %>" alt="" width="600" height="700" /></a>
                                                            
                                                            <% if(tour.getoPrice() != tour.getpPrice()){ %>
                                                            <div class="custom-label-sale tourmaster-thumbnail-ribbon gdlr-core-outer-frame-element">
                                                                <div class="tourmaster-thumbnail-ribbon-cornor"></div>PROMOTION
                                                            </div>
                                                            <% } %>
                                                            
                                                        </div>
                                                        <div class="tourmaster-tour-content-wrap clearfix">
                                                            <div class="tourmaster-content-left">
                                                                <h3 class="tourmaster-tour-title gdlr-core-skin-title" ><a href="<%= request.getAttribute("sitePath") %>/tour?id=<%= tour.getId() %>" ><%= tour.getDestinationName() %> &#8211; <%= tour.getName() %></a></h3>
                                                                <div class="tourmaster-tour-info-wrap clearfix">
                                                                    <div class="tourmaster-tour-info tourmaster-tour-info-duration-text "><i class="icon_clock_alt"></i><%= tour.getDaysText() %></div>
                                                                    <div class="tourmaster-tour-info tourmaster-tour-info-availability "><i class="fa fa-calendar"></i>Availability : <%= dateConvertion.toStringDate(tour.getBeginTime()) %> - <%= dateConvertion.toStringDate(tour.getEndTime()) %></div>
                                                                </div>
                                                                <div class="tourmaster-tour-content"><%= tour.getDescription() %> [&hellip;]</div>
                                                            </div>
                                                            <div class="tourmaster-content-right tourmaster-center-tour-content">
                                                                <% if(tour.getoPrice() == tour.getpPrice()){ %>
                                                                <div class="tourmaster-tour-price-wrap "><span class="tourmaster-tour-price"><span class="tourmaster-head">From</span><span class="tourmaster-tail">$<%= tour.getpPrice() %></span></span>
                                                                </div>
                                                                <% }else{ %>
                                                                <div class="tourmaster-tour-price-wrap tourmaster-discount"><span class="tourmaster-tour-price"><span class="tourmaster-head">From</span><span class="tourmaster-tail">$<%= tour.getoPrice() %></span></span><span class="tourmaster-tour-discount-price">$<%= tour.getpPrice() %></span></div>
                                                                <% } %>
																<div class="tourmaster-tour-rating"><% for(int i =0; i< tour.getStar(); i++){ %><i class="fa fa-star"></i><% } %><% for(int i =0; i< 5-tour.getStar(); i++){ %><i class="fa fa-star-o"></i><% } %><span class="tourmaster-tour-rating-text">(<%= tour.getReviews().size() %> Reviews)</span></div>
                                                        		<a class="tourmaster-tour-view-more" href="../switzerland-7-days-in-zurich-zermatt/index.html">View Details</a>
                                                        	</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <% } %>
                                            </div>
                                            <div class="custom-pagination" data-total-page="<%= dataTours.totalPage %>" data-current-page="<%= dataTours.currentPage %>" 
                                            		data-path-default="<%= request.getAttribute("sitePath") %>/tours?q=<%= filters[1] == null ? "" : filters[1] %><% if(filters[0] != null){ %>&type=<%= filters[0] %><% } %><% if(filters[2] != null){ %>&act=<%= filters[2] %><% } %><% if(filters[3] != null){ %>&des=<%= filters[3] %><% } %><% if(filters[4] != null){ %>&dur=<%= filters[4] %><% } %><% if(filters[5] != null){ %>&date=<%= filters[5] %><% } %>"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="gdlr-core-pbf-sidebar-right gdlr-core-column-extend-right  traveltour-sidebar-area gdlr-core-column-20 gdlr-core-pbf-sidebar-padding  gdlr-core-line-height" id="div_aeb3_8">
                                <div class="gdlr-core-pbf-background-wrap" id="div_aeb3_9"></div>
                                <div class="gdlr-core-sidebar-item gdlr-core-item-pdlr">
                                    <div id="tourmaster-tour-widget-5" class="widget widget_tourmaster-tour-widget traveltour-widget">
                                        <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text"><%= shopPageToursSetting.forItem.get("sidebar_tour_h1") %></span></h3><span class="clear"></span>
                                        <div class="tourmaster-recent-tour-widget tourmaster-tour-item">
                                            <% for(Tour upcomingTour : upcomingTours){ %>
                                            <div class="tourmaster-item-list tourmaster-tour-widget tourmaster-item-pdlr">
                                                <div class="tourmaster-tour-widget-inner clearfix">
                                                    <div class="tourmaster-tour-thumbnail tourmaster-media-image">
                                                        <a href="<%= request.getAttribute("sitePath") %>/tour?id=<%= upcomingTour.getId() %>"><img src="<%= upcomingTour.getThumbnail150x150() %>" alt="" width="150" height="150" /></a>
                                                    </div>
                                                    <div class="tourmaster-tour-content-wrap">
                                                        <h3 class="tourmaster-tour-title gdlr-core-skin-title"><a href="<%= request.getAttribute("sitePath") %>/tour?id=<%= upcomingTour.getId() %>" ><%= upcomingTour.getDestinationName() %> &#8211; <%= upcomingTour.getName() %></a></h3>
                                                        <div class="tourmaster-tour-content-info clearfix <% if(upcomingTour.getoPrice() != upcomingTour.getpPrice()){ %>tourmaster-with-ribbon<% } %>">
                                                        	<% if(upcomingTour.getoPrice() == upcomingTour.getpPrice()){ %>
                                                            <div class="tourmaster-tour-price-wrap "><span class="tourmaster-tour-price"><span class="tourmaster-head"><%= shopPageToursSetting.forItem.get("sidebar_prefix_price") %></span><span class="tourmaster-tail">$<%= upcomingTour.getpPrice() %></span></span>
                                                            </div>
                                                            <% }else{ %>
                                                            <div class="tourmaster-thumbnail-ribbon gdlr-core-outer-frame-element" id="div_aeb3_10">
                                                                <div class="tourmaster-thumbnail-ribbon-cornor" id="div_aeb3_11"></div>SALE OFF</div>
                                                            <div class="tourmaster-tour-price-wrap tourmaster-discount"><span class="tourmaster-tour-price"><span class="tourmaster-head"><%= shopPageToursSetting.forItem.get("sidebar_prefix_price") %></span><span class="tourmaster-tail">$<%= upcomingTour.getoPrice() %></span></span><span class="tourmaster-tour-discount-price">$<%= upcomingTour.getpPrice() %></span></div>
                                                            <% } %>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <% } %>
                                            
                                        </div>
                                    </div>
                                    <div id="text-10" class="widget widget_text traveltour-widget">
                                        <div class="textwidget">
                                            <div class="gdlr-core-widget-box-shortcode " id="div_aeb3_14" style="background-image: url(<%= shopPanelsSetting.support.get("bg") %>)">
                                                <h3 class="gdlr-core-widget-box-shortcode-title" id="h3_aeb3_7"><%= shopPanelsSetting.support.get("title_h1") %></h3>
                                                <div class="gdlr-core-widget-box-shortcode-content">
                                                    <p><%= shopPanelsSetting.support.get("description") %></p>
                                                    <p><i class="fa fa-phone" id="i_aeb3_4"></i> <span id="span_aeb3_1"><%= shopPanelsSetting.support.get("phone") %></span></p>
                                                    <p><span id="span_aeb3_2"><%= shopPanelsSetting.support.get("email") %></span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="nav_menu-3" class="widget widget_nav_menu traveltour-widget">
                                        <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text"><%= shopPageToursSetting.forItem.get("sidebar_activity_h1") %></span></h3><span class="clear"></span>
                                        <div class="menu-tour-category-container">
                                            <ul id="menu-tour-category" class="menu">
                                            	<% for(Activity act : listHotActivities){ %>
                                                <li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4913"><a href="<%= request.getAttribute("sitePath") %>/tours?act=<%= act.getId() %>"><%= act.getName() %></a></li>
                                            	<% } %>
                                            </ul>
                                        </div>
                                    </div>
                                    <div id="gdlr-core-recent-post-widget-4" class="widget widget_gdlr-core-recent-post-widget traveltour-widget">
                                        <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text"><%= shopPageToursSetting.forItem.get("sidebar_article_h1") %></span></h3><span class="clear"></span>
                                        <div class="gdlr-core-recent-post-widget-wrap gdlr-core-style-1">
                                            <% for(Blog blog : recentArticles){ %>
                                            <div class="gdlr-core-recent-post-widget clearfix">
                                                <div class="gdlr-core-recent-post-widget-thumbnail gdlr-core-media-image"><img src="<%= blog.getThumbnail150x150() %>" alt="" width="150" height="150" /></div>
                                                <div class="gdlr-core-recent-post-widget-content">
                                                    <div class="gdlr-core-recent-post-widget-title">
                                                    	<a href="<%= request.getAttribute("sitePath") %>/blog?slug=<%= blog.getSlug() %>"><%= blog.getTitle() %></a>
                                                    </div>
                                                    <div class="gdlr-core-recent-post-widget-info">
                                                    	<span class="gdlr-core-blog-info gdlr-core-blog-info-font gdlr-core-skin-caption gdlr-core-blog-info-date">
                                                    		<span class="gdlr-core-head" >
                                                    			<i class="icon_clock_alt" ></i>
                                                    		</span>
                                                    		<a href="javascript:void(0)"><%= dateConvertion2.toStringDate(blog.getCreatedTime()) %></a>
                                                    	</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <% } %>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%@include file="./layout/footer.jsp" %>
        </div>
    </div>

    <%@include file="./layout/scripts.jsp" %>
    
    <script>
    
    jQuery(function($){
    	<% if(filters[1] != null){ %>
			$('#filterQ').val('<%= filters[1] %>');
		<% } %>
		<% if(filters[2] != null){ %>
			$('#filterAct option[value="<%= filters[2] %>"]').attr("selected", "selected");
		<% } %>
		<% if(filters[3] != null){ %>
			$('#filterDes option[value="<%= filters[3] %>"]').attr("selected", "selected");
		<% } %>
		<% if(filters[4] != null){ %>
			$('#filterDur option[value="<%= filters[4] %>"]').attr("selected", "selected");
		<% } %>
		<% if(filters[5] != null){ %>
			$('#filterDate').datepicker('setDate', new Date('<%= filters[5] %>'));
		<% } %>
    });


    </script>
	<script>
		jQuery('#menu-main-navigation-1 li.menu-item[data-name="tours"]').addClass("current-menu-item");
	</script>
</body>
</html>