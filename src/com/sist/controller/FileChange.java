package com.sist.controller;

import java.util.*;
import java.io.*;
/*
 * 	com.sist.music.model.ListModel
 */
public class FileChange {
	ArrayList<String> list=new ArrayList<String>();
	
	public ArrayList<String> componentScan(ArrayList<String> pList)
	{
		try {	
						// 본인 src경로 적어주세요
			String path="C:\\Users\\user\\git\\ShareJeju_2\\src\\";
						
			for(String pack:pList)
			{
				String s=pack.replace(".", "\\");
				// com.sist ==> com\\sist
				
				s=path+s;
				File dir=new File(s);//해당 경로의 파일들의 경로를 dir에 저장
				File[] files=dir.listFiles();//전체파일 읽어온다
				for(File f:files)
				{	//.java만 가져온다
					String ext=f.getName();
					ext=ext.substring(ext.lastIndexOf(".")+1);//파일의 확장자만 가지고 온다
					
					if(ext.equals("java"))//확장자가 .java인 파일만 가져온다.
					{
						String model=pack+"."+f.getName().substring(0, f.getName().lastIndexOf("."));
						list.add(model);
					}
				}				
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return list;
	}
}
