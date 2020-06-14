<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="com.van.travel.models.setting.ShopPageAboutSetting"%>
<% 
	ShopPageAboutSetting shopPageAboutSetting = (ShopPageAboutSetting) request.getAttribute("shopPageAboutSetting");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en-US">

<head>
    <%@include file="./layout/meta.jsp" %>
    <title>About</title>

    <%@include file="./layout/styles.jsp" %>

</head>

<body class="home page-template-default page page-id-2039 gdlr-core-body tourmaster-body woocommerce-no-js traveltour-body traveltour-body-front traveltour-full  traveltour-with-sticky-navigation gdlr-core-link-to-lightbox">
 	<%@include file="./layout/mobile-header.jsp" %>
 	<div class="traveltour-body-outer-wrapper ">
        <div class="traveltour-body-wrapper clearfix  traveltour-with-transparent-header traveltour-with-frame">
            <%@include file="./layout/header.jsp" %>
            <div class="traveltour-page-title-wrap  traveltour-style-large traveltour-center-align" style="background-image: <%= shopPageAboutSetting.data.get("head_bg") %>">
                <div class="traveltour-header-transparent-substitute"></div>
                <div class="traveltour-page-title-overlay"></div>
                <div class="traveltour-page-title-container traveltour-container">
                    <div class="traveltour-page-title-content traveltour-item-pdlr">
                        <h1 class="traveltour-page-title"><%= shopPageAboutSetting.forItem.get("head_h1") %></h1>
                        <div class="traveltour-page-caption"><%= shopPageAboutSetting.forItem.get("head_h2") %></div>
                    </div>
                </div>
            </div>
            <div class="traveltour-page-wrapper" id="traveltour-page-wrapper">
                <div class="gdlr-core-page-builder-body">
                    <div class="gdlr-core-pbf-wrapper " id="div_b01f_0">
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                            
                            	<%
                            		int sectionALength = 4;
                            		JSONArray sectionA_list = shopPageAboutSetting.sectionA;
                            		if(sectionA_list.length() < sectionALength){
                            			sectionALength = sectionA_list.length();
                            		}
                            		int sectionABlock = 0;
                            		switch(sectionALength){
	                            		case 1:
	                            			sectionABlock = 60;
	                            			break;
	                            		case 2:
	                            			sectionABlock = 30;
	                            			break;
	                            		case 3:
	                            			sectionABlock = 20;
	                            			break;
	                            		case 4:
	                            			sectionABlock = 15;
	                            			break;
                            		}
                            	%>
                            	<% for(int i=0; i<sectionALength;i=i+1){ %>
                            	<%
                            		JSONObject sectionAObj = shopPageAboutSetting.sectionA.getJSONObject(i);
                            	%>
                                <div class="gdlr-core-pbf-column gdlr-core-column-<%= sectionABlock %>">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " id="div_b01f_1" data-sync-height="height-1" data-sync-height-center>
                                        <div class="gdlr-core-pbf-background-wrap" id="div_b01f_2"></div>
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content" data-gdlr-animation="fadeInDown" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-center-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr">
                                                    <div class="gdlr-core-title-item-title-wrap">
                                                        <h4 class="gdlr-core-title-item-title gdlr-core-skin-title" id="h4_b01f_0"><%= sectionAObj.get("title") %><span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h4></div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align" id="div_b01f_3">
                                                    <div class="gdlr-core-text-box-item-content" id="div_b01f_4">
                                                        <p><%= sectionAObj.get("description") %></p>
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
                    <div class="gdlr-core-pbf-wrapper " id="div_b01f_17">
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first" data-skin="Dark">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js  gdlr-core-column-extend-left" id="div_b01f_18" data-sync-height="height-2">
                                        <div class="gdlr-core-pbf-background-wrap" id="div_b01f_19">
                                            <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" id="div_b01f_20" data-parallax-speed="0.4" style="background-image: <%= shopPageAboutSetting.sectionB.get("bg") %>"></div>
                                        </div>
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content" data-gdlr-animation="fadeInRight" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                                            <%
                                            	JSONArray sectionB_list = shopPageAboutSetting.sectionB.getJSONArray("list");
                                            %>
                                            <% for(int i=0; i<sectionB_list.length(); i=i+1){ %>
                                            <%
                                            	JSONObject sectionB_obj = sectionB_list.getJSONObject(i);
                                            %>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-column-service-item gdlr-core-item-pdb  gdlr-core-left-align gdlr-core-column-service-icon-left gdlr-core-no-caption gdlr-core-item-pdlr">
                                                    <div class="gdlr-core-column-service-content-wrapper">
                                                        <div class="gdlr-core-column-service-title-wrap">
                                                            <h3 class="gdlr-core-column-service-title gdlr-core-skin-title" id="h3_b01f_0"><%= sectionB_obj.get("title") %></h3></div>
                                                        <div class="gdlr-core-column-service-content" id="div_b01f_21">
                                                            <p><%= sectionB_obj.get("description") %></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <% } %>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-30">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js  gdlr-core-column-extend-right" id="div_b01f_25" data-sync-height="height-2" data-sync-height-center>
                                        <div class="gdlr-core-pbf-background-wrap" id="div_b01f_26"></div>
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content" data-gdlr-animation="fadeInLeft" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_b01f_27">
                                                    <div class="gdlr-core-title-item-title-wrap">
                                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" id="h3_b01f_3"><%= shopPageAboutSetting.sectionB.get("title_h1") %><span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" id="div_b01f_28">
                                                    <div class="gdlr-core-text-box-item-content" id="div_b01f_29">
                                                        <p><%= shopPageAboutSetting.sectionB.get("description") %></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-button-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" id="div_b01f_30"><a class="gdlr-core-button  gdlr-core-button-solid gdlr-core-button-no-border" href="<%= shopPageAboutSetting.sectionB.get("link") %>" id="a_b01f_0"><span class="gdlr-core-content" ><%= shopPageAboutSetting.sectionB.get("link_label") %></span></a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-wrapper " id="div_b01f_31" data-skin="Dark">
                        <div class="gdlr-core-pbf-background-wrap" id="div_b01f_32">
                            <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" id="div_b01f_33" data-parallax-speed="0.2" style="background-image: <%= shopPageAboutSetting.sectionC.get("bg") %>"></div>
                        </div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js " data-gdlr-animation="fadeInUp" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <%
                            		int sectionCLength = 4;
                            		JSONArray sectionC_list = shopPageAboutSetting.sectionC.getJSONArray("list");
                            		if(sectionC_list.length() < sectionCLength){
                            			sectionCLength = sectionC_list.length();
                            		}
                            		int sectionCBlock = 0;
                            		switch(sectionCLength){
	                            		case 1:
	                            			sectionCBlock = 60;
	                            			break;
	                            		case 2:
	                            			sectionCBlock = 30;
	                            			break;
	                            		case 3:
	                            			sectionCBlock = 20;
	                            			break;
	                            		case 4:
	                            			sectionCBlock = 15;
	                            			break;
                            		}
                            	%>
                            	<% for(int i=0; i < sectionCLength; i=i+1){ %>
                            	<%
                            		JSONObject sectionCObj = sectionC_list.getJSONObject(i);
                            	%>
                                <div class="gdlr-core-pbf-column gdlr-core-column-<%= sectionCBlock %>" data-skin="About Counter">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " id="div_b01f_34">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-counter-item gdlr-core-item-pdlr gdlr-core-item-pdb " id="div_b01f_35">
                                                    <div class="gdlr-core-counter-item-number gdlr-core-skin-title gdlr-core-title-font" id="div_b01f_36">
                                                    	<span class="gdlr-core-counter-item-prefix"><%= sectionCObj.get("prefix") %></span>
                                                    	<span class="gdlr-core-counter-item-count gdlr-core-js" data-duration="4000" data-counter-start="0" data-counter-end="<%= sectionCObj.get("count") %>">0</span>
                                                    	<span class="gdlr-core-counter-item-suffix"><%= sectionCObj.get("suffix") %></span>
                                                    </div>
                                                    <div class="gdlr-core-counter-item-bottom-text gdlr-core-skin-content" id="div_b01f_37"><%= sectionCObj.get("name") %></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <% } %>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-wrapper " id="div_b01f_50">
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-column gdlr-core-column-24 gdlr-core-column-first">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " id="div_b01f_51" data-sync-height="height-3">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_b01f_52">
                                                    <div class="gdlr-core-title-item-title-wrap">
                                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" id="h3_b01f_4"><%= shopPageAboutSetting.forItem.get("stretch_h1") %><span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-mgb gdlr-core-divider-item-normal gdlr-core-left-align">
                                                    <div class="gdlr-core-divider-container" id="div_b01f_53">
                                                        <div class="gdlr-core-divider-line gdlr-core-skin-divider" id="div_b01f_54"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-36">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " id="div_b01f_55" data-sync-height="height-3">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content" data-gdlr-animation="fadeInRight" data-gdlr-animation-duration="600ms" data-gdlr-animation-offset="0.8">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" id="div_b01f_56">
                                                    <div class="gdlr-core-text-box-item-content" id="div_b01f_57">
                                                        <p><%= shopPageAboutSetting.forItem.get("stretch_description") %></p>
                                                    </div>
                                                </div>
                                            </div>
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
		jQuery('#menu-main-navigation-1 li.menu-item[data-name="about"]').addClass("current-menu-item");
	</script>
</body>
</html>