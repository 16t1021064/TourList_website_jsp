<%@page import="com.van.travel.models.ServiceItem"%>
<%@page import="com.van.travel.models.ServicePanel"%>
<%@page import="java.util.ArrayList"%>
<%
	ArrayList<ServicePanel> listServicePanel = (ArrayList<ServicePanel>) request.getAttribute("listServicePanel");
	ArrayList<ServiceItem> listServiceItem = (ArrayList<ServiceItem>) request.getAttribute("listServiceItem");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en-US">

<head>
    <%@include file="./layout/meta.jsp" %>
    <title>Services</title>

    <%@include file="./layout/styles.jsp" %>

</head>

<body class="home page-template-default page page-id-2039 gdlr-core-body tourmaster-body woocommerce-no-js traveltour-body traveltour-body-front traveltour-full  traveltour-with-sticky-navigation gdlr-core-link-to-lightbox">
 	<%@include file="./layout/mobile-header.jsp" %>
 	<div class="traveltour-body-outer-wrapper ">
        <div class="traveltour-body-wrapper clearfix  traveltour-with-transparent-header traveltour-with-frame">
            <%@include file="./layout/header.jsp" %>
            <div class="traveltour-page-wrapper" id="traveltour-page-wrapper">
                <div class="gdlr-core-page-builder-body">
                    <div class="gdlr-core-pbf-wrapper " style="margin: 0px 0px 0px 0px;padding: 325px 0px 205px 0px;" data-skin="Dark">
                        <div class="gdlr-core-pbf-background-wrap">
                            <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="background-image: url(<%= request.getAttribute("sitePath") %>/public/fe/upload/section-bg-4.jpg) ;background-size: cover ;background-position: center ;" data-parallax-speed="0.2"></div>
                        </div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js " data-gdlr-animation="fadeInUp" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h1 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 79px ;letter-spacing: 0px ;text-transform: none ;">Services We Provide<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h1></div><span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption" style="font-size: 21px ;color: #999999 ;">A small river named Duden flows by their place.</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% int iServicePanel = 0; %>
                    <% for(ServicePanel servicePanel : listServicePanel){ %>
                    <% iServicePanel = iServicePanel + 1; %>
                    <% if(iServicePanel % 2 == 1){ %>
                    <div class="gdlr-core-pbf-wrapper " style="padding: 0px 0px 0px 0px;">
                        <div class="gdlr-core-pbf-background-wrap" style="background-color: #ffffff ;"></div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first gdlr-core-hide-in-mobile">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js  gdlr-core-column-extend-left" data-sync-height="height-1" data-sync-height-center>
                                        <div class="gdlr-core-pbf-background-wrap">
                                            <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="background-image: url(<%= servicePanel.getImage() %>) ;background-size: cover ;background-position: center ;" data-parallax-speed="0.2"></div>
                                        </div>
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content"></div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-30">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " style="padding: 140px 0px 70px 70px;" data-sync-height="height-1" data-sync-height-center>
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content" data-gdlr-animation="fadeInRight" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr"><span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption" style="font-size: 17px ;"><%= servicePanel.getTextH2() %></span>
                                                    <div class="gdlr-core-title-item-title-wrap">
                                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="letter-spacing: 0px ;text-transform: none ;"><%= servicePanel.getTextH1() %><span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                                                    <div class="gdlr-core-text-box-item-content" style="font-size: 17px ;">
                                                        <p><%= servicePanel.getDescription() %></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% } %>
                    <% if(iServicePanel % 2 == 0){ %>
                    <div class="gdlr-core-pbf-wrapper " style="padding: 0px 0px 0px 0px;">
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " style="padding: 140px 70px 70px 0px;" data-sync-height="height-1" data-sync-height-center>
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content" data-gdlr-animation="fadeInLeft" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr"><span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption" style="font-size: 17px ;"><%= servicePanel.getTextH1() %></span>
                                                    <div class="gdlr-core-title-item-title-wrap">
                                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="letter-spacing: 0px ;text-transform: none ;"><%= servicePanel.getTextH1() %><span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                                                    <div class="gdlr-core-text-box-item-content" style="font-size: 17px ;">
                                                        <p><%= servicePanel.getDescription() %></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-hide-in-mobile">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js  gdlr-core-column-extend-right" data-sync-height="height-1" data-sync-height-center>
                                        <div class="gdlr-core-pbf-background-wrap">
                                            <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="background-image: url(<%= servicePanel.getImage() %>) ;background-size: cover ;background-position: center ;" data-parallax-speed="0.2"></div>
                                        </div>
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% } %>
                    <% } %>
                    
                    <div class="gdlr-core-pbf-wrapper " style="padding: 130px 0px 55px 0px;" data-skin="Dark">
                        <div class="gdlr-core-pbf-background-wrap">
                            <div class="gdlr-core-pbf-background" style="background-image: url(<%= request.getAttribute("sitePath") %>/public/fe/upload/section-bg-3.jpg) ;background-size: cover ;background-position: center ;background-attachment: fixed ;"></div>
                        </div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                            	<% for(int i=1; i<=3; i=i+1){ %>
                            	<%
                            		int ii = i;
                            		if(ii == 3){
                            			ii = 0;
                            		}
                            	%>
                                <div class="gdlr-core-pbf-column gdlr-core-column-20">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " style="padding: 0px 30px 0px 0px;">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js " data-gdlr-animation="fadeInDown" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                                            <% int iii = 0; %>
                                            <% for(ServiceItem serviceItem : listServiceItem){ %>
                                            <% iii = iii + 1; %>
                                            <% if(iii % 3 == ii){ %>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-column-service-item gdlr-core-item-pdb  gdlr-core-left-align gdlr-core-column-service-icon-top gdlr-core-no-caption gdlr-core-item-pdlr" style="margin: 0px 0px 10px 0px;">
                                                    <div class="gdlr-core-column-service-media gdlr-core-media-icon " style="margin-top: 7px;"><i class="<%= serviceItem.getIcon() %>" style="font-size: 40px ;line-height: 40px ;width: 40px ;color: #ffffff ;"></i></div>
                                                    <div class="gdlr-core-column-service-content-wrapper">
                                                        <div class="gdlr-core-column-service-title-wrap">
                                                            <h3 class="gdlr-core-column-service-title gdlr-core-skin-title" style="font-size: 20px ;text-transform: none ;"><%= serviceItem.getTitle() %></h3></div>
                                                        <div class="gdlr-core-column-service-content">
                                                            <p><%= serviceItem.getDescription() %></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <% } %>
                                            <% } %>
                                        </div>
                                    </div>
                                </div>
                                <% } %>
                                
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-wrapper " style="padding: 100px 0px 70px 0px;" data-skin="Grey">
                        <div class="gdlr-core-pbf-background-wrap" style="background-color: #f4f4f4 ;"></div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js " data-gdlr-animation="fadeIn" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-call-to-action-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-style-left-align-right-button">
                                        <div class="gdlr-core-call-to-action-item-inner">
                                            <div class="gdlr-core-call-to-action-item-content-wrap">
                                                <h3 class="gdlr-core-call-to-action-item-title" style="font-size: 30px ;letter-spacing: 0px ;">Interested in our services now?</h3>
                                                <div class="gdlr-core-call-to-action-item-caption gdlr-core-title-font gdlr-core-skin-caption">Far far away, behind the word mountains, far from the countries Vokalia.</div>
                                            </div>
                                            <div class="gdlr-core-call-to-action-item-button"><a class="gdlr-core-button  gdlr-core-button-transparent gdlr-core-button-with-border" href="http://goodlayers.com/" target="_blank"><span class="gdlr-core-content" >Contact Us</span></a></div>
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
    </div><a href="#traveltour-top-anchor" class="traveltour-footer-back-to-top-button" id="traveltour-footer-back-to-top-button"><i class="fa fa-angle-up" ></i></a>
 	
	<%@include file="./layout/scripts.jsp" %>
</body>
</html>