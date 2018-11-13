package com.sist.change;

public class IMGauto {
	private static String[] jsp={
			"images/pic01.jsp",
			"images/pic02.jsp",
			"images/pic03.jsp",
			"images/pic04.jsp"
	};
	
	public static String change(int no)
	{		
		return jsp[no];
	}
}
