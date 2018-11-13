package com.sist.controller;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import java.util.*;

public class XMLParser extends DefaultHandler{
	public ArrayList<String> list=new ArrayList<String>();
	//�Ľ��� �����Ѵ�
	@Override
	public void startElement(String uri, String localName, 
			String qName, Attributes attributes) throws SAXException {
		/*         =====             ==========�� �߿�
		 *  
		 *  qName : �±׸�
		 *  attributes : �Ӽ�
		 */
		try {
			 if(qName.equals("context:component-scan")) //�ش� �±׸��϶��� �д´�.
			 {
				 String pack=attributes.getValue("base-package");
				 list.add(pack);
			 }
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}	
}
