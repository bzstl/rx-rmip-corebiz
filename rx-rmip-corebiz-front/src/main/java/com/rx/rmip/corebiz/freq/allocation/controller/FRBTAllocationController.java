package com.rx.rmip.corebiz.freq.allocation.controller;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FRBTAllocation;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FrmAllocation;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FrmFootnote;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FrmService;
import com.rx.rmip.corebiz.service.modules.freq.allocation.service.FRBTAllocService;
import com.rx.rmip.corebiz.service.utils.Constants;

/**
 * 频率划分Controller
 * 
 * @author 牛旭
 * @date 2016年10月25日 上午10:00:17
 */
@Controller
@RequestMapping("/alloc")
public class FRBTAllocationController {

	@Autowired
	private FRBTAllocService fAllocService;

	/**
	 * 频率划分对比
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/allocCompareAll")
	public String allocCompareAll(HttpServletRequest request, Model model) {

		// 传入频率划分数据
		Map<String, List<FRBTAllocation>> allocMap = fAllocService.getFRBTAllocData();
		List<FRBTAllocation> allocCNData = allocMap.get("CN");
		model.addAttribute("allocCNData", allocCNData);
		List<FRBTAllocation> allocHKData = allocMap.get("HK");
		model.addAttribute("allocHKData", allocHKData);
		List<FRBTAllocation> allocITU3Data = allocMap.get("ITU3");
		model.addAttribute("allocITU3Data", allocITU3Data);
		List<FRBTAllocation> allocMOData = allocMap.get("MO");
		model.addAttribute("allocMOData", allocMOData);

		// 传入锚点数据
		List<BigDecimal> allocArchors = fAllocService.getAllocAnchors(allocMap);
		model.addAttribute("allocArchors", allocArchors);
		return "freq/allocation-table";
	}

	/**
	 * 频率划分图
	 *
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/allocComparePicture")
	public String allocComparePicture(HttpServletRequest request, Model model) {

		// List<FRBTAllocation> allocList = fAllocService.getAllocAll();
		// model.addAttribute("allocList", allocList);
		return "freq/allocation-picture";
	}

	/**
	 * 获取频率划分数据
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/getAllocations")
	public String getAllocations(HttpServletRequest request, Model model) {

		String areaCode = Constants.DEFAULT_ALLOC_AREACODE;
		Map<String, Map<String, List<FrmAllocation>>> allocDatas = fAllocService.getAllocations(areaCode);
		model.addAttribute("allocDatas", allocDatas);

		Map<String, FrmService> frmServices = fAllocService.getFrmServices();
		model.addAttribute("frmServices", frmServices);

		return "freq/allocation";
	}

	@RequestMapping(value = "/getFootnote/{footnoteCode:.+}", method = RequestMethod.GET)
	public ModelAndView getFootnote(HttpServletRequest request, @PathVariable String footnoteCode) {

		Map<String, FrmFootnote> frmFootnotes = fAllocService.getFrmFootnotes();
		FrmFootnote footnote = frmFootnotes.get(footnoteCode);
		ModelAndView mv = new ModelAndView("freq/footnote_info");
		mv.addObject("footnote", footnote);

		return mv;
	}
}
