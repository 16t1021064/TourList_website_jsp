package com.van.travel.api.common.dto;

import java.util.ArrayList;

/**
 * Data will be returned for pagination mode
 * @author pt_vien
 *
 */
public class PaginationData {
	public int totalItem; // total items
	public int totalPage; // total page
	public int firstPage; // index of first page
	public int lastPage; // index of last page
	public int currentPage; // index of current page
	public int firstIndex; // index of first item in data
	public int lastIndex; // index of last item in data
	public int perPage; // number of items per page
	public ArrayList<Object> data;
	public PaginationData(int totalItem, int totalPage, int firstPage, int lastPage, int currentPage, int firstIndex,
			int lastIndex, int perPage, ArrayList<Object> data) {
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
