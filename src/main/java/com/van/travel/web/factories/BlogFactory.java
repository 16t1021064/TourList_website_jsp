package com.van.travel.web.factories;

import java.util.ArrayList;

import com.van.travel.models.Blog;

public class BlogFactory {
	public ArrayList<Blog> getHotBlogs(){
		return this.queryHotBlogs();
	}
	public ArrayList<Blog> queryHotBlogs(){
		Blog tempBlog = new Blog();
		tempBlog.setQueryLimit(4);
		return tempBlog.all();
	}
}
