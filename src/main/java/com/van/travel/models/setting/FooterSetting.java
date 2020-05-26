package com.van.travel.models.setting;

import java.util.List;

import org.json.JSONArray;

public class FooterSetting extends AbstractSetting {

	public FooterSetting() {
		super("fe_footer");
	}
	
	public List<Object> getAwards() {
		JSONArray arr =(JSONArray) this.data.get("awards");
		return arr.toList();
	}
	
	public void setAwards(String[] awards) {
		JSONArray arr = new JSONArray();
		for (String str : awards) {
			arr.put(str);
		}
		this.data.put("awards", arr);
	}
	
}
