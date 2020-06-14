<%@page import="com.van.travel.models.setting.ShopPageBlogsSetting"%>
<%@page import="com.van.travel.models.setting.ShopBlogSidebarSetting"%>
<%@page import="com.van.travel.models.Tag"%>
<%@page import="com.van.travel.models.Comment"%>
<%@page import="com.van.travel.models.BlogTag"%>
<%@page import="com.van.travel.common.DateConvertion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.van.travel.models.Blog"%>
<%@page import="com.van.travel.common.PaginationData"%>
<%
	PaginationData dataBlogs = (PaginationData) request.getAttribute("dataBlogs");
	ArrayList<Comment> newestComments = (ArrayList<Comment>) request.getAttribute("newestComments");
	ArrayList<Tag> hotTags = (ArrayList<Tag>) request.getAttribute("hotTags");
	ArrayList<Blog> listTours = (ArrayList<Blog>) dataBlogs.data;
	ArrayList<Blog> recentViewBlogs = (ArrayList<Blog>) request.getAttribute("recentViewBlogs");
	Object[] filters = (Object[]) request.getAttribute("filters");
	DateConvertion dateConvertion = new DateConvertion("dd.MM.yyyy");
	ShopBlogSidebarSetting shopBlogSidebarSetting =  (ShopBlogSidebarSetting) request.getAttribute("shopBlogSidebarSetting");
	ShopPageBlogsSetting shopPageBlogsSetting =  (ShopPageBlogsSetting) request.getAttribute("shopPageBlogsSetting");
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

            <div class="traveltour-page-title-wrap  traveltour-style-custom traveltour-left-align" style="background-image: url(<%= shopPageBlogsSetting.data.get("head_bg") %>)">
                <div class="traveltour-header-transparent-substitute"></div>
                <div class="traveltour-page-title-overlay"></div>
                <div class="traveltour-page-title-container traveltour-container">
                    <div class="traveltour-page-title-content traveltour-item-pdlr">
                        <h1 class="traveltour-page-title"><%= shopPageBlogsSetting.forItem.get("head_h1") %></h1>
                        <div class="traveltour-page-caption"><%= shopPageBlogsSetting.forItem.get("head_h2") %></div>
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
                                            		data-path-default="<%= request.getAttribute("sitePath") %>/blogs?q=<%= filters[1] == null ? "" : filters[1] %><% if(filters[0] != null){ %>&type=<%= filters[0] %><% } %><% if(filters[2] != null){ %>&tag=<%= filters[2] %><% } %>"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" traveltour-sidebar-right traveltour-column-20 traveltour-line-height traveltour-line-height">
                            <div class="traveltour-sidebar-area traveltour-item-pdlr">
                                <div id="text-7" class="widget widget_text traveltour-widget">
                                    <h3 class="traveltour-widget-title">
                                    	<span class="traveltour-widget-head-text"><%= shopBlogSidebarSetting.forItem.get("intro_h1") %></span>
                                    </h3>
                                    <span class="clear"></span>
                                    <div class="textwidget">
                                    	<%= shopBlogSidebarSetting.forItem.get("intro_description") %>
                                    </div>
                                </div>
                                <div id="gdlr-core-recent-portfolio-widget-3" class="widget widget_gdlr-core-recent-portfolio-widget traveltour-widget">
                                    <h3 class="traveltour-widget-title">
                                    	<span class="traveltour-widget-head-text"><%= shopBlogSidebarSetting.forItem.get("blog_h1") %></span>
                                    </h3>
                                    <span class="clear"></span>
                                    <div class="gdlr-core-recent-portfolio-widget-wrap clearfix">
                                        <% for(Blog blog : recentViewBlogs){ %>
                                        <div class="gdlr-core-recent-portfolio-widget gdlr-core-media-image">
                                            <a href="<%= request.getAttribute("sitePath") %>/blog?slug=<%= blog.getSlug() %>"><img src="<%= blog.getThumbnail150x150() %>" alt="" width="150" height="150" /><span class="gdlr-core-image-overlay "><i class="gdlr-core-image-overlay-icon gdlr-core-size-15 icon_link_alt"  ></i></span></a>
                                        </div>
                                        <% } %>
                                    </div>
                                </div>
                                <div id="recent-comments-5" class="widget widget_recent_comments traveltour-widget">
                                    <h3 class="traveltour-widget-title">
                                    	<span class="traveltour-widget-head-text"><%= shopBlogSidebarSetting.forItem.get("comment_h1") %></span>
                                    </h3>
                                    <span class="clear"></span>
                                    <ul id="recentcomments">
                                     	<% for(Comment cmt : newestComments){ %>
                                        <li class="recentcomments"><span class="comment-author-link"><%= cmt.getName() %></span> <%= shopBlogSidebarSetting.forItem.get("comment_concat") %> <a href="<%= request.getAttribute("sitePath") %>/blog?id=<%= cmt.getBlogId() %>"><%= cmt.getContent() %></a></li>
                                    	<% } %>   
                                    </ul>
                                </div>
                                <div id="tag_cloud-3" class="widget widget_tag_cloud traveltour-widget">
                                    <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text"><%= shopBlogSidebarSetting.forItem.get("tag_h1") %></span></h3><span class="clear"></span>
									<div class="tagcloud">
                                    	<% for(Tag tag : hotTags){ %>
                                    	<a href="<%= request.getAttribute("sitePath") %>/blogs?tag=<%= tag.getName() %>" class="tag-cloud-link tag-link-5 tag-link-position-1" style="font-size: 8pt;" aria-label=""><%= tag.getName() %></a> 
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
	<script>
		jQuery('#menu-main-navigation-1 li.menu-item[data-name="blogs"]').addClass("current-menu-item");
	</script>

</body>
</html>