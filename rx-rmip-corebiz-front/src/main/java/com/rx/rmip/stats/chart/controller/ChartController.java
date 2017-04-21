package com.rx.rmip.stats.chart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/charts")
public class ChartController {
	@RequestMapping("/{charType}")
	public String chart(@PathVariable("charType") String charType) {


		return "charts/"+charType;
	}

}
