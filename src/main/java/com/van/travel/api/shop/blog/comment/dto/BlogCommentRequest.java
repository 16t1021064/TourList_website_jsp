package com.van.travel.api.shop.blog.comment.dto;

import com.van.travel.api.common.dto.AbstractRequestData;

public class BlogCommentRequest extends AbstractRequestData {
	public String blog_id;
	public String name;
	public String email;
	public String content;
}
