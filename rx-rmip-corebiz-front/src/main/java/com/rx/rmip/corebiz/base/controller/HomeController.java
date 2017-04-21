/**
 *
 */
package com.rx.rmip.corebiz.base.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author owner
 *
 */
@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping("/home.action")
	public String index() {
		return "home";
	}
}
