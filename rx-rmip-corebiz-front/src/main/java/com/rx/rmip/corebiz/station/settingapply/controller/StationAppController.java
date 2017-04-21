package com.rx.rmip.corebiz.station.settingapply.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rx.rmip.corebiz.service.modules.station.common.model.RSBTCodeDic;
import com.rx.rmip.corebiz.service.modules.station.common.service.RSBTCodeDicService;
import com.rx.rmip.corebiz.service.modules.station.settingapply.model.RSBTApplyVo;
import com.rx.rmip.corebiz.service.modules.station.settingapply.service.StationSetAppService;


/**
 * 台站申请的控制类
 * @author 白章顺
 *
 */
@Controller
@RequestMapping("/station")
public class StationAppController {
	//提交新设台站申请的服务
	@Autowired
	private StationSetAppService stationSetAppService;
	//查询下拉框字典的服务
	@Autowired
	RSBTCodeDicService  codeDicService;
	/**
	 * 台站申请
	 */
	@RequestMapping("/setFormT")
	public String setFormT (HttpServletRequest request,Model model){

		//获取下拉框的数据字典
		List<RSBTCodeDic> orgSysCodeDic = codeDicService.getCodeByDataType("00092006");
		List<RSBTCodeDic> netSvnDic = codeDicService.getCodeByDataType("00452006");

		 //在加载下拉框数据
		model.addAttribute("orgSysCodeDic", orgSysCodeDic);
		model.addAttribute("netSvnDic", netSvnDic);
		return "station/formT";
	}

	@RequestMapping("/setFormF")
	public String setFormF (HttpServletRequest request,Model model){

		//获取下拉框的数据字典
		List<RSBTCodeDic> orgSysCodeDic = codeDicService.getCodeByDataType("00092006");
		List<RSBTCodeDic> netSvnDic = codeDicService.getCodeByDataType("00452006");

		 //在加载下拉框数据
		model.addAttribute("orgSysCodeDic", orgSysCodeDic);
		model.addAttribute("netSvnDic", netSvnDic);
		return "station/formF";
	}

	/**
	 * 新设台站申请提交
	 */
	@RequestMapping(value="/submitFormT",method=RequestMethod.POST)
	public ModelAndView submitFormT(HttpServletRequest request,Model model,RSBTApplyVo applyVo){
		stationSetAppService.insertFormT(applyVo);
/*		章哥写的参考代码
 		Map<String, Object> models = new HashMap<>();
		models.put("applyVo", applyVo);

		ModelAndView mv = new ModelAndView("station/submit", models);*/
		ModelAndView mv = new ModelAndView("station/submit");
		mv.addObject("applyVo", applyVo);
		return mv;
	}
}
