package bin;

import org.json.JSONObject;

public class Main {

	public static void main(String[] args) {
		JSONObject json = new JSONObject("{\"a\":\"1\",\"b\":{\"c\": 2}}");
		JSONObject json2 = new JSONObject();
		json2.put("a", "5");
		json2.put("b", "6");
		((JSONObject)json.get("b")).put("d", json2);
		System.out.println(json.get("a"));
	}

}
