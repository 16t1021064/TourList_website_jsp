package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Month;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;

import com.van.travel.common.Database;
import com.van.travel.common.DateConvertion;

public class Blog extends AbstractModel {
	protected String id;
	private String title;
	private String thumbnail;
	private String slug;
	private String summary;
	private String content;
	private String author;
	private Date createdTime;
	
	private String createdTime_MonthFull;
	private String createdTime_MonthShort;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getSlug() {
		return slug;
	}
	public void setSlug(String slug) {
		this.slug = slug;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
		
		Calendar calendar = Calendar.getInstance();
	    calendar.setTime(createdTime);
	    Month month = Month.of(calendar.get(Calendar.MONTH));
	    Locale locale = new Locale("en", "US");
	    
	    this.setCreatedTime_MonthFull(month.getDisplayName(TextStyle.FULL, locale));
	    this.setCreatedTime_MonthShort(month.getDisplayName(TextStyle.SHORT, locale));
	    
//	    System.out.println(month.getDisplayName(TextStyle.FULL, locale));
//	    System.out.println(month.getDisplayName(TextStyle.NARROW, locale));
//	    System.out.println(month.getDisplayName(TextStyle.SHORT, locale));
	    
	}
	public String getCreatedTime_MonthFull() {
		return createdTime_MonthFull;
	}
	public void setCreatedTime_MonthFull(String createdTime_MonthFull) {
		this.createdTime_MonthFull = createdTime_MonthFull;
	}
	public String getCreatedTime_MonthShort() {
		return createdTime_MonthShort;
	}
	public void setCreatedTime_MonthShort(String createdTime_MonthShort) {
		this.createdTime_MonthShort = createdTime_MonthShort;
	}
	public Blog() {
		super();
		this.tableName = "travel_blog";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		Blog blog = new Blog();
		DateConvertion dateConvertion = new DateConvertion();
		try {
			blog.setId(rs.getString("id"));
			blog.setTitle(rs.getString("title"));
			blog.setThumbnail(rs.getString("thumbnail"));
			blog.setSlug(rs.getString("slug"));
			blog.setSummary(rs.getString("summary"));
			blog.setContent(rs.getString("content"));
			blog.setAuthor(rs.getString("author"));
			blog.setCreatedTime(dateConvertion.toUtilDate(rs.getTimestamp("created_time")));
			return blog;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public Object save(boolean isNew) {
		Connection conn = (new Database()).getConnection();
		DateConvertion dateConvertion = new DateConvertion();
		try {
			String sql;
			if(isNew) {
				sql = " INSERT INTO "+this.tableName+" ";
				sql += "			(id, title, thumbnail, slug, summary, content, author, created_time) ";
				sql += "    VALUES  (?, ?, ?, ?, ?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET title=?, thumbnail=?, slug=?, summary=?, content=?, author=?, created_time=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.title);
				stmt.setString(3, this.thumbnail);
				stmt.setString(4, this.slug);
				stmt.setString(5, this.summary);
				stmt.setString(6, this.content);
				stmt.setString(7, this.author);
				stmt.setTimestamp(8, dateConvertion.toTimestamp(this.createdTime));
			}else {
				stmt.setString(1, this.title);
				stmt.setString(2, this.thumbnail);
				stmt.setString(3, this.slug);
				stmt.setString(4, this.summary);
				stmt.setString(5, this.content);
				stmt.setString(6, this.author);
				stmt.setTimestamp(7, dateConvertion.toTimestamp(this.createdTime));
				stmt.setString(8, this.id);
			}
			
			stmt.executeUpdate();
			return this;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public int delete() {
		for(BlogTag blogTag : this.getBlogTags()) {
			blogTag.delete();
		}
		for(Comment comment : this.getComments()) {
			comment.delete();
		}
		return this.delete(this.id);
	}
	public ArrayList<Blog> toSelfList(ArrayList<Object> oArr){
		ArrayList<Blog> arr = new ArrayList<Blog>();
		for(Object o: oArr) {
			arr.add((Blog) o);
		}
		return arr;
	}
	public Blog find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Blog) o;
		}
	}
	public Blog create(String title, String thumbnail, String slug, String summary, String content, String author, Date createdTime) {
		Blog blog = new Blog();
		blog.setId(UUID.randomUUID().toString());
		blog.setTitle(title);
		blog.setThumbnail(thumbnail);
		blog.setSlug(slug);
		blog.setSummary(summary);
		blog.setContent(content);
		blog.setAuthor(author);
		blog.setCreatedTime(createdTime);
		return (Blog) blog.save(true);
	}
	public Blog update(String title, String thumbnail, String slug, String summary, String content, String author, Date createdTime) {
		this.setTitle(title);
		this.setThumbnail(thumbnail);
		this.setSlug(slug);
		this.setSummary(summary);
		this.setContent(content);
		this.setAuthor(author);
		this.setCreatedTime(createdTime);
		return (Blog) this.save(false);
	}
	public ArrayList<Blog> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Blog> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<Blog> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<Blog> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
	public ArrayList<BlogTag> getBlogTags(){
		return this.getBlogTags(true);
	}
	public ArrayList<BlogTag> getBlogTags(boolean saveResources){
		String key = "blog_blogtag";
		if(saveResources) {
			Object repos =  this.getHasManyRepos(key);
			if(repos != null) {
				return (ArrayList<BlogTag>) repos;
			}
		}
		ArrayList<Object[]> whereConditions = new ArrayList<Object[]>();
		whereConditions.add(new Object[] {"blog_id", "=", this.id, "STRING"});
		ArrayList<BlogTag> blogTags = (new BlogTag()).all(whereConditions);
		this.setHasManyRepos(key, blogTags);
		return blogTags;
	}
	public ArrayList<Comment> getComments(){
		return this.getComments(true);
	}
	public ArrayList<Comment> getComments(boolean saveResources){
		String key = "blog_comment";
		if(saveResources) {
			Object repos =  this.getHasManyRepos(key);
			if(repos != null) {
				return (ArrayList<Comment>) repos;
			}
		}
		ArrayList<Object[]> whereConditions = new ArrayList<Object[]>();
		whereConditions.add(new Object[] {"blog_id", "=", this.id, "STRING"});
		ArrayList<Comment> comments = (new Comment()).all(whereConditions);
		this.setHasManyRepos(key, comments);
		return comments;
	}
	public void setTags(String tags) {
		if(tags == null) {
			return;
		}
		
		for(BlogTag blogTag : this.getBlogTags()) {
			blogTag.delete();
		}
		
		tags = tags.trim();
		String[] arrTags = tags.split("[,]");
		for(String tagText : arrTags) {
			tagText = tagText.trim();
			if(tagText.equals("")) {
				continue;
			}
			Tag tag;
			tag = (new Tag()).findWithText(tagText);
			if(tag == null) {
				tag = (new Tag()).create(tagText, 0);
			}
			(new BlogTag()).create(this.id, tag.getId());
		}
	}
	
	public Blog findWithSlug(String slug) {
		this.setQueryLimit(1);
		ArrayList<Object[]> whereConditions = new ArrayList<Object[]>();
		whereConditions.add(new Object[] {"slug", "=", slug, "STRING"});
		ArrayList<Blog> arr = this.all(whereConditions);
		if(arr.size() == 0) {
			return null;
		}else {
			return arr.get(0);
		}
	}
	
}
