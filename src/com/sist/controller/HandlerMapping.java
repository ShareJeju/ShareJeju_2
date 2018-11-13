package com.sist.controller;
import java.io.File;
import java.util.*;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
public class HandlerMapping {
   ArrayList<String> list=new ArrayList<String>();
   public HandlerMapping(String path)
   {
	   try
	   {
		   SAXParserFactory spf=
				   SAXParserFactory.newInstance();
		   // SAX �Ḻ̌� ����
		   SAXParser sp=spf.newSAXParser();
		   // SAX �Ľ� => file���� ���� 
		   XMLParser x=new XMLParser();
		   sp.parse(new File(path), x);
		   
		   list=x.list;
		   for(String pack:list)
		   {
			   System.out.println(pack);
		   }
			   
	   }catch(Exception ex){}
   }
}
