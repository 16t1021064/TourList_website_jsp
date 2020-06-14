<%@page import="org.json.JSONObject"%>
<%@page import="com.van.travel.models.setting.ShopPageContactSetting"%>
<%
	ShopPageContactSetting shopPageContactSetting = (ShopPageContactSetting) request.getAttribute("shopPageContactSetting");
	InfosSetting infosSetting = (InfosSetting) request.getAttribute("infosSetting");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en-US">

<head>
    <%@include file="./layout/meta.jsp" %>
    <title>Contact</title>

    <%@include file="./layout/styles.jsp" %>
	<style>
		.custom .error{
		    margin-top: 25px;
    		display: block;
    	}
	</style>
</head>

<body class="home page-template-default page page-id-2039 gdlr-core-body tourmaster-body woocommerce-no-js traveltour-body traveltour-body-front traveltour-full  traveltour-with-sticky-navigation gdlr-core-link-to-lightbox">
 	<%@include file="./layout/mobile-header.jsp" %>
 	<div class="traveltour-body-outer-wrapper ">
        <div class="traveltour-body-wrapper clearfix  traveltour-with-transparent-header traveltour-with-frame">
            <%@include file="./layout/header.jsp" %>
            <div class="traveltour-page-wrapper" id="traveltour-page-wrapper">
                <div class="gdlr-core-page-builder-body">
                    <div class="gdlr-core-pbf-wrapper " style="padding: 350px 0px 160px 0px;" data-skin="Dark">
                        <div class="gdlr-core-pbf-background-wrap">
                            <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="background-image: url(<%= shopPageContactSetting.data.get("head_bg") %>) ;background-size: cover ;background-position: center ;" data-parallax-speed="0.3"></div>
                        </div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js " data-gdlr-animation="fadeInUp" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 75px ;letter-spacing: 0px ;text-transform: none ;"><%= shopPageContactSetting.forItem.get("head_h1") %><span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div><span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption" style="font-size: 25px ;margin-top: 25px ;"><%= shopPageContactSetting.forItem.get("head_h2") %></span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-wrapper ">
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <% for(int i=0;i<shopPageContactSetting.sectionA.length(); i=i+1){ %>
                                <%
                                	JSONObject item = shopPageContactSetting.sectionA.getJSONObject(i);
                                %>
                                <div class="gdlr-core-pbf-column gdlr-core-column-20">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " style="padding: 50px 20px 0px 20px;">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js " data-gdlr-animation="fadeInUp" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-icon-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 55px ;"><i class=" gdlr-core-icon-item-icon <%= item.get("icon") %>" style="color: #454545 ;font-size: 40px ;min-width: 40px ;min-height: 40px ;"></i></div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 25px ;">
                                                    <div class="gdlr-core-title-item-title-wrap">
                                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 24px ;letter-spacing: 0px ;text-transform: none ;"><%= item.get("name") %><span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" style="padding-bottom: 0px ;">
                                                    <div class="gdlr-core-text-box-item-content" style="font-size: 16px ;">
                                                        <p><%= item.get("description") %></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                                                    <div class="gdlr-core-text-box-item-content" style="font-size: 16px ;">
                                                        <p><a href="<%= item.get("link") %>"><%= item.get("link_label") %></a></p>
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
                    <div class="gdlr-core-pbf-wrapper " style="padding: 95px 0px 90px 0px;" data-skin="Grey">
                        <div class="gdlr-core-pbf-background-wrap" style="background-color: #f3f3f3 ;"></div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js " style="max-width: 760px ;">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr">
                                                    <div class="gdlr-core-title-item-title-wrap">
                                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" style="font-size: 32px ;letter-spacing: 0px ;text-transform: none ;"><%= shopPageContactSetting.forItem.get("form_title_h1") %> <span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div><span class="gdlr-core-title-item-caption gdlr-core-info-font gdlr-core-skin-caption" style="font-size: 19px ;font-style: normal ;"><%= shopPageContactSetting.forItem.get("form_title_h2") %></span></div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-mgb gdlr-core-divider-item-normal gdlr-core-center-align" style="margin-bottom: 50px ;">
                                                    <div class="gdlr-core-divider-container" style="max-width: 40px ;">
                                                        <div class="gdlr-core-divider-line gdlr-core-skin-divider" style="border-color: #2b2b2b ;border-bottom-width: 2px ;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-contact-form-7-item gdlr-core-item-pdlr gdlr-core-item-pdb ">
                                                    <div role="form" class="wpcf7" id="wpcf7-f1319-p1964-o1" lang="en-US" dir="ltr">
                                                        <div class="screen-reader-response"></div>
                                                        <form class="quform" id="formContact" action="javascript:void(0);" method="post" enctype="multipart/form-data" onclick="">

                                                            <div class="quform-elements">
                                                                <div class="quform-element">
                                                                    <p>
                                                                        <br>
                                                                        <span class="wpcf7-form-control-wrap custom your-name">
                                                                            <input id="name" type="text" name="name" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="<%= shopPageContactSetting.forItem.get("form_holder_name") %>">
                                                                        </span> 
                                                                    </p>
                                                                </div>
                                                                <div class="quform-element">
                                                                    <p>
                                                                        <br>
                                                                        <span class="wpcf7-form-control-wrap custom your-email">
                                                                            <input id="email" type="text" name="email" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="<%= shopPageContactSetting.forItem.get("form_holder_email") %>">
                                                                        </span> 
                                                                    </p>
                                                                </div>
                                                                <div class="quform-element">
                                                                    <p>
                                                                        <br>
                                                                        <span class="wpcf7-form-control-wrap your-message">
                                                                            <textarea  id="message" name="message" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false" placeholder="<%= shopPageContactSetting.forItem.get("form_holder_message") %>"></textarea>
                                                                        </span>
                                                                    </p>
                                                                </div>
                                                                <p>
                                                                    <!-- Begin Submit button -->
                                                                    <div class="quform-submit">
                                                                        <div class="quform-submit-inner">
                                                                            <button type="submit" class="submit-button"><span><%= shopPageContactSetting.forItem.get("form_button_submit") %></span></button>
                                                                        </div>
                                                                        <div class="quform-loading-wrap"><span class="quform-loading"></span></div>
                                                                    </div>
                                                                </p>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-wrapper " style="padding: 0px 0px 0px 0px;">
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full-no-space">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-wp-google-map-plugin-item gdlr-core-item-pdlr gdlr-core-item-pdb " style="padding-bottom: 0px ;">
                                        <div class="wpgmp_map_container wpgmp-map-1" rel="map1">
                                            <div class="wpgmp_map " style="width:100%; height:450px;" id="map1"></div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-wrapper " style="padding: 80px 0px 50px 0px;">
                        <div class="gdlr-core-pbf-background-wrap" style="background-color: #ffffff ;"></div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-social-network-item gdlr-core-item-pdb  gdlr-core-center-align gdlr-core-item-pdlr">
                                    	<% if(!infosSetting.data.get("shop_media_fb").equals("")){ %>
						                 <a href="<%= infosSetting.data.get("shop_media_fb") %>" target="_blank" class="gdlr-core-social-network-icon" style="font-size: 20px ;color: #1e1e1e ;" title="facebook">
						                     <i class="fa fa-facebook" ></i>
						                 </a>
						                 <% } %>
						                 <% if(!infosSetting.data.get("shop_media_yt").equals("")){ %>
						                 <a href="<%= infosSetting.data.get("shop_media_yt") %>" target="_blank" class="gdlr-core-social-network-icon" style="font-size: 20px ;color: #1e1e1e ;" title="youtube">
						                     <i class="fa fa-youtube" ></i>
						                 </a>
						                 <% } %>
						                 <% if(!infosSetting.data.get("shop_media_ig").equals("")){ %>
						                 <a href="<%= infosSetting.data.get("shop_media_ig") %>" target="_blank" class="gdlr-core-social-network-icon" style="font-size: 20px ;color: #1e1e1e ;" title="instagram">
						                     <i class="fa fa-instagram" ></i>
						                 </a>
						                 <% } %>
						                 <% if(!infosSetting.data.get("shop_media_tw").equals("")){ %>
						                 <a href="<%= infosSetting.data.get("shop_media_tw") %>" target="_blank" class="gdlr-core-social-network-icon" style="font-size: 20px ;color: #1e1e1e ;" title="twitter">
						                     <i class="fa fa-twitter" ></i>
						                 </a>
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
    </div>
 	
	<%@include file="./layout/scripts.jsp" %>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD_tAQD36pKp9v4at5AnpGbvBUsLCOSJx8"></script>
    <script type='text/javascript'>
        var wpgmp_local = {
            "all_location": "All",
            "show_locations": "Show Locations",
            "sort_by": "Sort by",
            "wpgmp_not_working": "not working...",
            "place_icon_url": "https:////demo.goodlayers.com//kleanity//wp-content//plugins//wp-google-map-plugin//assets//images//icons//"
        };
    </script>
    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/plugins/google-map-plugin/assets/js/maps.js?'></script>
    <script type='text/javascript' src='<%= request.getAttribute("sitePath") %>/public/fe/plugins/google-map-plugin/assets/js/frontend.js'></script>
    <script>
        jQuery(document).ready(function($) {
            var map1 = $("#map1").maps({
                "map_options": {
                    "center_lat": "<%= shopPageContactSetting.map.get("center_lat") %>",
                    "center_lng": "<%= shopPageContactSetting.map.get("center_lng") %>",
                    "zoom": 16,
                    "map_type_id": "ROADMAP",
                    "draggable": true,
                    "scroll_wheel": false,
                    "display_45_imagery": "",
                    "marker_default_icon": "<%= request.getAttribute("sitePath") %>/public/fe/upload/default_marker.png",
                    "infowindow_setting": "",
                    "infowindow_bounce_animation": "",
                    "infowindow_drop_animation": false,
                    "close_infowindow_on_map_click": false,
                    "default_infowindow_open": false,
                    "infowindow_open_event": "click",
                    "full_screen_control": false,
                    "search_control": true,
                    "zoom_control": true,
                    "map_type_control": false,
                    "street_view_control": false,
                    "full_screen_control_position": "TOP_RIGHT",
                    "search_control_position": null,
                    "zoom_control_position": "TOP_LEFT",
                    "map_type_control_position": "TOP_RIGHT",
                    "map_type_control_style": "HORIZONTAL_BAR",
                    "street_view_control_position": "TOP_LEFT",
                    "map_control": true,
                    "map_control_settings": null,
                    "width": "",
                    "height": "450"
                },
                "places": [{
                    "id": "1",
                    "title": "<%= shopPageContactSetting.map.get("marker_name") %>",
                    "address": "Hue, Viet NAm",
                    "source": "manual",
                    "content": "Hue",
                    "location": {
                        "icon": "<%= request.getAttribute("sitePath") %>/public/fe/upload/default_marker.png",
                        "lat": "<%= shopPageContactSetting.map.get("marker_lat") %>",
                        "lng": "<%= shopPageContactSetting.map.get("marker_lng") %>",
                        "country": "United Kingdom",
                        "onclick_action": "marker",
                        "redirect_custom_link": "",
                        "marker_image": null,
                        "open_new_tab": "yes",
                        "postal_code": "",
                        "draggable": false,
                        "infowindow_default_open": false,
                        "animation": "BOUNCE",
                        "infowindow_disable": true,
                        "zoom": 5,
                        "extra_fields": null
                    },
                    "categories": [],
                    "custom_filters": null
                }],
                "street_view": null,
                "map_property": {
                    "map_id": "1"
                }
            }).data("wpgmp_maps");
        });
    </script>
    <script type="text/javascript" src="<%= request.getAttribute("sitePath") %>/public/fe/plugins/quform/js/plugins.js"></script>
    <script type="text/javascript" src="<%= request.getAttribute("sitePath") %>/public/fe/plugins/quform/js/scripts.js"></script> 
    <script>
	    jQuery('#formContact').submit(function(){
			var validator = jQuery('#formContact').validate({
		        rules: {
		            name: {
		                required: true,
		                normalizer: function(value) {
							return jQuery.trim(value);
						},
		            },
		            email: {
		                required: true,
		                email: true,
		                normalizer: function(value) {
							return jQuery.trim(value);
						},
		            },
		            message: {
		                required: true,
		                normalizer: function(value) {
							return jQuery.trim(value);
						},
		            },
		        },
		        errorPlacement: function(error, element) {
		            return false;
		        },
		    });
			if(validator.form()){
				jQuery.ajax({
				  url: "<%= request.getAttribute("sitePath") %>/webapi/shop/contact/message",
				  method: "post",
					contentType: "application/json; charset=utf-8",
					dataType: "json",
				  data: JSON.stringify({
					  name: jQuery('#formContact [name="name"]').val(),
					  email: jQuery('#formContact [name="email"]').val(),
					  message: jQuery('#formContact [name="message"]').val(),
				  }),
				}).success(function(data){
					swal("Message sent !", "Your message has been sent. Thank you for your message.", "success");
				  	jQuery('#formContact [name="name"]').val("");
				  	jQuery('#formContact [name="email"]').val("");
				  	jQuery('#formContact [name="message"]').val("");
				}).error(function(){
					console.error("error");
				}).done(function() {
				  
				});
			}else{
				swal("Error validation !", "Please all fields in contact form !", "error");
			}
		return false;
	});
    </script>
    <script>
		jQuery('#menu-main-navigation-1 li.menu-item[data-name="contact"]').addClass("current-menu-item");
	</script>
</body>
</html>