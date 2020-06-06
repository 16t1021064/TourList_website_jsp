package com.van.travel.models.setting;

import org.json.JSONObject;

public class ShopBlogSidebarSetting extends AbstractSetting {
	public JSONObject forItem;
	
	public ShopBlogSidebarSetting() {
		super("shop_blog_sidebar");
		this.forItem = (JSONObject) this.data.get("foritem");
	}
	
	@Override
	public void writeData() {
		this.data.put("foritem", this.forItem);
		super.writeData();
	}
}
