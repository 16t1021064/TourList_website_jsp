<%@page import="com.van.travel.models.Destination"%>
<%@page import="com.van.travel.web.views.FooterView"%>
<%
	FooterView footer_footerView = new FooterView();
%>
            <footer>
                <div class="traveltour-footer-wrapper  traveltour-with-column-divider">
                    <div class="traveltour-footer-container traveltour-container clearfix">
                        <div class="traveltour-footer-column traveltour-item-pdlr traveltour-column-20">
                            <div id="text-1" class="widget widget_text traveltour-widget">
                                <div class="textwidget"><img src="<%= request.getAttribute("sitePath") %>/public/fe/images/logo.png" alt="" /> <span class="gdlr-core-space-shortcode" id="span_29f0_13"></span> Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. <span class="gdlr-core-space-shortcode" id="span_29f0_14"></span> <img src="<%= request.getAttribute("sitePath") %>/public/fe/upload/award-1.png" alt="" width="140" id="img_29f0_0" /> <img src="<%= request.getAttribute("sitePath") %>/public/fe/upload/award-2.png" alt="" width="65" /></div>
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
                                    <p>Address : 123 Main Street Hue
                                        <br /> <span class="gdlr-core-space-shortcode" id="span_29f0_15"></span>
                                        <br /> Phone : +0123456789
                                        <br /> <span class="gdlr-core-space-shortcode" id="span_29f0_16"></span>
                                        <br /> contact@traveltour.com</p>
                                    <p><span class="gdlr-core-space-shortcode" id="span_29f0_17"></span>
                                        <br /> <a href="#" target="_blank"><i class="fa fa-facebook" id="i_29f0_9"  ></i></a> <a href="#" target="_blank"><i class="fa fa-twitter" id="i_29f0_10"  ></i></a> <a href="#" target="_blank"><i class="fa fa-linkedin" id="i_29f0_11"  ></i></a> <a href="#" target="_blank"><i class="fa fa-pinterest-p" id="i_29f0_12"  ></i></a> <a href="#" target="_blank"><i class="fa fa-vimeo" id="i_29f0_13"  ></i></a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="traveltour-copyright-wrapper">
                    <div class="traveltour-copyright-container traveltour-container">
                        <div class="traveltour-copyright-text traveltour-item-pdlr">Copyright 2020 travel tour, All Right Reserved</div>
                    </div>
                </div>
            </footer>