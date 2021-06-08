package com.yogi.hoxy.utils;

import java.text.DecimalFormat;

public class Utils {
	
	   public static String comma(int price)
	   {
	    int convert = (int) price;
	    DecimalFormat df = new DecimalFormat("#,###");
	   
	    String formatNum=(String)df.format(convert);
	    return formatNum;
	   }
}
