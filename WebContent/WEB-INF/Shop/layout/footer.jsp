
<%@page import="java.util.Date"%>
<%@page import="com.van.travel.common.DateConvertion"%>
<%@page import="com.van.travel.models.setting.InfosSetting"%>
<%@page import="com.van.travel.models.Destination"%>
<%@page import="com.van.travel.web.views.FooterView"%>
<%
	FooterView footer_footerView = new FooterView();
	InfosSetting shopCtrl_InfosSetting_footer = (InfosSetting) request.getAttribute("shopCtrl_InfosSetting");
	DateConvertion dateConvertion_footer = new DateConvertion("yyyy");
%>
            <footer>
                <div class="traveltour-footer-wrapper  traveltour-with-column-divider">
                    <div class="traveltour-footer-container traveltour-container clearfix">
                        <div class="traveltour-footer-column traveltour-item-pdlr traveltour-column-20">
                            <div id="text-1" class="widget widget_text traveltour-widget">
                                <div class="textwidget">
                                	<img src="<%= shopCtrl_InfosSetting_footer.data.get("shop_logo") %>" alt="" /> 
                                	<span class="gdlr-core-space-shortcode" id="span_29f0_13"></span> 
                                	<%= footer_footerView.footerSetting.data.get("description") %> 
                                	<span class="gdlr-core-space-shortcode" id="span_29f0_14"></span> 
                                	<% for(Object award : footer_footerView.footerSetting.getAwards()){ %><img src="<%= award %>" alt="" class="custom-award" /> <% } %>
                                </div>
                            </div>
                        </div>
                        <div class="traveltour-footer-column traveltour-item-pdlr traveltour-column-20">
                            <div id="tourmaster-widget-tour-category-6" class="widget widget_tourmaster-widget-tour-category traveltour-widget">
                                <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text">Top Destinations</span></h3><span class="clear"></span>
                                <div class="tourmaster-widget-tour-category">
                                    <div class="tourmaster-tour-category-widget-holder clearfix">
                                    	<% for(Destination des : footer_footerView.hotDestinations){ %>
                                        <div class="tourmaster-tour-category-widget tourmaster-item-list  tourmaster-column-20 tourmaster-with-thumbnail">
                                            <div class="tourmaster-tour-category-thumbnail tourmaster-media-image"><img src="<%= des.getThumbnail600x600() %>" alt="" width="600" height="600" /></div>
                                            <div class="tourmaster-tour-category-overlay"></div>
                                            <div class="tourmaster-tour-category-head">
                                                <div class="tourmaster-tour-category-head-table">
                                                    <h3 class="tourmaster-tour-category-title"><a class="tourmaster-tour-category-head-link" href="<%= request.getAttribute("sitePath") %>/tours?des=<%= des.getId() %>" ><%= des.getName() %></a></h3></div>
                                            </div>
                                        </div>
                                        <% } %>
                                    </div>	
                                </div>
                            </div>
                        </div>
                        <div class="traveltour-footer-column traveltour-item-pdlr traveltour-column-20">
                            <div id="text-2" class="widget widget_text traveltour-widget">
                                <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text">Contact Info</span></h3><span class="clear"></span>
                                <div class="textwidget">
                                    <p>Address : <%= shopCtrl_InfosSetting_footer.data.get("shop_address") %>
                                        <br /> <span class="gdlr-core-space-shortcode" id="span_29f0_15"></span>
                                        <br /> Phone : <%= shopCtrl_InfosSetting_footer.data.get("shop_phone") %>
                                        <br /> <span class="gdlr-core-space-shortcode" id="span_29f0_16"></span>
                                        <br /> Email : <%= shopCtrl_InfosSetting_footer.data.get("shop_email") %></p>
                                    <p><span class="gdlr-core-space-shortcode" id="span_29f0_17"></span>
                                        <br /> 
                                         <% if(!shopCtrl_InfosSetting_footer.data.get("shop_media_fb").equals("")){ %>
						                 <a href="<%= shopCtrl_InfosSetting_footer.data.get("shop_media_fb") %>" class="custom-icon" target="_blank" title="facebook">
						                     <i class="fa fa-facebook" ></i>
						                 </a> &nbsp;&nbsp;
						                 <% } %>
						                 <% if(!shopCtrl_InfosSetting_footer.data.get("shop_media_yt").equals("")){ %>
						                 <a href="<%= shopCtrl_InfosSetting_footer.data.get("shop_media_yt") %>" class="custom-icon" target="_blank" title="youtube">
						                     <i class="fa fa-youtube" ></i>
						                 </a> &nbsp;&nbsp;
						                 <% } %>
						                 <% if(!shopCtrl_InfosSetting_footer.data.get("shop_media_ig").equals("")){ %>
						                 <a href="<%= shopCtrl_InfosSetting_footer.data.get("shop_media_ig") %>" class="custom-icon" target="_blank" title="instagram">
						                     <i class="fa fa-instagram" ></i>
						                 </a> &nbsp;&nbsp;
						                 <% } %>
						                 <% if(!shopCtrl_InfosSetting_footer.data.get("shop_media_tw").equals("")){ %>
						                 <a href="<%= shopCtrl_InfosSetting_footer.data.get("shop_media_tw") %>" class="custom-icon" target="_blank" title="twitter">
						                     <i class="fa fa-twitter" ></i>
						                 </a> &nbsp;&nbsp;
						                 <% } %>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="traveltour-copyright-wrapper">
                    <div class="traveltour-copyright-container traveltour-container">
                        <div class="traveltour-copyright-text traveltour-item-pdlr">Copyright <%= dateConvertion_footer.toStringDate(new Date()) %> <%= shopCtrl_InfosSetting_footer.data.get("shop_name") %>, All Right Reserved</div>
                    </div>
                </div>
            </footer>