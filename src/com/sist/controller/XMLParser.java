package com.sist.controller;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import java.util.*;

public class XMLParser extends DefaultHandler{
	public ArrayList<String> list=new ArrayList<String>();
	//파싱을 시작한다
	@Override
	public void startElement(String uri, String localName, 
			String qName, Attributes attributes) throws SAXException {
		/*         =====             ==========가 중요
		 *  
		 *  qName : 태그명
		 *  attributes : 속성
		 */
		try {
			 if(qName.equals("context:component-scan")) //해당 태그명일때만 읽는다.
			 {
				 String pack=attributes.getValue("base-package");
				 list.add(pack);
			 }
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}	
}
