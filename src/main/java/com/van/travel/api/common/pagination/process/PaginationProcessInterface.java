package com.van.travel.api.common.pagination.process;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import com.van.travel.common.FileConstant;

/**
 * interface for pagiantion
 * @author pt_vien
 *
 */
public interface PaginationProcessInterface {
	
	/**
	 * get range of rows that will be selected in database
	 * @param numPerPage
	 * @param pageNum
	 * @return
	 */
	default int[] getRange(int numPerPage, int pageNum) {
		int[] range = new int[2];
		
		int x = (pageNum - 1) * numPerPage;
		
		range[0] = x;
		range[1] =numPerPage;
		
		return range;
	}
	
//	get default number of items per page from config file
	default int getDefaultPerPage() throws FileNotFoundException, IOException {
		Properties properties = new Properties();
		properties.load((new FileConstant()).getPagination());
		String text = properties.getProperty("per_page");
		return Integer.parseInt(text);
	}
}
