package com.sist.manager;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public class WeatherManager {
	
	public WeatherManager() {
		weatherFindData(); 
	}
	
	public String weatherFindData()	
	{
		String weather = "";
		try {
			Document doc=Jsoup.connect("https://weather.naver.com/rgn/cityWetrCity.nhn?cityRgnCd=CT012005").get(); //html태그 읽어오기
			Element data= doc.selectFirst("div.w_now2 img");
				
			weather= data.attr("src");
			/*System.out.println(weather);*/
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return weather;	
	}
	
	public String temperatureFindData()	
	{
		String temperature = "";
		try {
			Document doc=Jsoup.connect("https://weather.naver.com/rgn/cityWetrCity.nhn?cityRgnCd=CT012005").get(); //html태그 읽어오기
			Element data= doc.selectFirst("div.w_now2 div.fl em");
				
			temperature= data.text();
			System.out.println(temperature);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return temperature;	
	}
	
	
}
