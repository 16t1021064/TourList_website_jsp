<%@page import="com.van.travel.models.BlogTag"%>
<%@page import="com.van.travel.common.DateConvertion"%>
<%@page import="com.van.travel.models.Blog"%>
<%
	Blog blog = (Blog) request.getAttribute("blog");
	DateConvertion dateConvertion_MMM = new DateConvertion("MMM");
	DateConvertion dateConvertion_dd = new DateConvertion("dd");
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
                                        	<a href="javascript:void(0)" rel="tag"><%= blogTag.getTag().getName() %></a><span class="gdlr-core-sep">,</span> 
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
                                        <h4 id="reply-title" class="comment-reply-title traveltour-content-font">Leave a Reply <small><a rel="nofollow" id="cancel-comment-reply-link" href="index.html#respond" style="display:none;">Cancel Reply</a></small></h4>
                                        <form action="#" method="post" id="commentform" class="comment-form" novalidate>
                                            <div class="comment-form-comment">
                                                <textarea id="comment" name="comment" cols="45" rows="8" aria-required="true" placeholder="Comment*"></textarea>
                                            </div>
                                            <div class="comment-form-head">
                                                <div class="traveltour-comment-form-author">
                                                    <input id="author" name="author" type="text" value="" placeholder="Name*" size="30" aria-required='true' />
                                                </div>
                                                <div class="traveltour-comment-form-email">
                                                    <input id="email" name="email" type="text" value="" placeholder="Email*" size="30" aria-required='true' />
                                                </div>
                                                <input id="url" name="url" type="text" value="" placeholder="Website" size="30" />
                                                <div class="clear"></div>
                                            </div>
                                            <p class="comment-form-cookies-consent">
                                                <input id="wp-comment-cookies-consent" name="wp-comment-cookies-consent" type="checkbox" value="yes" />
                                                <label for="wp-comment-cookies-consent">Save my name, email, and website in this browser for the next time I comment.</label>
                                            </p>
                                            <p class="form-submit">
                                                <input name="submit" type="submit" id="submit" class="submit" value="Post Comment" />
                                            </p>
                                            <p class="antispam-group antispam-group-q" style="clear: both;">
                                                <label>Current ye@r <span class="required">*</span></label>
                                                <input type="hidden" name="antspm-a" class="antispam-control antispam-control-a" value="2018" />
                                                <input type="text" name="antspm-q" class="antispam-control antispam-control-q" value="5.2" autocomplete="off" />
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
                                    <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text">Text Widget</span></h3><span class="clear"></span>
                                    <div class="textwidget">Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Donec sed odio dui. Etiam porta sem malesuada.</div>
                                </div>
                                <div id="recent-comments-6" class="widget widget_recent_comments traveltour-widget">
                                    <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text">Recent Comments</span></h3><span class="clear"></span>
                                    <ul id="recentcomments">
                                        <li class="recentcomments"><span class="comment-author-link">John Smith</span> on <a href="../pack-wisely-before-traveling/index.html#comment-39">Pack wisely before traveling</a></li>
                                        <li class="recentcomments"><span class="comment-author-link">John Smith</span> on <a href="../pack-wisely-before-traveling/index.html#comment-38">Pack wisely before traveling</a></li>
                                        <li class="recentcomments"><span class="comment-author-link">John Smith</span> on <a href="../gallery-post-format/index.html#comment-4">Gallery Post Format</a></li>
                                        <li class="recentcomments"><span class="comment-author-link">John Smith</span> on <a href="../gallery-post-format/index.html#comment-3">Gallery Post Format</a></li>
                                        <li class="recentcomments"><span class="comment-author-link">John Smith</span> on <a href="index.html#comment-6">Standard Post Type</a></li>
                                    </ul>
                                </div>
                                <div id="tag_cloud-4" class="widget widget_tag_cloud traveltour-widget">
                                    <h3 class="traveltour-widget-title"><span class="traveltour-widget-head-text">Tag Cloud</span></h3><span class="clear"></span>
                                    <div class="tagcloud"><a href="../tag/article/index.html" class="tag-cloud-link tag-link-5 tag-link-position-1" style="font-size: 8pt;" aria-label="Article (1 item)">Article</a> <a href="../tag/building/index.html" class="tag-cloud-link tag-link-6 tag-link-position-2" style="font-size: 8pt;" aria-label="Building (1 item)">Building</a> <a href="../tag/constructions/index.html" class="tag-cloud-link tag-link-7 tag-link-position-3" style="font-size: 16.75pt;" aria-label="Constructions (3 items)">Constructions</a> <a href="../tag/industry/index.html" class="tag-cloud-link tag-link-8 tag-link-position-4" style="font-size: 22pt;" aria-label="Industry (5 items)">Industry</a> <a href="../tag/metal/index.html" class="tag-cloud-link tag-link-9 tag-link-position-5" style="font-size: 22pt;" aria-label="Metal (5 items)">Metal</a> <a href="../tag/mining/index.html" class="tag-cloud-link tag-link-10 tag-link-position-6" style="font-size: 16.75pt;" aria-label="Mining (3 items)">Mining</a> <a href="../tag/nature/index.html" class="tag-cloud-link tag-link-11 tag-link-position-7" style="font-size: 19.6666666667pt;" aria-label="Nature (4 items)">Nature</a> <a href="../tag/news/index.html" class="tag-cloud-link tag-link-12 tag-link-position-8" style="font-size: 13.25pt;" aria-label="News (2 items)">News</a> <a href="../tag/oil/index.html" class="tag-cloud-link tag-link-13 tag-link-position-9" style="font-size: 8pt;" aria-label="Oil (1 item)">Oil</a> <a href="../tag/polymer/index.html" class="tag-cloud-link tag-link-14 tag-link-position-10" style="font-size: 22pt;" aria-label="Polymer (5 items)">Polymer</a></div>
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
    
    	
    
    	function getBlogs(page){
    		jQuery.ajax({
   			  url: "<%= request.getAttribute("sitePath") %>/webapi/shop/blog/getcomment",
   			  method: "post",
   				contentType: "application/json",
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

</body>
</html>