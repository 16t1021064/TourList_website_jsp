package com.van.travel.web.controllers;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.DateConvertion;
import com.van.travel.common.PaginationData;
import com.van.travel.common.controllers.ShopController;
import com.van.travel.models.Tag;
import com.van.travel.web.factories.BlogTagFactory;
import com.van.travel.web.factories.SearchBlogFactory;

/**
 * Servlet implementation class SearchBlogController
 */
@WebServlet("/blogs")
public class SearchBlogController  extends ShopController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchBlogController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String page_text = request.getParameter("page");
		int page;
		if(page_text == null) {
			page = 1;
		}else {
			page_text = page_text.trim();
			try {
				page = Integer.parseInt(page_text);
			}catch(Exception e) {
				page = 1;
			}
		}
		
		String type = request.getParameter("type");
		if(type == null) {
			
		}else {
			type =type.trim();
			if(type.equals("")) {
				type = null;
			}
		}
		
		String q;
		if(type == null) {
			
			q = request.getParameter("q");
			if(q == null) {
				q = "";
			}else {
				q = q.trim();
				if(q.equals("")) {
					q = null;
				}
			}
			
		}else {
			q = null;
		}
		
		String tag;
		if(type == null) {
			
			tag = request.getParameter("tag");
			if(tag == null) {
				
			}else {
				tag = tag.trim();
				if(tag.equals("")) {
					tag = null;
				}else {
					Tag tagObj  = (new Tag()).findWithText(tag);
					if(tagObj != null) {
						tag = tagObj.getName();
						(new BlogTagFactory()).countWithTag(tagObj.getId());
					}else {
						tag = null;
					}
				}
			}
			
		}else {
			tag = null;
		}
		
		SearchBlogFactory searchBlogFactory = new SearchBlogFactory();
		
		PaginationData dataBlogs = searchBlogFactory.search(page, type, q, tag);
		
		request.setAttribute("dataBlogs", dataBlogs);
		
		request.setAttribute("filters", new Object[] {type, q, tag});
		
		request.getRequestDispatcher("/WEB-INF/Shop/blogs.jsp").forward(request, response);
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
