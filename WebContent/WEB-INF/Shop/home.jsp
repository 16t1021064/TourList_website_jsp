<%@page import="com.van.travel.common.DateConvertion"%>
<%@page import="com.van.travel.models.Blog"%>
<%@page import="com.van.travel.models.Activity"%>
<%@page import="com.van.travel.models.Tour"%>
<%@page import="java.util.ArrayList"%>
<%
	ArrayList<Tour> listHotTours = (ArrayList<Tour>) request.getAttribute("listHotTours");
	ArrayList<Destination> listHotDestinations = (ArrayList<Destination>) request.getAttribute("listHotDestinations");
	ArrayList<Activity> listHotActivities = (ArrayList<Activity>) request.getAttribute("listHotActivities");
	ArrayList<Blog> listHotBlogs = (ArrayList<Blog>) request.getAttribute("listHotBlogs");
	ArrayList<Destination> filterHotDestinations = (ArrayList<Destination>) request.getAttribute("filterHotDestinations");
	ArrayList<Activity> filterHotActivities = (ArrayList<Activity>) request.getAttribute("filterHotActivities");
	DateConvertion dateConvertion = new DateConvertion("MM/dd/yyyy");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Travel Tour</title>

	<%@include file="./layout/styles.jsp" %>

</head>

<body class="home page-template-default page page-id-2039 gdlr-core-body tourmaster-body woocommerce-no-js traveltour-body traveltour-body-front traveltour-full  traveltour-with-sticky-navigation gdlr-core-link-to-lightbox">
    <%@include file="./layout/mobile-header.jsp" %>
    <div class="traveltour-body-outer-wrapper ">
        <div class="traveltour-body-wrapper clearfix  traveltour-with-transparent-header traveltour-with-frame">
            <%@include file="./layout/header.jsp" %>
            <div class="traveltour-page-wrapper" id="traveltour-page-wrapper">
                <div class="gdlr-core-page-builder-body">
                    <div class="gdlr-core-pbf-wrapper " id="div_eeca_0">
                        <div class="gdlr-core-pbf-background-wrap" id="div_eeca_1"></div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full-no-space">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-revolution-slider-item gdlr-core-item-pdlr gdlr-core-item-pdb " id="div_eeca_2">
                                        <link href="https://fonts.googleapis.com/css?family=Roboto:900%2C700" rel="stylesheet" property="stylesheet" type="text/css" media="all">
                                        <div id="rev_slider_1_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-source="gallery" >
                                            <div id="rev_slider_1_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.4.8">
                                                <ul>
                                                    <li data-index="rs-1" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300" data-thumb="upload/slider-1-100x50.jpg" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description=""> <img src="/travel/public/fe/upload/slider-1.jpg" alt="" title="slider-1" width="1800" height="844" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                                                        <div class="tp-caption   tp-resizeme" id="slide-1-layer-1" data-x="89" data-y="center" data-voffset="10" data-width="['auto']" data-height="['auto']" data-type="text" data-responsive_offset="on" data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","speed":2000,"to":"o:1;","delay":450,"ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 5; white-space: nowrap; font-size: 81px; font-weight: 600; color: rgba(255,255,255,1);font-family:Poppins;">Special</div>
                                                        <div class="tp-caption   tp-resizeme" id="slide-1-layer-2" data-x="90" data-y="center" data-voffset="92" data-width="['auto']" data-height="['auto']" data-type="text" data-responsive_offset="on" data-frames='[{"from":"x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:1;","mask":"x:[100%];y:0;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":690,"ease":"Power3.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 6; white-space: nowrap; font-size: 45px; font-weight: 600; color: rgba(186,217,255,1);font-family:Poppins;"> 7 Days in Switzerland</div>
                                                        <div class="tp-caption   tp-resizeme" id="slide-1-layer-3" data-x="92" data-y="center" data-voffset="138" data-width="['auto']" data-height="['auto']" data-visibility="['on','on','on','off']" data-type="text" data-responsive_offset="on" data-frames='[{"from":"opacity:0;","speed":300,"to":"o:1;","delay":880,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 7; white-space: nowrap; font-size: 18px; font-weight: 400; color: rgba(218,229,255,1);font-family:Poppins;">Bern, Lucern, Zurich, Zermatt, Metahorn, Jungfrau</div>
                                                        <div class="tp-caption rev-btn  tp-resizeme" id="slide-1-layer-4" data-x="94" data-y="center" data-voffset="200" data-width="['auto']" data-height="['auto']" data-type="button" data-responsive_offset="on" data-frames='[{"from":"opacity:0;","speed":300,"to":"o:1;","delay":1060,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255,255,255,1);bg:rgba(70,123,231,1);"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[20,20,20,20]" data-paddingright="[32,32,32,32]" data-paddingbottom="[20,20,20,20]" data-paddingleft="[32,32,32,32]" style="z-index: 8; white-space: nowrap; font-size: 13px; line-height: 12px; font-weight: 900; color: rgba(255,255,255,1);font-family:Roboto;text-transform:uppercase;background-color:rgba(70,146,231,1);border-radius:3px 3px 3px 3px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">Learn More</div>
                                                    </li>
                                                    <li data-index="rs-2" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300" data-thumb="upload/slider-2-100x50.jpg" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description=""> <img src="/travel/public/fe/upload/slider-2.jpg" alt="" title="slider-2" width="1800" height="844" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                                                        <div class="tp-caption   tp-resizeme" id="slide-2-layer-2" data-x="89" data-y="center" data-voffset="-17" data-width="['auto']" data-height="['auto']" data-type="text" data-responsive_offset="on" data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","speed":2000,"to":"o:1;","delay":500,"ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 9; white-space: nowrap; font-size: 37px; font-weight: 500; color: rgba(186,217,255,1);font-family:Poppins;">Find your perfect</div>
                                                        <div class="tp-caption   tp-resizeme" id="slide-2-layer-1" data-x="89" data-y="center" data-voffset="62" data-width="['auto']" data-height="['auto']" data-type="text" data-responsive_offset="on" data-frames='[{"from":"x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:1;","mask":"x:[100%];y:0;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":780,"ease":"Power3.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 10; white-space: nowrap; font-size: 90px; font-weight: 700; color: rgba(255,255,255,1);font-family:Poppins;text-transform:uppercase;">Vacation</div>
                                                        <div class="tp-caption   tp-resizeme" id="slide-2-layer-3" data-x="89" data-y="center" data-voffset="137" data-width="['auto']" data-height="['auto']" data-visibility="['on','on','on','off']" data-type="text" data-responsive_offset="on" data-frames='[{"from":"opacity:0;","speed":300,"to":"o:1;","delay":1010,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 11; white-space: nowrap; font-size: 18px; font-weight: 400; color: rgba(218,229,255,1);font-family:Poppins;">Italy, Rome, Venice, Milan</div>
                                                        <div class="tp-caption rev-btn  tp-resizeme" id="slide-2-layer-4" data-x="89" data-y="center" data-voffset="203" data-width="['auto']" data-height="['auto']" data-type="button" data-responsive_offset="on" data-frames='[{"from":"opacity:0;","speed":300,"to":"o:1;","delay":1160,"ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255,255,255,1);bg:rgba(70,123,231,1);"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[20,20,20,20]" data-paddingright="[32,32,32,32]" data-paddingbottom="[20,20,20,20]" data-paddingleft="[32,32,32,32]" style="z-index: 12; white-space: nowrap; font-size: 13px; line-height: 12px; font-weight: 900; color: rgba(255,255,255,1);font-family:Roboto;text-transform:uppercase;background-color:rgba(70,146,231,1);border-radius:3px 3px 3px 3px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">Learn More</div>
                                                    </li>
                                                    <li data-index="rs-3" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300" data-thumb="upload/slider-3-100x50.jpg" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description=""> <img src="/travel/public/fe/upload/slider-3.jpg" alt="" title="slider-3" width="1800" height="844" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                                                        <div class="tp-caption   tp-resizeme" id="slide-3-layer-2" data-x="89" data-y="center" data-voffset="-13" data-width="['auto']" data-height="['auto']" data-type="text" data-responsive_offset="on" data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","speed":2000,"to":"o:1;","delay":500,"ease":"Power4.easeInOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="['center','center','center','center']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 13; white-space: nowrap; font-size: 37px; font-weight: 400; color: rgba(255,255,255,1);font-family:Poppins;text-transform:uppercase;letter-spacing:2px;">Open Your Eyes To</div>
                                                        <div class="tp-caption   tp-resizeme" id="slide-3-layer-1" data-x="89" data-y="center" data-voffset="66" data-width="['auto']" data-height="['auto']" data-type="text" data-responsive_offset="on" data-frames='[{"from":"x:[-175%];y:0px;z:0;rX:0;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:1;","mask":"x:[100%];y:0;","speed":1500,"to":"o:1;","delay":780,"ease":"Power3.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]' data-textAlign="['center','center','center','center']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 14; white-space: nowrap; font-size: 73px; font-weight: 700; color: rgba(255,255,255,1);font-family:Poppins;">The Hidden World</div>
                                                        <div class="tp-caption rev-btn  tp-resizeme" id="slide-3-layer-4" data-x="89" data-y="center" data-voffset="158" data-width="['auto']" data-height="['auto']" data-type="button" data-responsive_offset="on" data-frames='[{"from":"opacity:0;","speed":300,"to":"o:1;","delay":1030,"ease":"Power2.easeInOut"},{"delay":"wait","speed":170,"to":"opacity:0;","ease":"nothing"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(255,255,255,1);bg:rgba(70,123,231,1);"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[20,20,20,20]" data-paddingright="[32,32,32,32]" data-paddingbottom="[20,20,20,20]" data-paddingleft="[32,32,32,32]" style="z-index: 15; white-space: nowrap; font-size: 13px; line-height: 12px; font-weight: 700; color: rgba(48,30,30,1);font-family:Roboto;text-transform:uppercase;background-color:rgba(255,255,255,1);border-radius:3px 3px 3px 3px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;letter-spacing:1px;cursor:pointer;">Learn More</div>
                                                    </li>
                                                </ul>

                                                <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                    <div class="gdlr-core-pbf-wrapper " id="div_29f0_0" data-skin="Blue Column Service">
                        <div class="gdlr-core-pbf-background-wrap">
                            <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" id="div_29f0_1" data-parallax-speed="0"></div>
                        </div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-column gdlr-core-column-15 gdlr-core-column-first">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-column-service-item gdlr-core-item-pdb  gdlr-core-left-align gdlr-core-column-service-icon-left gdlr-core-no-caption gdlr-core-item-pdlr" id="div_29f0_2">
                                                    <div class="gdlr-core-column-service-media gdlr-core-media-image"><img src="/travel/public/fe/upload/icon-1.png" alt="" width="49" height="49" /></div>
                                                    <div class="gdlr-core-column-service-content-wrapper">
                                                        <div class="gdlr-core-column-service-title-wrap" id="div_29f0_3">
                                                            <h3 class="gdlr-core-column-service-title gdlr-core-skin-title">500+ Destinations</h3></div>
                                                        <div class="gdlr-core-column-service-content" id="div_29f0_4">
                                                            <p>Morbi leo risus, porta ac</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-15">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-column-service-item gdlr-core-item-pdb  gdlr-core-left-align gdlr-core-column-service-icon-left gdlr-core-no-caption gdlr-core-item-pdlr" id="div_29f0_5">
                                                    <div class="gdlr-core-column-service-media gdlr-core-media-image"><img src="/travel/public/fe/upload/icon-2.png" alt="" width="41" height="49" /></div>
                                                    <div class="gdlr-core-column-service-content-wrapper">
                                                        <div class="gdlr-core-column-service-title-wrap" id="div_29f0_6">
                                                            <h3 class="gdlr-core-column-service-title gdlr-core-skin-title">Best Price Guarantee</h3></div>
                                                        <div class="gdlr-core-column-service-content" id="div_29f0_7">
                                                            <p>Morbi leo risus, porta ac</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-15">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-column-service-item gdlr-core-item-pdb  gdlr-core-left-align gdlr-core-column-service-icon-left gdlr-core-no-caption gdlr-core-item-pdlr" id="div_29f0_8">
                                                    <div class="gdlr-core-column-service-media gdlr-core-media-image"><img src="/travel/public/fe/upload/icon-3.png" alt="" width="30" height="39" /></div>
                                                    <div class="gdlr-core-column-service-content-wrapper">
                                                        <div class="gdlr-core-column-service-title-wrap" id="div_29f0_9">
                                                            <h3 class="gdlr-core-column-service-title gdlr-core-skin-title">Great Customer</h3></div>
                                                        <div class="gdlr-core-column-service-content" id="div_29f0_10">
                                                            <p>Morbi leo risus, porta ac</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-15">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-column-service-item gdlr-core-item-pdb  gdlr-core-left-align gdlr-core-column-service-icon-left gdlr-core-no-caption gdlr-core-item-pdlr" id="div_29f0_11">
                                                    <div class="gdlr-core-column-service-media gdlr-core-media-image"><img src="/travel/public/fe/upload/icon-4.png" alt="" width="35" height="38" /></div>
                                                    <div class="gdlr-core-column-service-content-wrapper">
                                                        <div class="gdlr-core-column-service-title-wrap" id="div_29f0_12">
                                                            <h3 class="gdlr-core-column-service-title gdlr-core-skin-title">Super Fast Booking</h3></div>
                                                        <div class="gdlr-core-column-service-content" id="div_29f0_13">
                                                            <p>Morbi leo risus, porta ac</p>
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
                    <div class="gdlr-core-pbf-wrapper " id="div_29f0_14" data-skin="Dark Search">
                        <div class="gdlr-core-pbf-background-wrap">
                            <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" id="div_29f0_15" data-parallax-speed="0"></div>
                        </div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-element">
                                    <div class="tourmaster-tour-search-item clearfix tourmaster-style-column tourmaster-column-count-6 tourmaster-item-pdlr">
                                        <div class="tourmaster-tour-search-wrap ">
                                            <form class="tourmaster-form-field tourmaster-with-border" action="/travel/tours" method="GET">
                                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-keywords">
                                                    <label>Keywords</label>
                                                    <div class="tourmaster-tour-search-field-inner">
                                                        <input name="q" id="filterQ" type="text" value="" />
                                                    </div>
                                                </div>
                                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-tax">
                                                    <label>Activity</label>
                                                    <div class="tourmaster-combobox-wrap">
                                                        <select name="act" id="filterAct">
                                                            <option value="">Any</option>
                                                            <% for(Activity act : filterHotActivities) { %>
                                                            <option value="<%= act.getId() %>"><%= act.getName() %></option>
                                                            <% } %>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-tax">
                                                    <label>Destination</label>
                                                    <div class="tourmaster-combobox-wrap">
                                                        <select name="des" id="filterDes">
                                                            <option value="">Any</option>
                                                            <% for(Destination des : filterHotDestinations) { %>
                                                            <option value="<%= des.getId() %>"><%= des.getName() %></option>
                                                            <% } %>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-duration">
                                                    <label>Duration</label>
                                                    <div class="tourmaster-combobox-wrap">
                                                        <select  name="dur" id="filterDur">
                                                            <option value="">Any</option>
                                                            <option value="1">1 Day Tour</option>
                                                            <option value="2">2-4 Days Tour</option>
                                                            <option value="5">5-7 Days Tour</option>
                                                            <option value="7">7+ Days Tour</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-date">
                                                    <label>Date</label>
                                                    <div class="tourmaster-datepicker-wrap">
                                                        <input class="tourmaster-datepicker" type="text" id="filterDate" value="" data-date-format="d M yy" />
                                                        <input class="tourmaster-datepicker-alt" name="date" type="hidden" value="" />
                                                    </div>
                                                </div>
                                                <input class="tourmaster-tour-search-submit" type="submit" value="Search" />
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-wrapper " id="div_29f0_16" data-skin="Homepage Search">
                        <div class="gdlr-core-pbf-background-wrap">
                            <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" id="div_29f0_17" data-parallax-speed="0"></div>
                        </div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr"  id="gdlr-core-title-item-id-88464">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" id="h3_29f0_0">Popular Tour Packages<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3><a href="#" target="_self" class="gdlr-core-title-item-link"><span class="gdlr-core-separator" >/</span>View All Tours</a></div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="tourmaster-tour-item clearfix  tourmaster-tour-item-style-grid tourmaster-item-pdlr tourmaster-tour-item-column-3" id="div_29f0_18">
                                        <div class="gdlr-core-flexslider flexslider gdlr-core-js-2 tourmaster-nav-style-rect" data-type="carousel" data-column="3" data-nav="navigation" data-nav-parent="tourmaster-tour-item" data-vcenter-nav="1">
                                            <ul class="slides">
                                            	<% for(Tour tour : listHotTours){ %>
                                                <li class="gdlr-core-item-mglr">
                                                    <div class="tourmaster-tour-grid tourmaster-tour-frame tourmaster-price-right-title">
                                                        <div class="tourmaster-tour-thumbnail tourmaster-media-image">
                                                            <a href="#"><img src="<%= tour.getThumbnail() %>" alt="" width="700" height="450" /></a>
                                                        </div>
                                                        <div class="tourmaster-tour-content-wrap gdlr-core-skin-e-background">
                                                            <h3 class="tourmaster-tour-title gdlr-core-skin-title"><a href="#" ><%= tour.getDestinationName() %>&#8211; <%= tour.getName() %></a></h3>
                                                            <% if(tour.getoPrice() == tour.getpPrice()){ %>
                                                            <div class="tourmaster-tour-price-wrap "><span class="tourmaster-tour-price"><span class="tourmaster-head">From</span><span class="tourmaster-tail">$<%= tour.getpPrice() %></span></span></div>
                                                            <% }else{ %>
                                                            <div class="tourmaster-tour-price-wrap tourmaster-discount"><span class="tourmaster-tour-price"><span class="tourmaster-head">From</span><span class="tourmaster-tail">$<%= tour.getoPrice() %></span></span><span class="tourmaster-tour-discount-price">$<%= tour.getpPrice() %></span></div>
                                                            <% } %>
                                                            <div class="tourmaster-tour-info-wrap clearfix">
                                                                <div class="tourmaster-tour-info tourmaster-tour-info-duration-text "><i class="icon_clock_alt"></i><%= tour.getDaysText() %></div>
                                                            </div>
                                                            <div class="tourmaster-tour-rating"><% for(int i =0; i< tour.getStar(); i++){ %><i class="fa fa-star"></i><% } %><% for(int i =0; i< 5-tour.getStar(); i++){ %><i class="fa fa-star-o"></i><% } %><span class="tourmaster-tour-rating-text">(<%= tour.getReviews().size() %> Reviews)</span></div>
                                                        </div>
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
                    <div class="gdlr-core-pbf-wrapper " id="div_29f0_25">
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_29f0_26">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" id="h3_29f0_1"><span class="gdlr-core-title-item-left-icon" id="span_29f0_0"  ><i class="icon_pin_alt" id="i_29f0_0"  ></i></span>Popular Destinations<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3><a href="#" target="_self" class="gdlr-core-title-item-link"><span class="gdlr-core-separator" >/</span>View All Destinations</a></div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-45 gdlr-core-column-first">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                                                    <div class="gdlr-core-text-box-item-content">
                                                        <p>Etiam porta sem malesuada magna mollis euismod. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-wrapper " id="div_29f0_27">
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full-no-space">
                                <div class="gdlr-core-pbf-element">
                                    <div class="tourmaster-tour-category clearfix ">
                                        <% for(Destination des : listHotDestinations){ %>
                                        <div class="tourmaster-tour-category-grid tourmaster-item-list  tourmaster-item-pdlr tourmaster-item-mgb tourmaster-column-12  tourmaster-with-thumbnail">
                                            <div class="tourmaster-tour-category-item-wrap">
                                                <div class="tourmaster-tour-category-thumbnail tourmaster-media-image"><img src="<%= des.getThumbnail() %>" alt="" width="800" height="960" /></div>
                                                <div class="tourmaster-tour-category-overlay"></div>
                                                <div class="tourmaster-tour-category-overlay-front"></div>
                                                <div class="tourmaster-tour-category-head">
                                                    <div class="tourmaster-tour-category-head-display clearfix">
                                                        <h3 class="tourmaster-tour-category-title"><i class="icon_pin_alt" ></i><%= des.getName() %></h3>
                                                        <div class="tourmaster-tour-category-count"><%= des.getTourCount() %> tours</div>
                                                    </div>
                                                    <div class="tourmaster-tour-category-head-animate"><a class="tourmaster-tour-category-head-link" href="#">View all tours</a>
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
                    <div class="gdlr-core-pbf-wrapper " id="div_29f0_28">
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-column gdlr-core-column-36 gdlr-core-column-first">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_29f0_29">
                                                    <div class="gdlr-core-title-item-title-wrap">
                                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" id="h3_29f0_2"><span class="gdlr-core-title-item-left-icon" id="span_29f0_1"  ><i class="fa fa-sliders" id="i_29f0_1"  ></i></span>Browse Tours By Activity<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-24">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_29f0_30">
                                                    <div class="gdlr-core-title-item-title-wrap">
                                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" id="h3_29f0_3"><span class="gdlr-core-title-item-left-icon" id="span_29f0_2"  ><i class="fa fa-envelope-o" id="i_29f0_2"  ></i></span>Newsletter<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-36 gdlr-core-column-first">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-icon-list-item gdlr-core-item-pdlr gdlr-core-item-pdb clearfix ">
                                                    <ul>
                                                    	<% int tempCountActivity = 0; %>
                                                    	<% for(Activity act : listHotActivities){ %>
                                                    	<% tempCountActivity += 1; %>
                                                        <li class=" gdlr-core-skin-divider gdlr-core-column-30 <% if(tempCountActivity % 2 == 1){ %>gdlr-core-column-first<% } %>">
                                                            <a href="#">
                                                                <div class="gdlr-core-icon-list-content-wrap"><span class="gdlr-core-icon-list-content" id="span_29f0_3"><%= act.getName() %></span>
                                                            </div></a>
                                                        </li>
                                                        <% } %>
                                                    </ul>
                                                </div>
                                            </div>
                                         </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-24" data-skin="Newsletter form">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" id="div_29f0_31">
                                                    <div class="gdlr-core-text-box-item-content">
                                                        <p>Subscribe for updates &#038; promotions</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-newsletter-item gdlr-core-item-pdlr gdlr-core-item-pdb  gdlr-core-style-round" id="div_29f0_32">

                                                    <div class="newsletter newsletter-subscription">
                                                        <form class="gdlr-core-newsletter-form clearfix" method="post" action="#">
                                                            <div class="gdlr-core-newsletter-email">
                                                                <input class="newsletter-email gdlr-core-skin-e-background gdlr-core-skin-e-content" placeholder="Your Email Address" type="email" name="ne" size="30" required />
                                                            </div>
                                                            <div class="gdlr-core-newsletter-submit">
                                                                <input class="newsletter-submit" type="submit" value="Subscribe" />
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-social-network-item gdlr-core-item-pdb  gdlr-core-left-align gdlr-core-item-pdlr">
                                                    <a href="mailto:#" target="_blank" class="gdlr-core-social-network-icon" title="email" id="a_29f0_0">
                                                        <i class="fa fa-envelope" ></i>
                                                    </a>
                                                    <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="facebook" id="a_29f0_1">
                                                        <i class="fa fa-facebook" ></i>
                                                    </a>
                                                    <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="google-plus" id="a_29f0_2">
                                                        <i class="fa fa-google-plus" ></i>
                                                    </a>
                                                    <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="linkedin" id="a_29f0_3">
                                                        <i class="fa fa-linkedin" ></i>
                                                    </a>
                                                    <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="pinterest" id="a_29f0_4">
                                                        <i class="fa fa-pinterest-p" ></i>
                                                    </a>
                                                    <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="skype" id="a_29f0_5">
                                                        <i class="fa fa-skype" ></i>
                                                    </a>
                                                    <a href="#" target="_blank" class="gdlr-core-social-network-icon" title="twitter" id="a_29f0_6">
                                                        <i class="fa fa-twitter" ></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-wrapper " id="div_29f0_33">
                        <div class="gdlr-core-pbf-background-wrap">
                            <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" id="div_29f0_34" data-parallax-speed="0.2"></div>
                        </div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js "></div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-30" data-skin="White Text">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_29f0_35">
                                                    <div class="gdlr-core-title-item-title-wrap">
                                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" id="h3_29f0_4">Discount <span id="span_29f0_11">10-30% Off</span><span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align" id="div_29f0_36">
                                                    <div class="gdlr-core-text-box-item-content" id="div_29f0_37">
                                                        <p>Curabitur blandit tempus porttitor. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-button-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align"><a class="gdlr-core-button  gdlr-core-button-solid gdlr-core-button-no-border" href="#" id="gdlr-core-button-id-90320"><span class="gdlr-core-content" >See Promotion Tours</span></a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-wrapper " id="div_29f0_38">
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_29f0_39">
                                        <div class="gdlr-core-title-item-title-wrap">
                                            <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" id="h3_29f0_5"><span class="gdlr-core-title-item-left-icon" id="span_29f0_12"  ><i class="icon_lightbulb_alt" id="i_29f0_8"  ></i></span>Travel Articles<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3><a href="#" target="_self" class="gdlr-core-title-item-link"><span class="gdlr-core-separator" >/</span>Read All Articles</a></div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-blog-item gdlr-core-item-pdb clearfix  gdlr-core-style-blog-image" id="div_29f0_40">
                                        <div class="gdlr-core-blog-item-holder gdlr-core-js-2 clearfix" data-layout="fitrows">
                                            <% for(Blog blog: listHotBlogs ){ %>
                                            <div class="gdlr-core-item-list  gdlr-core-item-pdlr gdlr-core-item-mgb gdlr-core-column-15">
                                                <div class="gdlr-core-blog-modern  gdlr-core-with-image gdlr-core-hover-overlay-content gdlr-core-opacity-on-hover gdlr-core-zoom-on-hover">
                                                    <div class="gdlr-core-blog-modern-inner">
                                                        <div class="gdlr-core-blog-thumbnail gdlr-core-media-image"><img src="<%= blog.getThumbnail() %>" alt="" width="700" height="660" /></div>
                                                        <div class="gdlr-core-blog-modern-content  gdlr-core-center-align" id="div_29f0_41">
                                                            <h3 class="gdlr-core-blog-title gdlr-core-skin-title"><a href="#" ><%= blog.getTitle() %></a></h3>
                                                            <div class="gdlr-core-blog-info-wrapper gdlr-core-skin-divider"><span class="gdlr-core-blog-info gdlr-core-blog-info-font gdlr-core-skin-caption gdlr-core-blog-info-date"><span class="gdlr-core-head" ><i class="icon_clock_alt" ></i></span><a href="#"><%= dateConvertion.toStringDate(blog.getCreatedTime()) %></a></span>
                                                            </div>
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
                    <div class="gdlr-core-pbf-wrapper " id="div_29f0_45" data-skin="Blue Column Service">
                        <div class="gdlr-core-pbf-background-wrap">
                            <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" id="div_29f0_46" data-parallax-speed="0"></div>
                        </div>
                        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                                <div class="gdlr-core-pbf-column gdlr-core-column-15 gdlr-core-column-first" data-skin="Blue Icon">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js  gdlr-core-column-extend-left" id="div_29f0_47" data-sync-height="column-service-height">
                                        <div class="gdlr-core-pbf-background-wrap" id="div_29f0_48"></div>
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" id="div_29f0_49">
                                                    <div class="gdlr-core-title-item-title-wrap">
                                                        <h3 class="gdlr-core-title-item-title gdlr-core-skin-title" id="h3_29f0_10">Why Book With Us?<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider" ></span></h3></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-15" data-skin="Blue Icon">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " id="div_29f0_50" data-sync-height="column-service-height">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-column-service-item gdlr-core-item-pdb  gdlr-core-left-align gdlr-core-column-service-icon-left gdlr-core-no-caption gdlr-core-item-pdlr" id="div_29f0_51">
                                                    <div class="gdlr-core-column-service-media gdlr-core-media-image"><img src="/travel/public/fe/upload/icon-10.png" alt="" width="37" height="39" /></div>
                                                    <div class="gdlr-core-column-service-content-wrapper">
                                                        <div class="gdlr-core-column-service-title-wrap" id="div_29f0_52">
                                                            <h3 class="gdlr-core-column-service-title gdlr-core-skin-title">40,000+ Customers</h3></div>
                                                        <div class="gdlr-core-column-service-content" id="div_29f0_53">
                                                            <p>Morbi leo risus, porta ac</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-15" data-skin="Blue Icon">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " id="div_29f0_54" data-sync-height="column-service-height">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-column-service-item gdlr-core-item-pdb  gdlr-core-left-align gdlr-core-column-service-icon-left gdlr-core-no-caption gdlr-core-item-pdlr" id="div_29f0_55">
                                                    <div class="gdlr-core-column-service-media gdlr-core-media-image"><img src="/travel/public/fe/upload/icon-11.png" alt="" width="34" height="43" /></div>
                                                    <div class="gdlr-core-column-service-content-wrapper">
                                                        <div class="gdlr-core-column-service-title-wrap" id="div_29f0_56">
                                                            <h3 class="gdlr-core-column-service-title gdlr-core-skin-title">Award Winning</h3></div>
                                                        <div class="gdlr-core-column-service-content" id="div_29f0_57">
                                                            <p>Morbi leo risus, porta ac</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="gdlr-core-pbf-column gdlr-core-column-15" data-skin="Blue Icon">
                                    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js " id="div_29f0_58" data-sync-height="column-service-height">
                                        <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content">
                                            <div class="gdlr-core-pbf-element">
                                                <div class="gdlr-core-column-service-item gdlr-core-item-pdb  gdlr-core-left-align gdlr-core-column-service-icon-left gdlr-core-no-caption gdlr-core-item-pdlr" id="div_29f0_59">
                                                    <div class="gdlr-core-column-service-media gdlr-core-media-image"><img src="/travel/public/fe/upload/icon-12.png" alt="" width="27" height="37" /></div>
                                                    <div class="gdlr-core-column-service-content-wrapper">
                                                        <div class="gdlr-core-column-service-title-wrap" id="div_29f0_60">
                                                            <h3 class="gdlr-core-column-service-title gdlr-core-skin-title">Secure Payment</h3></div>
                                                        <div class="gdlr-core-column-service-content" id="div_29f0_61">
                                                            <p>Morbi leo risus, porta ac</p>
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
            </div>
			<%@include file="./layout/footer.jsp" %>
        </div>
    </div><a href="#traveltour-top-anchor" class="traveltour-footer-back-to-top-button" id="traveltour-footer-back-to-top-button"><i class="fa fa-angle-up" ></i></a>


    <%@include file="./layout/scripts.jsp" %>


    <!-- Rev SLider Plugin -->
    <script type='text/javascript' src='/travel/public/fe/plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js'></script>
    <script type='text/javascript' src='/travel/public/fe/plugins/revslider/public/assets/js/jquery.themepunch.revolution.min.js'></script>
    <script type="text/javascript" src="/travel/public/fe/plugins/revslider/public/assets/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="/travel/public/fe/plugins/revslider/public/assets/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="/travel/public/fe/plugins/revslider/public/assets/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="/travel/public/fe/plugins/revslider/public/assets/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="/travel/public/fe/plugins/revslider/public/assets/js/extensions/revolution.extension.parallax.min.js"></script>  
    <script type="text/javascript" src="/travel/public/fe/plugins/revslider/public/assets/js/extensions/revolution.extension.actions.min.js"></script> 
    <script type="text/javascript" src="/travel/public/fe/plugins/revslider/public/assets/js/extensions/revolution.extension.video.min.js"></script> 
    <script type="text/javascript">
        /*<![CDATA[*/
        function setREVStartSize(e) {
            try {
                e.c = jQuery(e.c);
                var i = jQuery(window).width(),
                    t = 9999,
                    r = 0,
                    n = 0,
                    l = 0,
                    f = 0,
                    s = 0,
                    h = 0;
                if (e.responsiveLevels && (jQuery.each(e.responsiveLevels, function(e, f) {
                        f > i && (t = r = f, l = e), i > f && f > r && (r = f, n = e)
                    }), t > r && (l = n)), f = e.gridheight[l] || e.gridheight[0] || e.gridheight, s = e.gridwidth[l] || e.gridwidth[0] || e.gridwidth, h = i / s, h = h > 1 ? 1 : h, f = Math.round(h * f), "fullscreen" == e.sliderLayout) {
                    var u = (e.c.width(), jQuery(window).height());
                    if (void 0 != e.fullScreenOffsetContainer) {
                        var c = e.fullScreenOffsetContainer.split(",");
                        if (c) jQuery.each(c, function(e, i) {
                            u = jQuery(i).length > 0 ? u - jQuery(i).outerHeight(!0) : u
                        }), e.fullScreenOffset.split("%").length > 1 && void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 ? u -= jQuery(window).height() * parseInt(e.fullScreenOffset, 0) / 100 : void 0 != e.fullScreenOffset && e.fullScreenOffset.length > 0 && (u -= parseInt(e.fullScreenOffset, 0))
                    }
                    f = u
                } else void 0 != e.minHeight && f < e.minHeight && (f = e.minHeight);
                e.c.closest(".rev_slider_wrapper").css({
                    height: f
                })
            } catch (d) {
                console.log("Failure at Presize of Slider:" + d)
            }
        }; /*]]>*/
    </script>
    <script type="text/javascript">
        /*<![CDATA[*/
        function revslider_showDoubleJqueryError(sliderID) {
            var errorMessage = "Revolution Slider Error: You have some jquery.js library include that comes after the revolution files js include.";
            errorMessage += "<br> This includes make eliminates the revolution slider libraries, and make it not work.";
            errorMessage += "<br><br> To fix it you can:<br>&nbsp;&nbsp;&nbsp; 1. In the Slider Settings -> Troubleshooting set option:  <strong><b>Put JS Includes To Body</b></strong> option to true.";
            errorMessage += "<br>&nbsp;&nbsp;&nbsp; 2. Find the double jquery.js include and remove it.";
            errorMessage = "<span style='font-size:16px;color:#BC0C06;'>" + errorMessage + "</span>";
            jQuery(sliderID).show().html(errorMessage);
        } /*]]>*/
    </script>
    <script>
        /*<![CDATA[*/
        var htmlDiv = document.getElementById("rs-plugin-settings-inline-css");
        var htmlDivCss = "";
        if (htmlDiv) {
            htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
        } else {
            var htmlDiv = document.createElement("div");
            htmlDiv.innerHTML = "<style>" + htmlDivCss + "</style>";
            document.getElementsByTagName("head")[0].appendChild(htmlDiv.childNodes[0]);
        } /*]]>*/
    </script>
    <script type="text/javascript">
        /*<![CDATA[*/
        if (setREVStartSize !== undefined) setREVStartSize({
            c: '#rev_slider_1_1',
            gridwidth: [1280],
            gridheight: [680],
            sliderLayout: 'auto'
        });
        var revapi1, tpj;
        (function() {
            if (!/loaded|interactive|complete/.test(document.readyState)) document.addEventListener("DOMContentLoaded", onLoad);
            else onLoad();

            function onLoad() {
                if (tpj === undefined) {
                    tpj = jQuery;
                    if ("off" == "on") tpj.noConflict();
                }
                if (tpj("#rev_slider_1_1").revolution == undefined) {
                    revslider_showDoubleJqueryError("#rev_slider_1_1");
                } else {
                    revapi1 = tpj("#rev_slider_1_1").show().revolution({
                        sliderType: "standard",
                        jsFileLocation: "//demo.goodlayers.com/travelwp-content/plugins/revslider/public/assets/js/",
                        sliderLayout: "auto",
                        dottedOverlay: "none",
                        delay: 9000,
                        navigation: {
                            keyboardNavigation: "off",
                            keyboard_direction: "horizontal",
                            mouseScrollNavigation: "off",
                            mouseScrollReverse: "default",
                            onHoverStop: "off",
                            touch: {
                                touchenabled: "on",
                                touchOnDesktop: "off",
                                swipe_threshold: 75,
                                swipe_min_touches: 1,
                                swipe_direction: "horizontal",
                                drag_block_vertical: false
                            },
                            arrows: {
                                style: "uranus",
                                enable: true,
                                hide_onmobile: true,
                                hide_under: 1024,
                                hide_onleave: true,
                                hide_delay: 200,
                                hide_delay_mobile: 1200,
                                tmp: '',
                                left: {
                                    h_align: "left",
                                    v_align: "center",
                                    h_offset: 20,
                                    v_offset: 50
                                },
                                right: {
                                    h_align: "right",
                                    v_align: "center",
                                    h_offset: 20,
                                    v_offset: 50
                                }
                            },
                            bullets: {
                                enable: true,
                                hide_onmobile: false,
                                style: "uranus",
                                hide_onleave: false,
                                direction: "horizontal",
                                h_align: "center",
                                v_align: "bottom",
                                h_offset: 5,
                                v_offset: 25,
                                space: 10,
                                tmp: '<span class="tp-bullet-inner"></span>'
                            }
                        },
                        visibilityLevels: [1240, 1024, 778, 480],
                        gridwidth: 1280,
                        gridheight: 680,
                        lazyType: "none",
                        shadow: 0,
                        spinner: "off",
                        stopLoop: "off",
                        stopAfterLoops: -1,
                        stopAtSlide: -1,
                        shuffle: "off",
                        autoHeight: "off",
                        disableProgressBar: "on",
                        hideThumbsOnMobile: "off",
                        hideSliderAtLimit: 0,
                        hideCaptionAtLimit: 0,
                        hideAllCaptionAtLilmit: 0,
                        debugMode: false,
                        fallbacks: {
                            simplifyAll: "off",
                            nextSlideOnWindowFocus: "off",
                            disableFocusListener: false,
                        }
                    });
                };
            };
        }()); /*]]>*/
    </script>
    <script>
        /*<![CDATA[*/
        var htmlDivCss = unescape("%23rev_slider_1_1%20.uranus.tparrows%20%7B%0A%20%20width%3A50px%3B%0A%20%20height%3A50px%3B%0A%20%20background%3Argba%28255%2C255%2C255%2C0%29%3B%0A%20%7D%0A%20%23rev_slider_1_1%20.uranus.tparrows%3Abefore%20%7B%0A%20width%3A50px%3B%0A%20height%3A50px%3B%0A%20line-height%3A50px%3B%0A%20font-size%3A40px%3B%0A%20transition%3Aall%200.3s%3B%0A-webkit-transition%3Aall%200.3s%3B%0A%20%7D%0A%20%0A%20%20%23rev_slider_1_1%20.uranus.tparrows%3Ahover%3Abefore%20%7B%0A%20%20%20%20opacity%3A0.75%3B%0A%20%20%7D%0A%23rev_slider_1_1%20.uranus%20.tp-bullet%7B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20box-shadow%3A%200%200%200%202px%20rgba%28255%2C%20255%2C%20255%2C%200%29%3B%0A%20%20-webkit-transition%3A%20box-shadow%200.3s%20ease%3B%0A%20%20transition%3A%20box-shadow%200.3s%20ease%3B%0A%20%20background%3Atransparent%3B%0A%20%20width%3A15px%3B%0A%20%20height%3A15px%3B%0A%7D%0A%23rev_slider_1_1%20.uranus%20.tp-bullet.selected%2C%0A%23rev_slider_1_1%20.uranus%20.tp-bullet%3Ahover%20%7B%0A%20%20box-shadow%3A%200%200%200%202px%20rgba%28255%2C%20255%2C%20255%2C1%29%3B%0A%20%20border%3Anone%3B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20background%3Atransparent%3B%0A%7D%0A%0A%23rev_slider_1_1%20.uranus%20.tp-bullet-inner%20%7B%0A%20%20-webkit-transition%3A%20background-color%200.3s%20ease%2C%20-webkit-transform%200.3s%20ease%3B%0A%20%20transition%3A%20background-color%200.3s%20ease%2C%20transform%200.3s%20ease%3B%0A%20%20top%3A%200%3B%0A%20%20left%3A%200%3B%0A%20%20width%3A%20100%25%3B%0A%20%20height%3A%20100%25%3B%0A%20%20outline%3A%20none%3B%0A%20%20border-radius%3A%2050%25%3B%0A%20%20background-color%3A%20rgb%28255%2C%20255%2C%20255%29%3B%0A%20%20background-color%3A%20rgba%28255%2C%20255%2C%20255%2C%200.3%29%3B%0A%20%20text-indent%3A%20-999em%3B%0A%20%20cursor%3A%20pointer%3B%0A%20%20position%3A%20absolute%3B%0A%7D%0A%0A%23rev_slider_1_1%20.uranus%20.tp-bullet.selected%20.tp-bullet-inner%2C%0A%23rev_slider_1_1%20.uranus%20.tp-bullet%3Ahover%20.tp-bullet-inner%7B%0A%20transform%3A%20scale%280.4%29%3B%0A%20-webkit-transform%3A%20scale%280.4%29%3B%0A%20background-color%3Argb%28255%2C%20255%2C%20255%29%3B%0A%7D%0A");
        var htmlDiv = document.getElementById('rs-plugin-settings-inline-css');
        if (htmlDiv) {
            htmlDiv.innerHTML = htmlDiv.innerHTML + htmlDivCss;
        } else {
            var htmlDiv = document.createElement('div');
            htmlDiv.innerHTML = '<style>' + htmlDivCss + '</style>';
            document.getElementsByTagName('head')[0].appendChild(htmlDiv.childNodes[0]);
        } /*]]>*/
    </script>

</body>
</html>