package com.van.travel.api.shop.blog.getcomment.process;

import java.util.ArrayList;

import com.van.travel.api.common.dto.AbstractRequestData;
import com.van.travel.api.common.dto.CommonResponse;
import com.van.travel.api.common.process.AbstractProcess;
import com.van.travel.api.shop.blog.getcomment.dto.BlogGetcommentRequest;
import com.van.travel.api.shop.blog.getcomment.dto.BlogGetcommentResponse;
import com.van.travel.api.shop.blog.getcomment.dto.CommentDto;
import com.van.travel.api.shop.blog.getcomment.dto.PaginationDto;
import com.van.travel.common.DateConvertion;
import com.van.travel.common.PaginationData;
import com.van.travel.models.Comment;
import com.van.travel.web.factories.CommentFactory;

public class BlogGetcommentProcess extends AbstractProcess {

	@Override
	public CommonResponse process(AbstractRequestData abstractRequestData) {
		BlogGetcommentRequest request = (BlogGetcommentRequest) abstractRequestData;
		BlogGetcommentResponse response = new BlogGetcommentResponse();
		
		CommentFactory commentFactory = new CommentFactory();
		PaginationData paginationData = commentFactory.search(request.blog_slug, request.page, null);
		PaginationDto paginationDto = this.toPaginationDto(paginationData);
		
		ArrayList<Comment> arrComment = (ArrayList<Comment>) paginationData.data;
		ArrayList<CommentDto> arrCommentDto = new ArrayList<CommentDto>();
		for(Comment cmt : arrComment) {
			arrCommentDto.add(this.toCommentDto(cmt));
		}
		
		paginationDto.data = arrCommentDto;
		
		response.pagination = paginationDto;
		
		return new CommonResponse(200, "success", new String[] {}, response);
	}
	
	private CommentDto toCommentDto(Comment cmt) {
		DateConvertion dateConvertion = new DateConvertion("HH:mm dd.MM.yyyy");
		CommentDto commentDto = new CommentDto();
		commentDto.id = cmt.getId();
		commentDto.name = cmt.getName();
		commentDto.content = cmt.getContent();
		commentDto.created_time = dateConvertion.toStringDate(cmt.getCreatedTime());
		return commentDto;
	}
	
	private PaginationDto toPaginationDto(PaginationData paginationData) {
		PaginationDto paginationDto = new PaginationDto();
		paginationDto.currentPage = paginationData.currentPage;
		paginationDto.totalItem = paginationData.totalItem;
		paginationDto.totalPage = paginationData.totalPage;
		paginationDto.firstPage = paginationData.firstPage;
		paginationDto.lastPage = paginationData.lastPage;
		paginationDto.firstIndex = paginationData.firstIndex;
		paginationDto.lastIndex = paginationData.lastIndex;
		paginationDto.perPage = paginationData.perPage;
		return paginationDto;
	}
	
}
