package com.van.travel.api.shop.blog.getcomment.dto;

import java.util.ArrayList;

public class PaginationDto {
	public long totalItem;
	public long totalPage;
	public long firstPage;
	public long lastPage;
	public long currentPage;
	public long firstIndex;
	public long lastIndex;
	public long perPage;
	public ArrayList<CommentDto> data;
}
