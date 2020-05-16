<%@page import="com.van.travel.models.BlogTag"%>
<%@page import="com.van.travel.common.DateConvertion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.van.travel.models.Blog"%>
<%@page import="com.van.travel.common.PaginationData"%>
<%
	PaginationData dataBlogs = (PaginationData) request.getAttribute("dataBlogs");
	ArrayList<Blog> listTours = (ArrayList<Blog>) dataBlogs.data;
	Object[] filters = (Object[]) request.getAttribute("filters");
	DateConvertion dateConvertion = new DateConvertion("dd.MM.yyyy");
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

<body class="tour-template-default single single-tour postid-4643 gdlr-core-body tourmaster-body woocommerce-no-js traveltour-body traveltour-body-front traveltour-full  traveltour-with-sticky-navigation gdlr-core-link-to-lightbox">
    <%@include file="./layout/mobile-header.jsp" %>
    <div class="traveltour-body-outer-wrapper ">
        <div class="traveltour-body-wrapper clearfix  traveltour-with-transparent-header traveltour-with-frame">
            <%@include file="./layout/header.jsp" %>

            <div class="traveltour-page-title-wrap  traveltour-style-custom traveltour-left-align">
                <div class="traveltour-header-transparent-substitute"></div>
                <div class="traveltour-page-title-overlay"></div>
                <div class="traveltour-page-title-container traveltour-container">
                    <div class="traveltour-page-title-content traveltour-item-pdlr">
                        <h1 class="traveltour-page-title">Blog Full Right Sidebar</h1>
                        <div class="traveltour-page-caption">Caption Aligned Here</div>
                    </div>
                </div>
            </div>
            <div class="traveltour-page-wrapper" id="traveltour-page-wrapper">
                <div class="traveltour-content-container traveltour-container">
                    <div class=" traveltour-sidebar-wrap clearfix traveltour-line-height-0 traveltour-sidebar-style-right">
                        <div class=" traveltour-sidebar-center traveltour-column-40 traveltour-line-height">
                            <div class="gdlr-core-page-builder-body">
                                <div class="gdlr-core-pbf-section">
                                    <div class="gdlr-core-pbf-section-container gdlr-core-container clearfix">
                                        <div class="gdlr-core-pbf-element">
                                            <div class="gdlr-core-blog-item gdlr-core-item-pdb clearfix  gdlr-core-style-blog-full" id="div_c50b_0">
                                                <div class="gdlr-core-blog-item-holder gdlr-core-js-2 clearfix" data-layout="fitrows">
                                                    <% for(Blog  blog : listTours){ %>
                                                    <div class="gdlr-core-item-list gdlr-core-blog-full  gdlr-core-item-pdlr gdlr-core-style-left">
                                                        <div class="gdlr-core-blog-thumbnail gdlr-core-media-image  gdlr-core-opacity-on-hover gdlr-core-zoom-on-hover">
                                                            <a href="<%= request.getAttribute("sitePath") %>/blog?slug=<%= blog.getSlug() %>">
                                                            	<img src=<%= blog.getThumbnail() %>" alt="" width="1280" height="580" />
                                                            </a>
                                                        </div>
                                                        <div class="gdlr-core-blog-full-head clearfix">
                                                            <div class="gdlr-core-blog-full-head-right">
                                                                <div class="gdlr-core-blog-info-wrapper gdlr-core-skin-divider">
                                                                	<span class="gdlr-core-blog-info gdlr-core-blog-info-font gdlr-core-skin-caption gdlr-core-blog-info-date">
                                                                		<span class="gdlr-core-head" ><i class="icon_clock_alt" ></i></span>
                                                                		<a href="javascript:void(0)"><%= dateConvertion.toStringDate(blog.getCreatedTime()) %></a>
                                                                	</span>
                                                                	<span class="gdlr-core-blog-info gdlr-core-blog-info-font gdlr-core-skin-caption gdlr-core-blog-info-author">
                                                                		<span class="gdlr-core-head" ><i class="icon_documents_alt" ></i></span>
                                                                		<a href="javascript:void(0)" title="Posts by John Smith" rel="author">John Smith</a>
                                                                	</span>
                                                                	<span class="gdlr-core-blog-info gdlr-core-blog-info-font gdlr-core-skin-caption gdlr-core-blog-info-category">
                                                                		<span class="gdlr-core-head" ><i class="icon_folder-alt" ></i></span>
                                                                		<% for(BlogTag blogTag : blog.getBlogTags()){ %>
                                                                		<a href="javascript:void(0)" rel="tag"><%= blogTag.getTag().getName() %></a><span class="gdlr-core-sep">,</span> 
                                                                		<% } %>
                                                                	</span>
                                                                	<span class="gdlr-core-blog-info gdlr-core-blog-info-font gdlr-core-skin-caption gdlr-core-blog-info-comment-number">
                                                                		<span class="gdlr-core-head" ><i class="icon_comment_alt" ></i></span>
                                                                		<a href="javascript:void(0)"><%= blog.getComments().size() %> </a>
                                                                	</span>
                                                                </div>
                                                                <h3 class="gdlr-core-blog-title gdlr-core-skin-title" id="h3_c50b_1"><a href="<%= request.getAttribute("sitePath") %>/blog?slug=<%= blog.getSlug() %>" ><%= blog.getTitle() %></a></h3>
                                                            </div>
                                                        </div>
                                                        <div class="gdlr-core-blog-content"> <%= blog.getSummary() %>
                                                            <div class="clear"></div><a class="gdlr-core-excerpt-read-more gdlr-core-button gdlr-core-rectangle" href="<%= request.getAttribute("sitePath") %>/blog?slug=<%= blog.getSlug() %>">Read More</a></div>
                                                    </div>
                                                    <% } %>
                                                </div>
                                                <div class="custom-pagination" data-total-page="<%= dataBlogs.totalPage %>" data-current-page="<%= dataBlogs.currentPage %>" 
                                            		data-path-default="<%= request.getAttribute("sitePath") %>/blogs?q=<%= filters[1] == null ? "" : filters[1] %><% if(filters[0] != null){ %>&type=<%= filters[0] %><% } %>"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" traveltour-sidebar-right traveltour-column-20 traveltour-line-height traveltour-line-height">
                            <div class="traveltour-sidebar-area traveltour-item-pdlr">
                                <div id="text-7" class="widget widget_text traveltour-widget">
                                    <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text">Text Widget</span></h3><span class="clear"></span>
                                    <div class="textwidget">Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Donec sed odio dui. Etiam porta sem malesuada.</div>
                                </div>
                                <div id="gdlr-core-recent-portfolio-widget-3" class="widget widget_gdlr-core-recent-portfolio-widget traveltour-widget">
                                    <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text">Recent Works</span></h3><span class="clear"></span>
                                    <div class="gdlr-core-recent-portfolio-widget-wrap clearfix">
                                        <div class="gdlr-core-recent-portfolio-widget gdlr-core-media-image">
                                            <a href="../portfolio/inceptos-bibendum-sem/index.html"><img src="<%= request.getAttribute("sitePath") %>/public/fe/upload/shutterstock_220323652-150x150.jpg" alt="" width="150" height="150" /><span class="gdlr-core-image-overlay "><i class="gdlr-core-image-overlay-icon gdlr-core-size-15 icon_link_alt"  ></i></span></a>
                                        </div>
                                        <div class="gdlr-core-recent-portfolio-widget gdlr-core-media-image">
                                            <a href="../portfolio/porta-justo/index.html"><img src="<%= request.getAttribute("sitePath") %>/public/fe/upload/photo-1443890923422-7819ed4101c0-150x150.jpg" alt="" width="150" height="150" /><span class="gdlr-core-image-overlay "><i class="gdlr-core-image-overlay-icon gdlr-core-size-15 icon_link_alt"  ></i></span></a>
                                        </div>
                                        <div class="gdlr-core-recent-portfolio-widget gdlr-core-media-image">
                                            <a href="../portfolio/fusce-pellentesque-consectetur-bibendum/index.html"><img src="<%= request.getAttribute("sitePath") %>/public/fe/upload/italian-landscape-mountains-nature-150x150.jpg" alt="" width="150" height="150" /><span class="gdlr-core-image-overlay "><i class="gdlr-core-image-overlay-icon gdlr-core-size-15 icon_link_alt"  ></i></span></a>
                                        </div>
                                        <div class="gdlr-core-recent-portfolio-widget gdlr-core-media-image">
                                            <a href="../portfolio/ultricies-fusce-quam/index.html"><img src="<%= request.getAttribute("sitePath") %>/public/fe/upload/shutterstock_245507692-150x150.jpg" alt="" width="150" height="150" /><span class="gdlr-core-image-overlay "><i class="gdlr-core-image-overlay-icon gdlr-core-size-15 icon_link_alt"  ></i></span></a>
                                        </div>
                                        <div class="gdlr-core-recent-portfolio-widget gdlr-core-media-image">
                                            <a href="../portfolio/zermatt-switzerland/index.html"><img src="<%= request.getAttribute("sitePath") %>/public/fe/upload/shutterstock_254090041-150x150.jpg" alt="" width="150" height="150" /><span class="gdlr-core-image-overlay "><i class="gdlr-core-image-overlay-icon gdlr-core-size-15 icon_link_alt"  ></i></span></a>
                                        </div>
                                        <div class="gdlr-core-recent-portfolio-widget gdlr-core-media-image">
                                            <a href="../portfolio/tortor-vehicula-inceptos/index.html"><img src="<%= request.getAttribute("sitePath") %>/public/fe/upload/photo-1441155472722-d17942a2b76a-150x150.jpg" alt="" width="150" height="150" /><span class="gdlr-core-image-overlay "><i class="gdlr-core-image-overlay-icon gdlr-core-size-15 icon_link_alt"  ></i></span></a>
                                        </div>
                                        <div class="gdlr-core-recent-portfolio-widget gdlr-core-media-image">
                                            <a href="../portfolio/aenean-amet-inceptos/index.html"><img src="<%= request.getAttribute("sitePath") %>/public/fe/upload/photo-1441716844725-09cedc13a4e7-150x150.jpg" alt="" width="150" height="150" /><span class="gdlr-core-image-overlay "><i class="gdlr-core-image-overlay-icon gdlr-core-size-15 icon_link_alt"  ></i></span></a>
                                        </div>
                                        <div class="gdlr-core-recent-portfolio-widget gdlr-core-media-image">
                                            <a href="../portfolio/great-paris/index.html"><img src="<%= request.getAttribute("sitePath") %>/public/fe/upload/shutterstock_136984760-150x150.jpg" alt="" width="150" height="150" /><span class="gdlr-core-image-overlay "><i class="gdlr-core-image-overlay-icon gdlr-core-size-15 icon_link_alt"  ></i></span></a>
                                        </div>
                                        <div class="gdlr-core-recent-portfolio-widget gdlr-core-media-image">
                                            <a href="../portfolio/inceptos-vestibulum-ipsum-elit/index.html"><img src="<%= request.getAttribute("sitePath") %>/public/fe/upload/photo-1437651025703-2858c944e3eb-150x150.jpg" alt="" width="150" height="150" /><span class="gdlr-core-image-overlay "><i class="gdlr-core-image-overlay-icon gdlr-core-size-15 icon_link_alt"  ></i></span></a>
                                        </div>
                                    </div>
                                </div>
                                <div id="recent-comments-5" class="widget widget_recent_comments traveltour-widget">
                                    <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text">Recent Comments</span></h3><span class="clear"></span>
                                    <ul id="recentcomments">
                                        <li class="recentcomments"><span class="comment-author-link">John Smith</span> on <a href="../pack-wisely-before-traveling/index.html#comment-39">Pack wisely before traveling</a></li>
                                        <li class="recentcomments"><span class="comment-author-link">John Smith</span> on <a href="../pack-wisely-before-traveling/index.html#comment-38">Pack wisely before traveling</a></li>
                                        <li class="recentcomments"><span class="comment-author-link">John Smith</span> on <a href="../gallery-post-format/index.html#comment-4">Gallery Post Format</a></li>
                                        <li class="recentcomments"><span class="comment-author-link">John Smith</span> on <a href="../gallery-post-format/index.html#comment-3">Gallery Post Format</a></li>
                                        <li class="recentcomments"><span class="comment-author-link">John Smith</span> on <a href="../standard-post-type/index.html#comment-6">Standard Post Type</a></li>
                                    </ul>
                                </div>
                                <div id="tag_cloud-3" class="widget widget_tag_cloud traveltour-widget">
                                    <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text">Tag Cloud</span></h3><span class="clear"></span>
                                    <div class="tagcloud"><a href="../tag/article/index.html" class="tag-cloud-link tag-link-5 tag-link-position-1" id="a_c50b_0" aria-label="Article (1 item)">Article</a> <a href="../tag/building/index.html" class="tag-cloud-link tag-link-6 tag-link-position-2" id="a_c50b_1" aria-label="Building (1 item)">Building</a> <a href="../tag/constructions/index.html" class="tag-cloud-link tag-link-7 tag-link-position-3" id="a_c50b_2" aria-label="Constructions (3 items)">Constructions</a> <a href="../tag/industry/index.html" class="tag-cloud-link tag-link-8 tag-link-position-4" id="a_c50b_3" aria-label="Industry (5 items)">Industry</a> <a href="../tag/metal/index.html" class="tag-cloud-link tag-link-9 tag-link-position-5" id="a_c50b_4" aria-label="Metal (5 items)">Metal</a> <a href="../tag/mining/index.html" class="tag-cloud-link tag-link-10 tag-link-position-6" id="a_c50b_5" aria-label="Mining (3 items)">Mining</a> <a href="../tag/nature/index.html" class="tag-cloud-link tag-link-11 tag-link-position-7" id="a_c50b_6" aria-label="Nature (4 items)">Nature</a> <a href="../tag/news/index.html" class="tag-cloud-link tag-link-12 tag-link-position-8" id="a_c50b_7" aria-label="News (2 items)">News</a> <a href="../tag/oil/index.html" class="tag-cloud-link tag-link-13 tag-link-position-9" id="a_c50b_8" aria-label="Oil (1 item)">Oil</a> <a href="../tag/polymer/index.html" class="tag-cloud-link tag-link-14 tag-link-position-10" id="a_c50b_9" aria-label="Polymer (5 items)">Polymer</a></div>
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