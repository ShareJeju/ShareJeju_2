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
						// ���� src��� �����ּ���
			String path="C:\\Users\\user\\git\\ShareJeju_2\\src\\";
						
			for(String pack:pList)
			{
				String s=pack.replace(".", "\\");
				// com.sist ==> com\\sist
				
				s=path+s;
				File dir=new File(s);//�ش� ����� ���ϵ��� ��θ� dir�� ����
				File[] files=dir.listFiles();//��ü���� �о�´�
				for(File f:files)
				{	//.java�� �����´�
					String ext=f.getName();
					ext=ext.substring(ext.lastIndexOf(".")+1);//������ Ȯ���ڸ� ������ �´�
					
					if(ext.equals("java"))//Ȯ���ڰ� .java�� ���ϸ� �����´�.
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
