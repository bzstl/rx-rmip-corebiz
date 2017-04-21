package com.rx.rmip.corebiz.freq.allocation.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FRBTVersion;
import com.rx.rmip.corebiz.service.modules.freq.allocation.service.FRBTVersionService;


@Controller
@RequestMapping("/version")
public class FRBTVersionController {
	
	@Autowired
	private FRBTVersionService versionService;
	
	@RequestMapping("/index")
	public String test(){
		
		
		FRBTVersion version = versionService.find();
		
		System.out.println(version);
		return "freq/test";
	}

	@RequestMapping("/tables")
	public String tables(HttpServletRequest request, Model model) {

		return "tables";
	}

	@RequestMapping("/allocation-table")
	public String allocationTable(HttpServletRequest request, Model model) {

		return "freq/allocation-table";
	}

}
