package com.rx.rmip.corebiz.station.settingapply.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.rx.rmip.corebiz.service.modules.station.common.model.RSBTCodeDic;
import com.rx.rmip.corebiz.service.modules.station.common.service.RSBTCodeDicService;

@Controller
public class MyController {


	//查询下拉框字典的服务
	@Autowired
	RSBTCodeDicService  codeDicService;
	@Autowired
    private RestTemplate template;


	@RequestMapping("/test")
	public String index(Model model) {

/*
		//String url = "http://localhost:8088/portal/r/jd?cmd=CONSOLE_ADMIN_LOGIN&userid=admin&pwd=123456&lang=cn";
		String url = "http://localhost:8088/portal/r/w?sid=0a13b126-ca8b-474c-a941-22342d813457&cmd=CLIENT_BPM_WORKLIST_MAIN&processGroupId=obj_9d8c23cea6f345a88e791041abf46a7a&boxTitle=";
		String response = template.getForObject(url, String.class);


		String filePath = "D:\\link.txt";
		File file =new File(filePath);
		try {
			PrintStream ps= new PrintStream(new FileOutputStream(file));
			ps.print(response);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
*/

		return "home2";
	}


	@RequestMapping("/test2")
	public String index2( Model model) {
		//获取下拉框的数据字典
		List<RSBTCodeDic> orgSysCodeDic = codeDicService.getCodeByDataType("00092006");
		List<RSBTCodeDic> netSvnDic = codeDicService.getCodeByDataType("00452006");

		 //在加载下拉框数据
		model.addAttribute("orgSysCodeDic", orgSysCodeDic);
		model.addAttribute("netSvnDic", netSvnDic);
		return "station/formT";
	}

	@RequestMapping("/test3")
	public String index3( Model model) {

		//获取下拉框的数据字典
			List<RSBTCodeDic> orgSysCodeDic = codeDicService.getCodeByDataType("00092006");
			List<RSBTCodeDic> netSvnDic = codeDicService.getCodeByDataType("00452006");

			 //在加载下拉框数据
			model.addAttribute("orgSysCodeDic",  orgSysCodeDic);
			model.addAttribute("netSvnDic", netSvnDic);
			return "station/set-app";
		}


	@RequestMapping("/jsontest")
	public   String requestJson(HttpServletRequest request, Model model,int price){
		price++;
		model.addAttribute("price", price);
		return  "station/test";
	}

}


