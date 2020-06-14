<%@page import="com.van.travel.models.setting.ShopBlogSidebarSetting"%>
<%@page import="com.van.travel.models.Tag"%>
<%@page import="com.van.travel.models.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.van.travel.models.BlogTag"%>
<%@page import="com.van.travel.common.DateConvertion"%>
<%@page import="com.van.travel.models.Blog"%>
<%
	Blog blog = (Blog) request.getAttribute("blog");
	ArrayList<Comment> newestComments = (ArrayList<Comment>) request.getAttribute("newestComments");
	ArrayList<Tag> hotTags = (ArrayList<Tag>) request.getAttribute("hotTags");
	DateConvertion dateConvertion_MMM = new DateConvertion("MMM");
	DateConvertion dateConvertion_dd = new DateConvertion("dd");
	ShopBlogSidebarSetting shopBlogSidebarSetting =  (ShopBlogSidebarSetting) request.getAttribute("shopBlogSidebarSetting");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en-US">

<head>
    <%@include file="./layout/meta.jsp" %>
    <title>Blog: <%= blog.getTitle() %></title>

    <%@include file="./layout/styles.jsp" %>
	<style>
		.comment-nav{
			display: none;
		}
	</style>
</head>

<body class="tour-template-default single single-tour postid-4643 gdlr-core-body tourmaster-body woocommerce-no-js traveltour-body traveltour-body-front traveltour-full  traveltour-with-sticky-navigation gdlr-core-link-to-lightbox">
    <%@include file="./layout/mobile-header.jsp" %>
    <div class="traveltour-body-outer-wrapper ">
        <div class="traveltour-body-wrapper clearfix  traveltour-with-transparent-header traveltour-with-frame">
            <%@include file="./layout/header.jsp" %>

            <div class="traveltour-page-wrapper" id="traveltour-page-wrapper">
                <div class="traveltour-blog-title-wrap  traveltour-style-custom traveltour-feature-image" style="background-image: url(<%= blog.getThumbnail() %>) ;">
                    <div class="traveltour-header-transparent-substitute"></div>
                    <div class="traveltour-blog-title-top-overlay"></div>
                    <div class="traveltour-blog-title-overlay"></div>
                    <div class="traveltour-blog-title-bottom-overlay"></div>
                    <div class="traveltour-blog-title-container traveltour-container">
                        <div class="traveltour-blog-title-content traveltour-item-pdlr" style="padding-top: 400px ;padding-bottom: 80px ;">
                            <header class="traveltour-single-article-head clearfix">
                                <div class="traveltour-single-article-date-wrapper"><span class="traveltour-single-article-date-day"><%= dateConvertion_dd.toStringDate(blog.getCreatedTime()) %></span><span class="traveltour-single-article-date-month"><%= dateConvertion_MMM.toStringDate(blog.getCreatedTime()) %></span></div>
                                <div class="traveltour-single-article-head-right">
                                    <div class="traveltour-blog-info-wrapper">
                                        <div class="traveltour-blog-info traveltour-blog-info-font traveltour-blog-info-author"><span class="traveltour-head"><i class="icon_documents_alt" ></i></span><a href="javascript:void(0)" title="Posts by John Smith" rel="author"><%= blog.getAuthor() %></a></div>
                                        <div class="traveltour-blog-info traveltour-blog-info-font traveltour-blog-info-category">
                                        	<span class="traveltour-head"><i class="icon_folder-alt" ></i></span>
                                        	<% for(BlogTag blogTag : blog.getBlogTags()){ %>
                                        	<a href="<%= request.getAttribute("sitePath") %>/blogs?tag=<%= blogTag.getTag().getName() %>" rel="tag"><%= blogTag.getTag().getName() %></a><span class="gdlr-core-sep">,</span> 
                                        	<% } %>
                                        </div>
                                        <div class="traveltour-blog-info traveltour-blog-info-font traveltour-blog-info-comment-number"><span class="traveltour-head"><i class="icon_comment_alt" ></i></span><%= blog.getComments().size() %></div>
                                    </div>
                                    <h1 class="traveltour-single-article-title"><%= blog.getTitle() %></h1></div>
                            </header>
                        </div>
                    </div>
                </div>
                <div class="traveltour-content-container traveltour-container">
                    <div class=" traveltour-sidebar-wrap clearfix traveltour-line-height-0 traveltour-sidebar-style-right">
                        <div class=" traveltour-sidebar-center traveltour-column-40 traveltour-line-height">
                            <div class="traveltour-content-wrap traveltour-item-pdlr clearfix">
                                <div class="traveltour-content-area">
                                    <article id="post-1268" class="post-1268 post type-post status-publish format-standard has-post-thumbnail hentry category-blog category-post-format category-uncategorized tag-news">
                                        <div class="traveltour-single-article">
                                            <div class="traveltour-single-article-content">
                                            	<%= blog.getContent() %>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                                <div class="traveltour-page-builder-wrap traveltour-item-rvpdlr">
                                    <div class="gdlr-core-page-builder-body"></div>
                                </div>
                                

                                <div class="clear"></div>
                                <div class="traveltour-single-author">
                                    <div class="traveltour-single-author-wrap">
                                        <div class="traveltour-single-author-avartar traveltour-media-image"><img alt='' src='https://secure.gravatar.com/avatar/c4ffc7a48d6a02dac31975c893fa7ddb?s=90&amp;d=mm&amp;r=g'  height='90' width='90' /></div>
                                        <div class="traveltour-single-author-content-wrap">
                                            <div class="traveltour-single-author-caption traveltour-info-font">The author</div>
                                            <h4 class="traveltour-single-author-title"><a href="javascript:void(0)" title="Posts by John Smith" rel="author"><%= blog.getAuthor() %></a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="traveltour-single-nav-area clearfix">
                                	<span class="traveltour-single-nav traveltour-single-nav-left">
                                		<a href="javascript:void(0);" class="comment-nav" data-page="" rel="prev"><i class="arrow_left" ></i><span class="traveltour-text" >Prev</span></a>
                                    </span>
                                    <span class="traveltour-single-nav traveltour-single-nav-right">
                                    	<a href="javascript:void(0);" class="comment-nav" data-page="" rel="next"><span class="traveltour-text" >Next</span><i class="arrow_right"></i></a>
                                    </span>
                                </div>
                                <div id="comments" class="traveltour-comments-area">
                                    <div class="traveltour-comments-title"><%= blog.getComments().size() %> Comments</div>
                                    <ol class="comment-list" id="commentList">
                                        
                                    </ol>
                                    <div id="respond" class="comment-respond">
                                        <h4 id="reply-title" class="comment-reply-title traveltour-content-font">Leave a Comment <small><a rel="nofollow" id="cancel-comment-reply-link" href="index.html#respond" style="display:none;">Cancel Reply</a></small></h4>
                                        <form action="javascript:void(0);" method="post" id="commentform" class="comment-form" novalidate>
                                            <div class="comment-form-comment">
                                                <textarea id="comment" name="content" cols="45" rows="8" aria-required="true" placeholder="Comment*"></textarea>
                                            </div>
                                            <div class="comment-form-head">
                                                <div class="traveltour-comment-form-author">
                                                    <input id="author" name="name" type="text" value="" placeholder="Name*" size="30" aria-required='true' />
                                                </div>
                                                <div class="traveltour-comment-form-email">
                                                    <input id="email" name="email" type="text" value="" placeholder="Email*" size="30" aria-required='true' />
                                                </div>
                                            </div>
                                            <p class="form-submit">
                                                <input name="submit" type="submit" id="submit" class="submit" value="Post Comment" />
                                            </p>
                                            <p class="antispam-group antispam-group-e" style="display: none;">
                                                <label>Leave this field empty</label>
                                                <input type="text" name="antspm-e-email-url-website" class="antispam-control antispam-control-e" value="" autocomplete="off" />
                                            </p>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class=" traveltour-sidebar-right traveltour-column-20 traveltour-line-height traveltour-line-height">
                            <div class="traveltour-sidebar-area traveltour-item-pdlr">
                                <div id="text-9" class="widget widget_text traveltour-widget">
                                    <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text"><%= shopBlogSidebarSetting.forItem.get("intro_h1") %></span></h3><span class="clear"></span>
                                    <div class="textwidget"><%= shopBlogSidebarSetting.forItem.get("intro_description") %></div>
                                </div>
                                <div id="recent-comments-6" class="widget widget_recent_comments traveltour-widget">
                                    <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text"><%= shopBlogSidebarSetting.forItem.get("comment_h1") %></span></h3><span class="clear"></span>
                                    <ul id="recentcomments">
                                    	<% for(Comment cmt : newestComments){ %>
                                        <li class="recentcomments"><span class="comment-author-link"><%= cmt.getName() %></span> <%= shopBlogSidebarSetting.forItem.get("comment_concat") %> <a href="<%= request.getAttribute("sitePath") %>/blog?id=<%= cmt.getBlogId() %>"><%= cmt.getContent() %></a></li>
                                    	<% } %>
                                    </ul>
                                </div>
                                <div id="tag_cloud-4" class="widget widget_tag_cloud traveltour-widget">
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
    
    	
    
    	function getBlogs(page){
    		jQuery.ajax({
   			  url: "<%= request.getAttribute("sitePath") %>/webapi/shop/blog/getcomment",
   			  method: "post",
   				contentType: "application/json; charset=utf-8",
   				dataType: "json",
   			  data: JSON.stringify({
   				  blog_slug: "<%= blog.getSlug() %>",
   				  page: page,
   			  }),
   			}).success(function(data){
   				
   				if(data.pagination.firstPage < data.pagination.currentPage){
   					jQuery('.comment-nav[rel="prev"]').css("display", "inline-block");
   					jQuery('.comment-nav[rel="prev"]').attr("data-page", data.pagination.currentPage - 1);
   				}else{
   					jQuery('.comment-nav[rel="prev"]').css("display", "none");
   					jQuery('.comment-nav[rel="prev"]').attr("data-page", "");
   				}
   				
   				if(data.pagination.lastPage > data.pagination.currentPage){
   					jQuery('.comment-nav[rel="next"]').css("display", "inline-block");
   					jQuery('.comment-nav[rel="next"]').attr("data-page", data.pagination.currentPage + 1);
   				}else{
   					jQuery('.comment-nav[rel="next"]').css("display", "none");
   					jQuery('.comment-nav[rel="next"]').attr("data-page", "");
   				}
   				
   				var template = '';
   				data.pagination.data.forEach((element, position, array) => {
   					
   					template+='<li class="comment byuser comment-author-superuser bypostauthor even thread-even depth-1">';
   					template+='    <article id="comment-5" class="comment-article">';
   					template+='        <div class="comment-avatar"><img alt="" src="<%= request.getAttribute("sitePath") %>/public/fe/upload/c4ffc7a48d6a02dac31975c893fa7ddb.jpeg" class="avatar avatar-90 photo" height="90" width="90" /></div>';
   					template+='        <div class="comment-body">';
   					template+='            <header class="comment-meta">';
   					template+='                <div class="comment-author traveltour-title-font">'+element.name+'</div>';
   					template+='                <div class="comment-time traveltour-info-font">';
   					template+='                    <a href="index.html#comment-5">';
   					template+='                        <time datetime="'+element.created_time+'"> '+element.created_time+' </time>';
   					template+='                    </a>';
   					template+='                </div>';
   					template+='            </header>';
   					template+='            <section class="comment-content">';
   					template+='                <p>'+element.content+'</p>';
   					template+='            </section>';
   					template+='        </div>';
   					template+='    </article>';
   					template+='</li>';
   					
   					
   				});
   				
   				jQuery('#commentList').html(template);
   				
   			}).error(function(){
   				console.error("error");
   			}).done(function() {
   			  
   			});
    	}
    	
    	jQuery('.comment-nav').click(function(){
    		var dataPage = jQuery(this).attr("data-page");
    		getBlogs(parseInt(dataPage));
    	});
    	
    	getBlogs(1);
    	
    </script>
    
    <script>
	    jQuery('#commentform').submit(function(){
			var validator = jQuery('#commentform').validate({
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
		            content: {
		                required: true,
		                normalizer: function(value) {
							return jQuery.trim(value);
						},
		            },
		        }
		    });
			if(validator.form()){
				jQuery.ajax({
				  url: "<%= request.getAttribute("sitePath") %>/webapi/shop/blog/comment",
				  method: "post",
					contentType: "application/json",
					dataType: "json",
				  data: JSON.stringify({
					  blog_id: "<%= blog.getId() %>",
					  name: jQuery('#commentform [name="name"]').val(),
					  email: jQuery('#commentform [name="email"]').val(),
					  content: jQuery('#commentform [name="content"]').val(),
				  }),
				}).success(function(data){
					swal("Submit successful !", "Your comment has been commited.", "success");
				  	jQuery('#commentform [name="name"]').val("");
				  	jQuery('#commentform [name="email"]').val("");
				  	jQuery('#commentform [name="content"]').val("");
				}).error(function(){
					console.error("error");
				}).done(function() {
				  
				});
			}else{
				swal("Error validation !", "Please all fields in comment form !", "error");
			}
			return false;
		});
    
    </script>
	<script>
		jQuery('#menu-main-navigation-1 li.menu-item[data-name="blogs"]').addClass("current-menu-item");
	</script>
</body>
</html>