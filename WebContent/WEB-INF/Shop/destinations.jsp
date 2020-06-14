<%@page import="com.van.travel.models.setting.ShopPageDestinationsSetting"%>
<%@page import="com.van.travel.models.Destination"%>
<%@page import="java.util.ArrayList"%>
<%
	ArrayList<Destination> listHotDestinations = (ArrayList<Destination>) request.getAttribute("listHotDestinations");
	ShopPageDestinationsSetting shopPageDestinationsSetting =  (ShopPageDestinationsSetting) request.getAttribute("shopPageDestinationsSetting");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">

<head>
    <%@include file="./layout/meta.jsp" %>
    <title>Destinations</title>

    <%@include file="./layout/styles.jsp" %>

</head>

<body class="home page-template-default page page-id-2039 gdlr-core-body tourmaster-body woocommerce-no-js traveltour-body traveltour-body-front traveltour-full  traveltour-with-sticky-navigation gdlr-core-link-to-lightbox">
 	<%@include file="./layout/mobile-header.jsp" %>
    <div class="traveltour-body-outer-wrapper ">
        <div class="traveltour-body-wrapper clearfix  traveltour-with-transparent-header traveltour-with-frame">
            <%@include file="./layout/header.jsp" %>
            <div class="traveltour-page-title-wrap  traveltour-style-large traveltour-center-align" style="background-image: url(<%= shopPageDestinationsSetting.data.get("head_bg") %>)">
                <div class="traveltour-header-transparent-substitute"></div>
                <div class="traveltour-page-title-overlay"></div>
                <div class="traveltour-page-title-container traveltour-container">
                    <div class="traveltour-page-title-content traveltour-item-pdlr">
                        <h1 class="traveltour-page-title"><%= shopPageDestinationsSetting.forItem.get("head_h1") %></h1>
                        <div class="traveltour-page-caption"><%= shopPageDestinationsSetting.forItem.get("head_h2") %></div>
                    </div>
                </div>
            </div>
            <div class="traveltour-page-wrapper" id="traveltour-page-wrapper">
                <div class="gdlr-core-page-builder-body">
                    <div class="gdlr-core-pbf-section">
                        <div class="gdlr-core-pbf-section-container gdlr-core-container clearfix">
                            <div class="gdlr-core-pbf-element">
                                <div class="tourmaster-tour-category clearfix ">
                                	<% for(Destination des : listHotDestinations){ %>
                                    <div class="tourmaster-tour-category-grid tourmaster-item-list  tourmaster-item-pdlr tourmaster-item-mgb tourmaster-column-20 tourmaster-with-thumbnail">
                                        <div class="tourmaster-tour-category-item-wrap">
                                            <div class="tourmaster-tour-category-thumbnail tourmaster-media-image"><img src="<%= des.getThumbnail() %>" alt="" width="800" height="960" /></div>
                                            <div class="tourmaster-tour-category-overlay"></div>
                                            <div class="tourmaster-tour-category-overlay-front"></div>
                                            <div class="tourmaster-tour-category-head">
                                                <div class="tourmaster-tour-category-head-display clearfix">
                                                    <h3 class="tourmaster-tour-category-title"><i class="icon_pin_alt" ></i><%= des.getName() %></h3>
                                                    <div class="tourmaster-tour-category-count"><%= des.getTourCount() %> tours</div>
                                                </div>
                                                <div class="tourmaster-tour-category-head-animate"><a class="tourmaster-tour-category-head-link" href="<%= request.getAttribute("sitePath") %>/tours?des=<%= des.getId() %>">View all tours</a>
                                                    <div class="tourmaster-tour-category-head-divider"></div>
                                                </div>
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
            <%@include file="./layout/footer.jsp" %>
        </div>
    </div>

    <%@include file="./layout/scripts.jsp" %>
	<script>
		jQuery('#menu-main-navigation-1 li.menu-item[data-name="destinations"]').addClass("current-menu-item");
	</script>

</body>
</html>