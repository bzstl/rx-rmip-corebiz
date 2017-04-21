package com.rx.rmip.corebiz.service.utils;

import org.apache.commons.lang3.StringUtils;

/**
 * 通用工具类
 * 
 * @author 牛旭
 * @date 2016年10月25日 上午10:04:42
 */
public class CommonUtils {

	/**
	 * 根据数值获取RGB颜色值
	 * 
	 * @param colorLong
	 * @return
	 */
	public static String getColor(Long colorLong) {
		String s = Long.toHexString(colorLong);
		s = StringUtils.leftPad(s, 6, "0");
		char[] c = new char[6];
		c = s.toCharArray();
		s = String.valueOf(c[4]) + String.valueOf(c[5]) + String.valueOf(c[2]) + String.valueOf(c[3])
				+ String.valueOf(c[0]) + String.valueOf(c[1]);
		return "#" + s.toUpperCase();
	}
}
