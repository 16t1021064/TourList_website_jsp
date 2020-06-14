package com.van.travel.models.setting;

import org.json.JSONObject;

public class ShopPageDestinationsSetting extends AbstractSetting {
	public JSONObject forItem;
	
	public ShopPageDestinationsSetting() {
		super("shop_page_destinations");
		this.forItem = (JSONObject) this.data.get("foritem");
	}
	
	@Override
	public void writeData() {
		this.data.put("foritem", this.forItem);
		super.writeData();
	}
}
