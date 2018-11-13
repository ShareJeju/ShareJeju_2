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
		   // SAX 颇教扁 积己
		   SAXParser sp=spf.newSAXParser();
		   // SAX 颇教 => file疙阑 傈价 
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
