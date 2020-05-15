<%@page import="com.van.travel.models.Review"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.van.travel.models.Itinerary"%>
<%@page import="com.van.travel.models.Service"%>
<%@page import="com.van.travel.common.DateConvertion"%>
<%@page import="com.van.travel.models.Tour"%>
<%
	Tour tour = (Tour) request.getAttribute("tour");
	ArrayList<Tour> relativeTours = (ArrayList<Tour>) request.getAttribute("relativeTours");
	DateConvertion dateConvertion = new DateConvertion("dd.MM");
	DateConvertion dateConvertion2 = new DateConvertion("dd.MM.yyyy");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en-US">

<head>
    <%@include file="./layout/meta.jsp" %>
    <title>Tour: <%= tour.getName() %></title>

    <%@include file="./layout/styles.jsp" %>

</head>

<body class="tour-template-default single single-tour postid-4643 gdlr-core-body tourmaster-body woocommerce-no-js traveltour-body traveltour-body-front traveltour-full  traveltour-with-sticky-navigation gdlr-core-link-to-lightbox">
 	<%@include file="./layout/mobile-header.jsp" %>
 	<div class="traveltour-body-outer-wrapper ">
        <div class="traveltour-body-wrapper clearfix  traveltour-with-transparent-header traveltour-with-frame">
            <%@include file="./layout/header.jsp" %>
            <div class="traveltour-page-wrapper" id="traveltour-page-wrapper">
                <div class="tourmaster-page-wrapper tourmaster-tour-style-1 tourmaster-with-sidebar" id="tourmaster-page-wrapper">

                    <div class="tourmaster-single-header" style="background-image: url(<%= request.getAttribute("sitePath") %>/public/fe/upload/shutterstock_254090041.jpg);">
                        <div class="tourmaster-single-header-background-overlay"></div>
                        <div class="tourmaster-single-header-top-overlay"></div>
                        <div class="tourmaster-single-header-overlay"></div>
                        <div class="tourmaster-single-header-container tourmaster-container">
                            <div class="tourmaster-single-header-container-inner">
                                <div class="tourmaster-single-header-title-wrap tourmaster-item-pdlr">
                                    <h1 class="tourmaster-single-header-title"><%= tour.getNation() %> &#8211;  <%= tour.getState() %>, <%= tour.getName() %></h1>
                                    <div class="tourmaster-tour-rating"><% for(int i =0; i< tour.getStar(); i++){ %><i class="fa fa-star"></i><% } %><% for(int i =0; i< 5-tour.getStar(); i++){ %><i class="fa fa-star-o"></i><% } %><span class="tourmaster-tour-rating-text">(<%= tour.getReviews().size() %> Reviews)</span></div>
                                </div>
                                <div class="tourmaster-header-price tourmaster-item-mglr">
                                    <div class="tourmaster-header-price-ribbon"><% if(tour.getoPrice() != tour.getpPrice()){ %>SALE OFF<% } %></div>
                                    <div class="tourmaster-header-price-wrap">
                                        <div class="tourmaster-header-price-overlay"></div>
                                        <div class="tourmaster-tour-price-wrap tourmaster-discount">
                                        	<span class="tourmaster-tour-price">
                                        		<span class="tourmaster-head">From</span>
                                        		<% if(tour.getoPrice() != tour.getpPrice()){ %><span class="tourmaster-tail">$<%= tour.getoPrice() %></span><% } %>
                                        	</span>
                                        	<span class="tourmaster-tour-discount-price">$<%= tour.getpPrice() %></span>
                                        	<span class="fa fa-info-circle tourmaster-tour-price-info" data-rel="tipsy" title="The initial price based on 1 adult with the lowest price in low season"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tourmaster-template-wrapper">
                        <div class="tourmaster-tour-booking-bar-container tourmaster-container">
                            <div class="tourmaster-tour-booking-bar-container-inner">
                                <div class="tourmaster-tour-booking-bar-anchor tourmaster-item-mglr"></div>
                                <div class="tourmaster-tour-booking-bar-wrap tourmaster-item-mglr" id="tourmaster-tour-booking-bar-wrap">
                                    <div class="tourmaster-tour-booking-bar-outer">
                                        <div class="tourmaster-header-price tourmaster-item-mglr">
                                            <div class="tourmaster-header-price-ribbon"><% if(tour.getoPrice() != tour.getpPrice()){ %>SALE OFF<% } %></div>
                                            <div class="tourmaster-header-price-wrap">
                                                <div class="tourmaster-header-price-overlay"></div>
                                                <div class="tourmaster-tour-price-wrap tourmaster-discount">
                                                	<span class="tourmaster-tour-price">
                                                		<span class="tourmaster-head">From</span>
                                                		<% if(tour.getoPrice() != tour.getpPrice()){ %><span class="tourmaster-tail">$<%= tour.getoPrice() %></span><% } %>
                                                	</span>
                                                	<span class="tourmaster-tour-discount-price">$$<%= tour.getpPrice() %></span>
                                        			<span class="fa fa-info-circle tourmaster-tour-price-info" data-rel="tipsy" title="The initial price based on 1 adult with the lowest price in low season"></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tourmaster-tour-booking-bar-inner">
                                            <div class="tourmaster-booking-tab-title clearfix" id="tourmaster-booking-tab-title">
                                                <div class="tourmaster-booking-tab-title-item tourmaster-active" data-tourmaster-tab="booking">Booking Form</div>
                                                <div class="tourmaster-booking-tab-title-item" data-tourmaster-tab="enquiry">Enquiry Form</div>
                                            </div>
                                            <div class="tourmaster-booking-tab-content" data-tourmaster-tab="enquiry">
                                                <div class="tourmaster-tour-booking-enquiry-wrap">
                                                    <form class="tourmaster-enquiry-form tourmaster-form-field tourmaster-with-border clearfix tourmaster-enquiry-form2" data-validate-error="Please fill all required fields.">
                                                        <div class="tourmaster-enquiry-field tourmaster-enquiry-field-full-name tourmaster-type-text clearfix">
                                                            <div class="tourmaster-head">Name<span class="tourmaster-req">*</span></div>
                                                            <div class="tourmaster-tail clearfix">
                                                                <input type="text" name="name" value="" data-required />
                                                            </div>
                                                        </div>
                                                        <div class="tourmaster-enquiry-field tourmaster-enquiry-field-email-address tourmaster-type-email clearfix">
                                                            <div class="tourmaster-head">Email<span class="tourmaster-req">*</span></div>
                                                            <div class="tourmaster-tail clearfix">
                                                                <input type="email" name="email" value="" data-required />
                                                            </div>
                                                        </div>
                                                        <div class="tourmaster-enquiry-field tourmaster-enquiry-field-email-address tourmaster-type-email clearfix">
                                                            <div class="tourmaster-head">Phone<span class="tourmaster-req">*</span></div>
                                                            <div class="tourmaster-tail clearfix">
                                                                <input type="text" name="phone" value="" data-required />
                                                            </div>
                                                        </div>
                                                        <div class="tourmaster-enquiry-field tourmaster-enquiry-field-travel-date tourmaster-type-datepicker clearfix">
                                                            <div class="tourmaster-head">Travel Date<span class="tourmaster-req">*</span></div>
                                                            <div class="tourmaster-tail clearfix">
                                                                <input type="text" class="tourmaster-datepicker" name="travel_time" value="" /><i class="fa fa-calendar"></i></div>
                                                        </div>
                                                        <div class="tourmaster-enquiry-field tourmaster-enquiry-field-person tourmaster-type-combobox clearfix">
                                                            <div class="tourmaster-head">Person<span class="tourmaster-req">*</span></div>
                                                            <div class="tourmaster-tail clearfix">
                                                                <div class="tourmaster-combobox-wrap">
                                                                    <select name="count_people" data-required>
                                                                        <option value="Person">Person</option>
                                                                        <option value="1-4">1-4</option>
                                                                        <option value="5-9">5-9</option>
                                                                        <option value="10+">10+</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tourmaster-enquiry-field tourmaster-enquiry-field-your-enquiry tourmaster-type-textarea clearfix">
                                                            <div class="tourmaster-head">Your Enquiry<span class="tourmaster-req">*</span></div>
                                                            <div class="tourmaster-tail clearfix">
                                                                <textarea name="note" data-required></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="tourmaster-enquiry-form-message"></div>
                                                        <input type="hidden" name="tour_id" value="<%= tour.getId() %>" />
                                                        <input type="hidden" name="type" value="enquiry" />
                                                        <input type="submit" class="tourmaster-button" value="Submit Enquiry" />
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="tourmaster-booking-tab-content tourmaster-active" data-tourmaster-tab="booking">
                                                <div class="tourmaster-tour-booking-enquiry-wrap">
                                                    <form id="formBooking"  class="tourmaster-enquiry-form tourmaster-form-field tourmaster-with-border clearfix " data-validate-error="Please fill all required fields.">
                                                        <div class="tourmaster-enquiry-field tourmaster-enquiry-field-full-name tourmaster-type-text clearfix">
                                                            <div class="tourmaster-head">Full Name<span class="tourmaster-req">*</span></div>
                                                            <div class="tourmaster-tail clearfix">
                                                                <input type="text" name="name" value="" data-required />
                                                            </div>
                                                        </div>
                                                        <div class="tourmaster-enquiry-field tourmaster-enquiry-field-email-address tourmaster-type-email clearfix">
                                                            <div class="tourmaster-head">Email<span class="tourmaster-req">*</span></div>
                                                            <div class="tourmaster-tail clearfix">
                                                                <input type="email" name="email" value="" data-required />
                                                            </div>
                                                        </div>
                                                        <div class="tourmaster-enquiry-field tourmaster-enquiry-field-email-address tourmaster-type-email clearfix">
                                                            <div class="tourmaster-head">Phone<span class="tourmaster-req">*</span></div>
                                                            <div class="tourmaster-tail clearfix">
                                                                <input type="text" name="phone" value="" data-required />
                                                            </div>
                                                        </div>
                                                        <div class="tourmaster-enquiry-field tourmaster-enquiry-field-person tourmaster-type-combobox clearfix">
                                                            <div class="tourmaster-head">Person<span class="tourmaster-req">*</span></div>
                                                            <div class="tourmaster-tail clearfix">
                                                                <div class="tourmaster-combobox-wrap">
                                                                    <select name="count_people" data-required>
                                                                        <option value="1-4">1-4</option>
                                                                        <option value="5-9">5-9</option>
                                                                        <option value="10+">10+</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="tourmaster-enquiry-field tourmaster-enquiry-field-your-enquiry tourmaster-type-textarea clearfix">
                                                            <div class="tourmaster-head">Your Booking<span class="tourmaster-req">*</span></div>
                                                            <div class="tourmaster-tail clearfix">
                                                                <textarea name="note" data-required></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="tourmaster-enquiry-form-message"></div>
                                                        <input type="hidden" name="tour_id" value="<%= tour.getId() %>" />
                                                        <input type="hidden" name="type" value="booking" />
                                                        <input type="submit" class="tourmaster-button" value="Submit Booking" />
                                                    </form>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="tourmaster-tour-booking-bar-widget  traveltour-sidebar-area">
                                        <div id="text-11" class="widget widget_text traveltour-widget">
                                            <div class="textwidget"><span class="gdlr-core-space-shortcode" style="margin-top: -20px ;"></span>
                                                <div class="gdlr-core-widget-list-shortcode" id="gdlr-core-widget-list-0">
                                                    <h3 class="gdlr-core-widget-list-shortcode-title">Why Book With Us?</h3>
                                                    <ul>
                                                        <li><i class="fa fa-dollar" style="font-size: 15px ;color: #ffa127 ;margin-right: 13px ;"></i>No-hassle best price guarantee</li>
                                                        <li><i class="fa fa-headphones" style="font-size: 15px ;color: #ffa127 ;margin-right: 10px ;"></i>Customer care available 24/7</li>
                                                        <li><i class="fa fa-star" style="font-size: 15px ;color: #ffa127 ;margin-right: 10px ;"></i>Hand-picked Tours & Activities</li>
                                                        <li><i class="fa fa-support" style="font-size: 15px ;color: #ffa127 ;margin-right: 10px ;"></i>Free Travel Insureance</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="text-12" class="widget widget_text traveltour-widget">
                                            <div class="textwidget"><span class="gdlr-core-space-shortcode" style="margin-top: -10px ;"></span>
                                                <div class="gdlr-core-widget-box-shortcode " style="color: #c9e2ff ;background-image: url(<%= request.getAttribute("sitePath") %>/public/fe/upload/widget-bg.jpg) ;">
                                                    <h3 class="gdlr-core-widget-box-shortcode-title" style="color: #ffffff ;">Get a Question?</h3>
                                                    <div class="gdlr-core-widget-box-shortcode-content">
                                                        <p>Do not hesitage to give us a call. We are an expert team and we are happy to talk to you.</p>
                                                        <p><i class="fa fa-phone" style="font-size: 20px ;color: #ffcf2a ;margin-right: 10px ;"></i> <span style="font-size: 20px; color: #ffcf2a; font-weight: 600;">1.8445.3356.33</span></p>
                                                        <p><i class="fa fa-envelope-o" style="font-size: 17px ;color: #ffcf2a ;margin-right: 10px ;"></i> <span style="font-size: 14px; color: #fff; font-weight: 600;">Help@goodlayers.com</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tourmaster-tour-info-outer">
                            <div class="tourmaster-tour-info-outer-container tourmaster-container">
                                <div class="tourmaster-tour-info-wrap clearfix">
                                    <div class="tourmaster-tour-info tourmaster-tour-info-duration-text tourmaster-item-pdlr">
                                    	<i class="icon_clock_alt"></i><%= tour.getDaysText() %>
                                    </div>
                                    <div class="tourmaster-tour-info tourmaster-tour-info-availability tourmaster-item-pdlr">
                                    	<i class="fa fa-calendar"></i>Availability : <%= dateConvertion.toStringDate(tour.getBeginTime()) %> - <%= dateConvertion.toStringDate(tour.getEndTime()) %>
                                    </div>
                                    <div class="tourmaster-tour-info tourmaster-tour-info-departure-location tourmaster-item-pdlr">
                                    	<i class="flaticon-takeoff-the-plane"></i><%= tour.getDepartureLocation() %>
                                    </div>
                                    <div class="tourmaster-tour-info tourmaster-tour-info-return-location tourmaster-item-pdlr">
                                    	<i class="flaticon-plane-landing"></i><%= tour.getState() %>
                                    </div>
                                    <div class="tourmaster-tour-info tourmaster-tour-info-minimum-age tourmaster-item-pdlr"><i class="fa fa-user"></i>Min Age : <%= tour.getMinAge() %>+</div>
                                    <div class="tourmaster-tour-info tourmaster-tour-info-maximum-people tourmaster-item-pdlr"><i class="fa fa-users"></i>Max People : <%= tour.getMaxPeople() %></div>
                                </div>
                            </div>
                        </div>
                        <div class="gdlr-core-page-builder-body">
                            <div class="gdlr-core-pbf-wrapper " style="padding: 0px 0px 0px 0px;">
                                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full">
                                        <div class="gdlr-core-pbf-element">
                                            <div class="tourmaster-content-navigation-item-wrap clearfix" style="padding-bottom: 0px;">
                                                <div class="tourmaster-content-navigation-item-outer" id="tourmaster-content-navigation-item-outer">
                                                    <div class="tourmaster-content-navigation-item-container tourmaster-container">
                                                        <div class="tourmaster-content-navigation-item tourmaster-item-pdlr"><a class="tourmaster-content-navigation-tab tourmaster-active" href="#detail">Detail</a><a class="tourmaster-content-navigation-tab " href="#itinerary">Itinerary</a><a class="tourmaster-content-navigation-tab " href="#map">Map</a><a class="tourmaster-content-navigation-tab " href="#photos">Photos</a><a class="tourmaster-content-navigation-tab " href="#tourmaster-single-review">Reviews</a>
                                                            <div class="tourmaster-content-navigation-slider"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="gdlr-core-pbf-wrapper " style="padding: 70px 0px 30px 0px;" data-skin="Blue Icon" id="detail">
                                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" style="padding-bottom: 35px ;">
                                                <div class="gdlr-core-title-item-title-wrap">
                                                    <h6 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 24px ;font-weight: 600 ;letter-spacing: 0px ;text-transform: none ;"><span class="gdlr-core-title-item-left-icon" style="font-size: 18px ;"  ><i class="fa fa-file-text-o"  ></i></span>Tour Details<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h6></div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                                                <div class="gdlr-core-text-box-item-content">
                                                	<%= tour.getDetailText() %>    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-mgb gdlr-core-divider-item-normal gdlr-core-center-align" style="margin-bottom: 19px ;">
                                                <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                                    <div class="gdlr-core-pbf-element">
                                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 0px ;">
                                                            <div class="gdlr-core-title-item-title-wrap">
                                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 15px ;font-weight: 500 ;letter-spacing: 0px ;text-transform: none ;">Departure & Return Location <span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-column gdlr-core-column-30">
                                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                                    <div class="gdlr-core-pbf-element">
                                                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 0px ;">
                                                            <div class="gdlr-core-text-box-item-content">
                                                                <p><%= tour.getDepartureLocation() %>
                                                                 	<!-- (<a href="#">Google Map</a>) -->
                                                                 </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-mgb gdlr-core-divider-item-normal gdlr-core-center-align" style="margin-bottom: 19px ;">
                                                <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                                    <div class="gdlr-core-pbf-element">
                                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 0px ;">
                                                            <div class="gdlr-core-title-item-title-wrap">
                                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 15px ;font-weight: 500 ;letter-spacing: 0px ;text-transform: none ;">Departure Time<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-column gdlr-core-column-30">
                                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                                    <div class="gdlr-core-pbf-element">
                                                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 0px ;">
                                                            <div class="gdlr-core-text-box-item-content">
                                                                <p><%= dateConvertion.toStringDate(tour.getDepartureTime()) %></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-mgb gdlr-core-divider-item-normal gdlr-core-center-align" style="margin-bottom: 19px ;">
                                                <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                                            </div>
                                        </div>
                                        <% if(tour.getServicesWithStatus(true).size() > 0){ %>
                                        <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                                    <div class="gdlr-core-pbf-element">
                                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 0px ;">
                                                            <div class="gdlr-core-title-item-title-wrap">
                                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 15px ;font-weight: 500 ;letter-spacing: 0px ;text-transform: none ;">Price Includes<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-column gdlr-core-column-30">
                                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                                    <div class="gdlr-core-pbf-element">
                                                        <div class="gdlr-core-icon-list-item gdlr-core-item-pdlr gdlr-core-item-pdb clearfix " style="padding-bottom: 10px ;">
                                                            <ul>
                                                            	<% for(Service serv : tour.getServicesWithStatus(true)){ %>
                                                                <li class=" gdlr-core-skin-divider"><span class="gdlr-core-icon-list-icon-wrap"><i class="gdlr-core-icon-list-icon fa fa-check" style="color: #4692e7 ;" ></i></span>
                                                                    <div class="gdlr-core-icon-list-content-wrap"><span class="gdlr-core-icon-list-content"><%= serv.getName() %></span></div>
                                                                </li>
                                                                <% } %>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-mgb gdlr-core-divider-item-normal gdlr-core-center-align" style="margin-bottom: 19px ;">
                                                <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                                            </div>
                                        </div>
                                        <% } %>
                                        <% if(tour.getServicesWithStatus(false).size() > 0){ %>
                                        <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                                    <div class="gdlr-core-pbf-element">
                                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 0px ;">
                                                            <div class="gdlr-core-title-item-title-wrap">
                                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 15px ;font-weight: 500 ;letter-spacing: 0px ;text-transform: none ;">Price Excludes<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-column gdlr-core-column-30">
                                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                                    <div class="gdlr-core-pbf-element">
                                                        <div class="gdlr-core-icon-list-item gdlr-core-item-pdlr gdlr-core-item-pdb clearfix " style="padding-bottom: 10px ;">
                                                            <ul>
                                                            	<% for(Service serv : tour.getServicesWithStatus(false)){ %>
                                                                <li class=" gdlr-core-skin-divider"><span class="gdlr-core-icon-list-icon-wrap"><i class="gdlr-core-icon-list-icon fa fa-close" style="color: #7f7f7f ;" ></i></span>
                                                                    <div class="gdlr-core-icon-list-content-wrap"><span class="gdlr-core-icon-list-content"><%= serv.getName() %></span></div>
                                                                </li>
                                                                <% } %>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-mgb gdlr-core-divider-item-normal gdlr-core-center-align" style="margin-bottom: 19px ;">
                                                <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                                            </div>
                                        </div>
                                        <% } %>
                                        <!-- <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                                    <div class="gdlr-core-pbf-element">
                                                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 0px ;">
                                                            <div class="gdlr-core-title-item-title-wrap">
                                                                <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 15px ;font-weight: 500 ;letter-spacing: 0px ;text-transform: none ;">Complementaries<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-column gdlr-core-column-30">
                                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                                    <div class="gdlr-core-pbf-element">
                                                        <div class="gdlr-core-icon-list-item gdlr-core-item-pdlr gdlr-core-item-pdb clearfix " style="padding-bottom: 10px ;">
                                                            <ul>
                                                                <li class=" gdlr-core-skin-divider"><span class="gdlr-core-icon-list-icon-wrap"><i class="gdlr-core-icon-list-icon fa fa-check" style="color: #4692e7 ;" ></i></span>
                                                                    <div class="gdlr-core-icon-list-content-wrap"><span class="gdlr-core-icon-list-content">Umbrella</span></div>
                                                                </li>
                                                                <li class=" gdlr-core-skin-divider"><span class="gdlr-core-icon-list-icon-wrap"><i class="gdlr-core-icon-list-icon fa fa-check" style="color: #4692e7 ;" ></i></span>
                                                                    <div class="gdlr-core-icon-list-content-wrap"><span class="gdlr-core-icon-list-content">Sunscreen</span></div>
                                                                </li>
                                                                <li class=" gdlr-core-skin-divider"><span class="gdlr-core-icon-list-icon-wrap"><i class="gdlr-core-icon-list-icon fa fa-check" style="color: #4692e7 ;" ></i></span>
                                                                    <div class="gdlr-core-icon-list-content-wrap"><span class="gdlr-core-icon-list-content">T-Shirt</span></div>
                                                                </li>
                                                                <li class=" gdlr-core-skin-divider"><span class="gdlr-core-icon-list-icon-wrap"><i class="gdlr-core-icon-list-icon fa fa-check" style="color: #4692e7 ;" ></i></span>
                                                                    <div class="gdlr-core-icon-list-content-wrap"><span class="gdlr-core-icon-list-content">Entrance Fees</span></div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-mgb gdlr-core-divider-item-normal gdlr-core-center-align" style="margin-bottom: 45px ;">
                                                <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                                            </div>
                                        </div> -->
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr">
                                                <div class="gdlr-core-title-item-title-wrap">
                                                    <h6 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 16px ;font-weight: 600 ;letter-spacing: 0px ;text-transform: none ;">What to Expect<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h6></div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 10px ;">
                                                <div class="gdlr-core-text-box-item-content">
                                                	<%= tour.getExpectText() %>    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-mgb gdlr-core-divider-item-normal gdlr-core-center-align" style="margin-bottom: 15px ;">
                                                <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="gdlr-core-pbf-wrapper " style="padding: 20px 0px 30px 0px;" data-skin="Blue Icon" id="itinerary">
                                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" style="padding-bottom: 35px ;">
                                                <div class="gdlr-core-title-item-title-wrap">
                                                    <h6 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 24px ;font-weight: 600 ;letter-spacing: 0px ;text-transform: none ;"><span class="gdlr-core-title-item-left-icon" style="font-size: 18px ;"  ><i class="fa fa-bus"  ></i></span>Itinerary<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h6></div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-toggle-box-item gdlr-core-item-pdlr gdlr-core-item-pdb  gdlr-core-toggle-box-style-background-title gdlr-core-left-align" style="padding-bottom: 25px ;">
                                                <% for(Itinerary itinerary : tour.getItineraries()){ %>
                                                <div class="gdlr-core-toggle-box-item-tab clearfix  gdlr-core-active">
                                                    <div class="gdlr-core-toggle-box-item-icon gdlr-core-js gdlr-core-skin-icon "></div>
                                                    <div class="gdlr-core-toggle-box-item-content-wrapper">
                                                        <h4 class="gdlr-core-toggle-box-item-title gdlr-core-js  gdlr-core-skin-e-background gdlr-core-skin-e-content">
                                                        	<span class="gdlr-core-head" >Day <%= itinerary.getSequence() %></span> <%= itinerary.getName() %>
                                                        </h4>
                                                        <div class="gdlr-core-toggle-box-item-content">
                                                            <%= itinerary.getDescriptionText() %>
                                                        </div>
                                                    </div>
                                                </div>
                                                <% } %>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-mgb gdlr-core-divider-item-normal gdlr-core-center-align" style="margin-bottom: 25px ;">
                                                <div class="gdlr-core-divider-line gdlr-core-skin-divider" style="border-bottom-width: 2px ;"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% if(!tour.getMap().equals("")){ %>
                            <div class="gdlr-core-pbf-wrapper " style="padding: 0px 0px 30px 0px;" data-skin="Blue Icon" id="map">
                                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" style="padding-bottom: 35px ;">
                                                <div class="gdlr-core-title-item-title-wrap">
                                                    <h6 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 24px ;font-weight: 600 ;letter-spacing: 0px ;text-transform: none ;"><span class="gdlr-core-title-item-left-icon" style="font-size: 18px ;"  ><i class="fa fa-map-o"  ></i></span>Map<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h6></div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 55px ;">
                                                <div class="gdlr-core-text-box-item-content">
                                                    <div class="" id="mapRegion">
                                                    	<%= tour.getMap() %>
                                                   </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-mgb gdlr-core-divider-item-normal gdlr-core-center-align" style="margin-bottom: 25px ;">
                                                <div class="gdlr-core-divider-line gdlr-core-skin-divider" style="border-bottom-width: 2px ;"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% } %>
                            <% if(tour.getGallery().size() > 0){ %>
                            <div class="gdlr-core-pbf-wrapper " style="padding: 0px 0px 30px 0px;" data-skin="Blue Icon" id="photos">
                                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" style="padding-bottom: 35px ;">
                                                <div class="gdlr-core-title-item-title-wrap">
                                                    <h6 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 24px ;font-weight: 600 ;letter-spacing: 0px ;text-transform: none ;"><span class="gdlr-core-title-item-left-icon" style="font-size: 18px ;"  ><i class="icon_images"  ></i></span>Photos<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h6></div>
                                            </div>
                                        </div>
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-gallery-item gdlr-core-item-pdb clearfix  gdlr-core-gallery-item-style-slider gdlr-core-item-pdlr ">
                                                <div class="gdlr-core-flexslider flexslider gdlr-core-js-2 " data-type="slider" data-effect="default" data-nav="bullet">
                                                    <ul class="slides">
                                                        <% for(String image : tour.getGallery()){ %>
                                                        <li>
                                                            <div class="gdlr-core-gallery-list gdlr-core-media-image">
                                                                <a class="gdlr-core-ilightbox gdlr-core-js " href="<%= image %>" data-ilightbox-group="gdlr-core-img-group-1"><img src="<%= image %>" alt="" width="1500" height="1000" /><span class="gdlr-core-image-overlay "><i class="gdlr-core-image-overlay-icon gdlr-core-size-22 fa fa-search"  ></i></span></a>
                                                            </div>
                                                        </li>
                                                        <% } %>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% } %>
                            <% if(tour.getVideos().size() > 0){ %>
                            <div class="gdlr-core-pbf-wrapper "  data-skin="Blue Icon" id="photos">
                                <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                                    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr" id="div_356c_32">
                                                <div class="gdlr-core-title-item-title-wrap">
                                                    <h6 class="gdlr-core-title-item-title gdlr-core-skin-title" id="h6_356c_5"><span class="gdlr-core-title-item-left-icon" id="span_356c_8"  ><i class="fa fa-film"  ></i></span>Videos<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h6></div>
                                            </div>
                                        </div>
                                        <% for(String videoid : tour.getVideos()){ %>
                                        <div class="gdlr-core-pbf-column gdlr-core-column-30">
                                            <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                                <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                                    <div class="gdlr-core-pbf-element">
                                                        <div class="gdlr-core-video-item gdlr-core-item-pdlr gdlr-core-item-pdb ">
                                                            <div class="gdlr-core-video-item-type-youtube">
                                                                <iframe src="http://www.youtube.com/embed/<%= videoid %>?wmode=transparent" width="640" height="360" data-player-type="youtube" allowfullscreen></iframe>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <% } %>
                                    </div>
                                </div>
                            </div>
                            <% } %>
                        </div>
                        <div class="tourmaster-single-related-tour tourmaster-tour-item tourmaster-style-grid">
                            <div class="tourmaster-single-related-tour-container tourmaster-container">
                                <h3 class="tourmaster-single-related-tour-title tourmaster-item-pdlr">Related Tours</h3>
                                <div class="tourmaster-tour-item-holder clearfix ">
                                	<% for(Tour relTour : relativeTours){ %>
                                    <div class="gdlr-core-item-list  tourmaster-column-30 tourmaster-item-pdlr">
                                        <div class="tourmaster-tour-grid  tourmaster-price-right-title">
                                            <div class="tourmaster-tour-thumbnail tourmaster-media-image">
                                                <a href="<%= request.getAttribute("sitePath") %>/tour?id=<%= relTour.getId() %>"><img src="<%= relTour.getThumbnail() %>" alt="" width="1024" height="683" /></a>
                                                <% if(relTour.getoPrice() != relTour.getpPrice()){ %>
                                                <div class="tourmaster-thumbnail-ribbon gdlr-core-outer-frame-element" style="color: #ffffff;background-color: #e85e34;">
                                                    <div class="tourmaster-thumbnail-ribbon-cornor" style="border-right-color: rgba(232, 94, 52, 0.5);"></div>SALE OFF
                                                </div>
                                                <% } %>
                                            </div>
                                            <div class="tourmaster-tour-content-wrap gdlr-core-skin-e-background">
                                                <h3 class="tourmaster-tour-title gdlr-core-skin-title"><a href="../switzerland-7-days-in-zurich-zermatt/index.html" ><%= relTour.getNation() %> &#8211; <%= relTour.getName() %>, <%= relTour.getState() %></a></h3>
                                                <div class="tourmaster-tour-price-wrap tourmaster-discount">
                                                	<span class="tourmaster-tour-price">
                                                		<span class="tourmaster-head">From</span>
                                                		<% if(relTour.getoPrice() != relTour.getpPrice()){ %><span class="tourmaster-tail">$<%= relTour.getoPrice() %></span><% } %>
                                                	</span>
                                                	<span class="tourmaster-tour-discount-price">$<%= relTour.getpPrice() %></span>
                                                </div>
                                                <div class="tourmaster-tour-rating"><% for(int i =0; i< tour.getStar(); i++){ %><i class="fa fa-star"></i><% } %><% for(int i =0; i< 5-tour.getStar(); i++){ %><i class="fa fa-star-o"></i><% } %><span class="tourmaster-tour-rating-text">(<%= tour.getReviews().size() %> Reviews)</span></div>
                                            </div>
                                        </div>
                                    </div>
                                    <% } %>
                                </div>
                            </div>
                        </div>
                        <div class="tourmaster-single-review-container tourmaster-container">
                            <div class="tourmaster-single-review-item tourmaster-item-pdlr">
                                <div class="tourmaster-single-review" id="tourmaster-single-review">
                                    <div class="tourmaster-single-review-head clearfix">
                                        <div class="tourmaster-single-review-head-info clearfix">
                                            <div class="tourmaster-tour-rating">
                                            	<span class="tourmaster-tour-rating-text"><%= tour.getReviews().size() %> Review</span>
                                            </div>
                                            <!-- <div class="tourmaster-single-review-filter" id="tourmaster-single-review-filter">
                                                <div class="tourmaster-single-review-sort-by"><span class="tourmaster-head">Sort By:</span><span class="tourmaster-sort-by-field" data-sort-by="rating">Rating</span><span class="tourmaster-sort-by-field tourmaster-active" data-sort-by="date">Date</span></div>
                                                <div class="tourmaster-single-review-filter-by tourmaster-form-field tourmaster-with-border">
                                                    <div class="tourmaster-combobox-wrap">
                                                        <select id="tourmaster-filter-by">
                                                            <option value="">Filter By</option>
                                                            <option value="solo">Solo</option>
                                                            <option value="couple">Couple</option>
                                                            <option value="family">Family</option>
                                                            <option value="group">Group</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div> -->
                                        </div>
                                    </div>
                                    <div class="tourmaster-single-review-content" id="tourmaster-single-review-content" data-tour-id="4643" data-ajax-url="../../wp-admin/admin-ajax.html">
                                        <% for(Review review : tour.getReviews()){ %>
                                        <div class="tourmaster-single-review-content-item clearfix">
                                            <div class="tourmaster-single-review-user clearfix">
                                                <div class="tourmaster-single-review-avatar tourmaster-media-image"><img alt='' src='https://secure.gravatar.com/avatar/3fd67cef7cae9956b8831c16a70dba11?s=85&amp;d=mm&amp;r=g' srcset="https://secure.gravatar.com/avatar/3fd67cef7cae9956b8831c16a70dba11?s=170&#038;d=mm&#038;r=g 2x" class='avatar avatar-85 photo' height='85' width='85' /></div>
                                                <h4 class="tourmaster-single-review-user-name"><%= review.getName() %></h4>
                                                <!-- <div class="tourmaster-single-review-user-type">Couple Traveller</div> -->
                                            </div>
                                            <div class="tourmaster-single-review-detail">
                                                <div class="tourmaster-single-review-detail-description">
                                                    <p><%= review.getContent() %></p>
                                                </div>
                                                <div class="tourmaster-single-review-detail-date"><%= dateConvertion2.toStringDate(review.getReviewTime()) %></div>
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
 			<%@include file="./layout/footer.jsp" %>
        </div>
    </div><a href="#traveltour-top-anchor" class="traveltour-footer-back-to-top-button" id="traveltour-footer-back-to-top-button"><i class="fa fa-angle-up" ></i></a>
 	
	<%@include file="./layout/scripts.jsp" %>
	
	<script>
		jQuery('#mapRegion iframe').css("width", "100%");
		jQuery('#formBooking').submit(function(){
			jQuery.ajax({
			  url: "<%= request.getAttribute("sitePath") %>/webapi/shop/tour/booking",
			  method: "post",
				contentType: "application/json",
				dataType: "json",
			  data: JSON.stringify({
				  tour_id: jQuery('#formBooking [name="tour_id"]').val(),
				  name: jQuery('#formBooking [name="name"]').val(),
				  email: jQuery('#formBooking [name="email"]').val(),
				  phone: jQuery('#formBooking [name="phone"]').val(),
				  note: jQuery('#formBooking [name="note"]').val(),
				  count_people: jQuery('#formBooking [name="count_people"]').val(),
			  }),
			}).success(function(data){
				swal("Booking successful !", "Your booking has been sent. We're contact to you as soon as possible, so please keep your phone and your email in contact !", "success");
				jQuery('#formBooking [name="tour_id"]').val("");
			  	jQuery('#formBooking [name="name"]').val("");
			  	jQuery('#formBooking [name="email"]').val("");
			  	jQuery('#formBooking [name="phone"]').val("");
			  	jQuery('#formBooking [name="note"]').val("");
			  	jQuery('#formBooking [name="count_people"]').val("");
			}).error(function(){
				console.error("error");
			}).done(function() {
			  console.log()
			});
			return false;
		});
	</script>
</body>
</html>