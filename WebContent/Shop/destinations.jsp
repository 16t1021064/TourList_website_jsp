<%@page import="com.van.travel.models.Destination"%>
<%@page import="java.util.ArrayList"%>
<%
	ArrayList<Destination> listHotDestinations = (ArrayList<Destination>) request.getAttribute("listHotDestinations");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" prefix="og: http://ogp.me/ns#" class="no-js">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="pingback" href="xmlrpc.php">
    <title>Destinations</title>

    <%@include file="./layout/styles.jsp" %>

</head>

<body class="home page-template-default page page-id-2039 gdlr-core-body tourmaster-body woocommerce-no-js traveltour-body traveltour-body-front traveltour-full  traveltour-with-sticky-navigation gdlr-core-link-to-lightbox">
 	<%@include file="./layout/mobile-header.jsp" %>
    <div class="traveltour-body-outer-wrapper ">
        <div class="traveltour-body-wrapper clearfix  traveltour-with-transparent-header traveltour-with-frame">
            <%@include file="./layout/header.jsp" %>
            <div class="traveltour-page-title-wrap  traveltour-style-large traveltour-center-align">
                <div class="traveltour-header-transparent-substitute"></div>
                <div class="traveltour-page-title-overlay"></div>
                <div class="traveltour-page-title-container traveltour-container">
                    <div class="traveltour-page-title-content traveltour-item-pdlr">
                        <h1 class="traveltour-page-title">Destinations</h1>
                        <div class="traveltour-page-caption">Explore Tours By Destinations</div>
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
                                                <div class="tourmaster-tour-category-head-animate"><a class="tourmaster-tour-category-head-link" href="../tour-destination/south-america/index.html">View all tours</a>
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
    </div><a href="#traveltour-top-anchor" class="traveltour-footer-back-to-top-button" id="traveltour-footer-back-to-top-button"><i class="fa fa-angle-up" ></i></a>

    <%@include file="./layout/scripts.jsp" %>


</body>
</html>