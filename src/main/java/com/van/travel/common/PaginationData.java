package com.van.travel.common;

import java.util.ArrayList;

public class PaginationData {
	public long totalItem; // total items
	public long totalPage; // total page
	public long firstPage; // index of first page
	public long lastPage; // index of last page
	public long currentPage; // index of current page
	public long firstIndex; // index of first item in data
	public long lastIndex; // index of last item in data
	public long perPage; // number of items per page
	public Object data;
	public PaginationData(long totalItem, long totalPage, long firstPage, long lastPage, long currentPage, long firstIndex,
			long lastIndex, long perPage, Object data) {
		super();
		this.totalItem = totalItem;
		this.totalPage = totalPage;
		this.firstPage = firstPage;
		this.lastPage = lastPage;
		this.currentPage = currentPage;
		this.firstIndex = firstIndex;
		this.lastIndex = lastIndex;
		this.perPage = perPage;
		this.data = data;
	}
	
}
