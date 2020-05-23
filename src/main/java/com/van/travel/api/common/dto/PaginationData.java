package com.van.travel.api.common.dto;

import java.util.ArrayList;

/**
 * Data will be returned for pagination mode
 * @author pt_vien
 *
 */
public class PaginationData {
	public long totalItem = 1; // total items
	public long totalPage = 1; // total page
	public long firstPage = 1; // index of first page
	public long lastPage = 1; // index of last page
	public long currentPage = 1; // index of current page
	public long firstIndex = 1; // index of first item in data
	public long lastIndex = 1; // index of last item in data
	public long perPage = 1; // number of items per page
//	public PaginationData(long totalItem, long totalPage, long firstPage, long lastPage, long currentPage, long firstIndex,
//			long lastIndex, long perPage, String data) {
//		super();
//		this.totalItem = totalItem;
//		this.totalPage = totalPage;
//		this.firstPage = firstPage;
//		this.lastPage = lastPage;
//		this.currentPage = currentPage;
//		this.firstIndex = firstIndex;
//		this.lastIndex = lastIndex;
//		this.perPage = perPage;
//		this.data = data;
//	}
	
}
