package com.van.travel.models.setting;

import org.json.JSONObject;

public class ShopPageBlogsSetting extends AbstractSetting {
	public JSONObject forItem;
	
	public ShopPageBlogsSetting() {
		super("shop_page_blogs");
		this.forItem = (JSONObject) this.data.get("foritem");
	}
	
	@Override
	public void writeData() {
		this.data.put("foritem", this.forItem);
		super.writeData();
	}
	
}
