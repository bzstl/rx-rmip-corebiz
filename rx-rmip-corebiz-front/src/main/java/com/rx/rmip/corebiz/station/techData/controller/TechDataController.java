package com.rx.rmip.corebiz.station.techData.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rx.rmip.corebiz.service.modules.station.common.model.RSBTCodeDic;
import com.rx.rmip.corebiz.service.modules.station.common.service.RSBTCodeDicService;
import com.rx.rmip.corebiz.service.modules.station.techdata.model.RSBTStationVo;
import com.rx.rmip.corebiz.service.modules.station.techdata.service.StationTechDataService;


/**
 * 技术资料表的控制类
 * @author 白章顺
 *
 */

@Controller
@RequestMapping("/techData")
public class TechDataController {

	//提交新设台站申请的服务
	@Autowired
	private StationTechDataService sTDS;

	//查询下拉框字典的服务
	@Autowired
	RSBTCodeDicService  codeDicService;



	/**
	 * 录入国无管表3
	 */
	@RequestMapping("/setFormH")
	public String setFormH(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//获取下拉框的数据字典
		List<RSBTCodeDic> stationTypeDic = codeDicService.getCodeByDataType("00052006");
		List<RSBTCodeDic> ftFreqInfoTypeDic = codeDicService.getCodeByDataType("00182006");
		List<RSBTCodeDic> freqModDic = codeDicService.getCodeByDataType("00272006");
		List<RSBTCodeDic> antTypeDic = codeDicService.getCodeByDataType("00172006");
		List<RSBTCodeDic> antPoleDic = codeDicService.getCodeByDataType("00202006");
		List<RSBTCodeDic> objTypeDic = codeDicService.getCodeByDataType("00002006");
		//在加载下拉框数据
		model.addAttribute("stationTypeDic", stationTypeDic);
		model.addAttribute("ftFreqInfoTypeDic", ftFreqInfoTypeDic);
		model.addAttribute("freqModDic", freqModDic);
		model.addAttribute("antTypeDic", antTypeDic);
		model.addAttribute("antPoleDic", antPoleDic);
		model.addAttribute("objTypeDic", objTypeDic);

		model.addAttribute("stationVo", stationVo);
		return "station/formH";
	}

	/**
	 * 提交国无管表3
	 */
	@RequestMapping("/submitFormH")
	public String submitFormH(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormH(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formH";
	}

	/**
	 * 录入国无管表4
	 *
	 */
	@RequestMapping("/setFormLM")
	public String setFormLM(HttpServletRequest request,Model model){
		//获取下拉框的数据字典
		List<RSBTCodeDic> stationTypeDic = codeDicService.getCodeByDataType("00052006");
		List<RSBTCodeDic> statWorkDic = codeDicService.getCodeByDataType("00062006");
		List<RSBTCodeDic> freqModDic = codeDicService.getCodeByDataType("00272006");
		//在加载下拉框数据
		model.addAttribute("stationTypeDic", stationTypeDic);
		model.addAttribute("statWorkDic", statWorkDic);
		model.addAttribute("freqModDic", freqModDic);
		return "station/formLM";
	}
	/**
	 * 提交国无管表4
	 */
	@RequestMapping("/submitFormLM")
	public String submitFormLM(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormLM(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formLM";
	}
	/**
	 * 录入国无管表5
	 */
	@RequestMapping("/setFormTF")
	public String setFormTF(HttpServletRequest request,Model model){
		//获取下拉框的数据字典
		List<RSBTCodeDic> stationTypeDic = codeDicService.getCodeByDataType("00052006");
		List<RSBTCodeDic> freqModDic = codeDicService.getCodeByDataType("00272006");
		List<RSBTCodeDic>  ftFreqFepDic= codeDicService.getCodeByDataType("00202006");
		List<RSBTCodeDic> antTypeDic = codeDicService.getCodeByDataType("00172006");
		//在加载下拉框数据
		model.addAttribute("stationTypeDic", stationTypeDic);
		model.addAttribute("freqModDic", freqModDic);
		model.addAttribute("ftFreqFepDic", ftFreqFepDic);
		model.addAttribute("antTypeDic", antTypeDic);
		return "station/formTF";
	}

	@RequestMapping("/setFormTF_cd")
	public String setFormTF_cd(HttpServletRequest request,Model model){
		return "station/formTF_cd";
	}

	@RequestMapping("/setFormTF_cd1")
	public String setFormTF_cd1(HttpServletRequest request,Model model){
		//获取下拉框的数据字典
		List<RSBTCodeDic> freqModDic = codeDicService.getCodeByDataType("00272006");
		List<RSBTCodeDic>  ftFreqFepDic= codeDicService.getCodeByDataType("00202006");
		List<RSBTCodeDic> antTypeDic = codeDicService.getCodeByDataType("00172006");
		//在加载下拉框数据
		model.addAttribute("freqModDic", freqModDic);
		model.addAttribute("ftFreqFepDic", ftFreqFepDic);
		model.addAttribute("antTypeDic", antTypeDic);
		return "station/formTF_cd1";
	}
	/**
	 * 提交国无管表5
	 */
	@RequestMapping("/submitFormTF")
	public String submitFormTF(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormTF(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formTF";
	}
	@RequestMapping("/submitFormTF_cd")
	public String submitFormTF_cd(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormTF(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formTF_cd";
	}
	/**
	 * 录入国无管表6
	 */
	@RequestMapping("/setFormE")
	public String setFormE(HttpServletRequest request,Model model){
		//获取下拉框的数据字典
		List<RSBTCodeDic> stationTypeDic = codeDicService.getCodeByDataType("00052006");
		List<RSBTCodeDic> stEMultiAddrDic = codeDicService.getCodeByDataType("00122006");
		List<RSBTCodeDic> ftFreqPowflagDic = codeDicService.getCodeByDataType("00082006");
		List<RSBTCodeDic> ftFreqMcDic = codeDicService.getCodeByDataType("00192006");
		//在加载下拉框数据
		model.addAttribute("stationTypeDic", stationTypeDic);
		model.addAttribute("stEMultiAddrDic", stEMultiAddrDic);
		model.addAttribute("ftFreqPowflagDic", ftFreqPowflagDic);
		model.addAttribute("ftFreqMcDic", ftFreqMcDic);
		return "station/formE";
	}
	/**
	 * 提交国无管表6
	 */
	@RequestMapping("/submitFormE")
	public String submitFormE(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormE(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formE";
	}
	/**
	 * 录入国无管表7
	 */
	@RequestMapping("/setFormB")
	public String setFormB(HttpServletRequest request,Model model){
		//获取下拉框的数据字典
		List<RSBTCodeDic> stBBmDic = codeDicService.getCodeByDataType("00142006");
		List<RSBTCodeDic> freqModDic = codeDicService.getCodeByDataType("00272006");
		//在加载下拉框数据
		model.addAttribute("stBBmDic", stBBmDic);
		model.addAttribute("freqModDic", freqModDic);

		return "station/formB";
	}
	/**
	 * 提交国无管表7
	 */
	@RequestMapping("/submitFormB")
	public String submitFormB(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormB(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formB";
	}
	/**
	 * 录入国无管表8
	 */
	@RequestMapping("/setFormS")
	public String setFormS(HttpServletRequest request,Model model){
		//获取下拉框的数据字典
		List<RSBTCodeDic> stShipTypeDic = codeDicService.getCodeByDataType("00152006");
		List<RSBTCodeDic> etEquEsgnDic = codeDicService.getCodeByDataType("00212006");
		//在加载下拉框数据
		model.addAttribute("stShipTypeDic", stShipTypeDic);
		model.addAttribute("etEquEsgnDic", etEquEsgnDic);
		return "station/formS";
	}
	/**
	 * 提交国无管表8
	 */
	@RequestMapping("/submitFormS")
	public String submitFormS(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormS(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formS";
	}
	/**
	 * 录入国无管表9
	 */
	@RequestMapping("/setFormA")
	public String setFormA(HttpServletRequest request,Model model){
		//获取下拉框的数据字典
		List<RSBTCodeDic> stATypeDic = codeDicService.getCodeByDataType("00162006");
		List<RSBTCodeDic> etEquEsgnDic = codeDicService.getCodeByDataType("00252006");
		List<RSBTCodeDic> etEquAtypeDic = codeDicService.getCodeByDataType("00172006");
		//在加载下拉框数据
		model.addAttribute("stATypeDic", stATypeDic);
		model.addAttribute("etEquEsgnDic", etEquEsgnDic);
		model.addAttribute("etEquAtypeDic", etEquAtypeDic);
		return "station/formA";
	}
	/**
	 * 提交国无管表9
	 */
	@RequestMapping("/submitFormA")
	public String submitFormA(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormA(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formA";
	}
	/**
	 * 录入国无管表10
	 */
	@RequestMapping("/setFormR")
	public String setFormR(HttpServletRequest request,Model model){
		//获取下拉框的数据字典
		List<RSBTCodeDic> stationTypeDic = codeDicService.getCodeByDataType("00052006");
		List<RSBTCodeDic> freqModDic = codeDicService.getCodeByDataType("00272006");
		List<RSBTCodeDic> antTypeDic = codeDicService.getCodeByDataType("00172006");
		List<RSBTCodeDic> antPoleDic = codeDicService.getCodeByDataType("00202006");
		//在加载下拉框数据
		model.addAttribute("stationTypeDic", stationTypeDic);
		model.addAttribute("freqModDic", freqModDic);
		model.addAttribute("antTypeDic", antTypeDic);
		model.addAttribute("antPoleDic", antPoleDic);
		return "station/formR";
	}
	/**
	 * 提交国无管表10
	 */
	@RequestMapping("/submitFormR")
	public String submitFormR(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormR(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formR";
	}
	/**
	 * 录入国无管表11
	 */
	@RequestMapping("/setFormC")
	public String setFormC(HttpServletRequest request,Model model){
		//获取下拉框的数据字典
		List<RSBTCodeDic> antTypeDic = codeDicService.getCodeByDataType("00172006");
		List<RSBTCodeDic> antPoleDic = codeDicService.getCodeByDataType("00202006");
		//在加载下拉框数据
		model.addAttribute("antTypeDic", antTypeDic);
		model.addAttribute("antPoleDic", antPoleDic);
		return "station/formC";
	}
	@RequestMapping(value="/setFormC_cd1", method=RequestMethod.GET)
	public String setFormC_cd1(HttpServletRequest request,Model model){
		return "station/formC_cd1";
	}
	@RequestMapping(value="/setFormC_cd2", method=RequestMethod.GET)
	public String setFormC_cd2(HttpServletRequest request,Model model){
		return "station/formC_cd2";
	}
	/**
	 * 提交国无管表10
	 */
	@RequestMapping("/submitFormC")
	public String submitFormC(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormC(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formC";
	}
	/**
	 * 录入国无管表12
	 */
	@RequestMapping("/setFormD")
	public String setFormD(HttpServletRequest request,Model model){
		//获取下拉框的数据字典
		List<RSBTCodeDic> antTypeDic = codeDicService.getCodeByDataType("00172006");
		List<RSBTCodeDic> antPoleDic = codeDicService.getCodeByDataType("00202006");
		//获取下拉框的数据字典
		model.addAttribute("antTypeDic", antTypeDic);
		model.addAttribute("antPoleDic", antPoleDic);
		return "station/formD";
	}
	/**
	 * 提交国无管表12
	 */
	@RequestMapping("/submitFormD")
	public String submitFormD(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormD(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formD";
	}
	/**
	 * 录入国无管表13
	 */
	@RequestMapping("/setFormV")
	public String setFormV(HttpServletRequest request,Model model){
		//获取下拉框的数据字典
		List<RSBTCodeDic> stationTypeDic = codeDicService.getCodeByDataType("00052006");
		List<RSBTCodeDic> statWorkDic = codeDicService.getCodeByDataType("00062006");
		List<RSBTCodeDic> freqModDic = codeDicService.getCodeByDataType("00272006");
		List<RSBTCodeDic> antTypeDic = codeDicService.getCodeByDataType("00172006");
		List<RSBTCodeDic> antPoleDic = codeDicService.getCodeByDataType("00202006");
		//在加载下拉框数据
		model.addAttribute("stationTypeDic", stationTypeDic);
		model.addAttribute("statWorkDic", statWorkDic);
		model.addAttribute("freqModDic", freqModDic);
		model.addAttribute("antTypeDic", antTypeDic);
		model.addAttribute("antPoleDic", antPoleDic);
		return "station/formV";
	}
	/**
	 * 提交国无管表13
	 */
	@RequestMapping("/submitFormV")
	public String submitFormV(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormV(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formV";
	}
	/**
	 * 录入国无管表14
	 */
	@RequestMapping("/setFormME")
	public String setFormME(HttpServletRequest request,Model model){
		//获取下拉框的数据字典
		List<RSBTCodeDic> stationTypeDic = codeDicService.getCodeByDataType("00052006");
		List<RSBTCodeDic> stEMultiAddrDic = codeDicService.getCodeByDataType("00122006");
		List<RSBTCodeDic> ftFreqPowflagDic = codeDicService.getCodeByDataType("00082006");
		List<RSBTCodeDic> ftFreqMcDic = codeDicService.getCodeByDataType("00192006");
		List<RSBTCodeDic> antTypeDic = codeDicService.getCodeByDataType("00172006");
		List<RSBTCodeDic> antPoleDic = codeDicService.getCodeByDataType("00202006");
		//在加载下拉框数据
		model.addAttribute("stationTypeDic", stationTypeDic);
		model.addAttribute("stEMultiAddrDic", stEMultiAddrDic);
		model.addAttribute("ftFreqPowflagDic", ftFreqPowflagDic);
		model.addAttribute("ftFreqMcDic", ftFreqMcDic);
		model.addAttribute("antTypeDic", antTypeDic);
		model.addAttribute("antPoleDic", antPoleDic);
		return "station/formME";
	}
	/**
	 * 提交国无管表14
	 */
	@RequestMapping("/submitFormME")
	public String submitFormME(HttpServletRequest request,Model model, RSBTStationVo stationVo){
		//新设台站申请业务的表单提交方法
		sTDS.insertFormME(stationVo);
		model.addAttribute("stationVo", stationVo);
		return "station/formME";
	}
	/**
	 * 录入国无管表15
	 */
}
