package com.yewon.im.Util;

public class Util {
	
	public static int division(int x, int y) {
		int result = 0;
		
		result = (int) Math.ceil((double) x/y);
		System.out.println("result : " + result);
		return result;
	}
	
	public static int pages(int listsize) {
		int result = 0;
		
		result = (int) Math.ceil((double) listsize/3);
		System.out.println(result);
		
		return result;
	}

	public static Integer subList(Integer numberth, int listSize) {
		Integer result = 0;
		
		if(numberth == 0) {
			result = 3;
		} else {
			result = numberth * 2;
		}
		
		if(result > listSize) {
			result = listSize;
		}
		
		return result;
	}
}
