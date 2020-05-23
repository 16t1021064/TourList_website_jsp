package com.van.travel.api.shop.blog.comment.process;

import java.util.Date;

import com.van.travel.api.common.dto.AbstractRequestData;
import com.van.travel.api.common.dto.CommonResponse;
import com.van.travel.api.common.process.AbstractProcess;
import com.van.travel.api.shop.blog.comment.dto.BlogCommentRequest;
import com.van.travel.api.shop.blog.comment.dto.BlogCommentResponse;
import com.van.travel.models.Blog;
import com.van.travel.models.Comment;

public class BlogCommentProcess extends AbstractProcess {

	@Override
	public CommonResponse process(AbstractRequestData abstractRequestData) {
		BlogCommentRequest request = (BlogCommentRequest) abstractRequestData;
		BlogCommentResponse response = new BlogCommentResponse();
		
		Blog blog = (new Blog()).find(request.blog_id);
		if(blog != null) {
			(new Comment()).create(request.blog_id, request.name, request.email, request.content, new Date());
			response.isSuccess = true;
		}else {
			response.isSuccess = false;
		}
		
		return new CommonResponse(200, "success", new String[] {}, response);
	}
	
}
