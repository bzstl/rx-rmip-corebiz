package com.rx.rmip.corebiz.common.listener;

import javax.servlet.ServletContext;

import org.springframework.web.context.WebApplicationContext;

import com.rx.rmip.corebiz.common.config.Global;

public class WebContextListener extends org.springframework.web.context.ContextLoaderListener {

	@Override
	public WebApplicationContext initWebApplicationContext(ServletContext servletContext) {
		if (!printKeyLoadMessage()) {
			return null;
		}
		return super.initWebApplicationContext(servletContext);
	}

	public static boolean printKeyLoadMessage() {
		StringBuilder sb = new StringBuilder();
		sb.append("\r\n======================================================================\r\n");
		sb.append("\r\n    欢迎使用 " + Global.getConfig("productName") + "  - Powered By http://www.rxing.com\r\n");
		sb.append("\r\n======================================================================\r\n");
		System.out.println(sb.toString());
		return true;
	}
}
