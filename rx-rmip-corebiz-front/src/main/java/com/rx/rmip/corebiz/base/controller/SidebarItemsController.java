package com.rx.rmip.corebiz.base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rx.rmip.corebiz.service.modules.station.common.model.RSBTCodeDic;
import com.rx.rmip.corebiz.service.modules.station.common.service.RSBTCodeDicService;

/**
 * sidebar左边栏列表的controller
 *
 * @author owner
 *
 */
@Controller
public class SidebarItemsController {
	/**
	 * sidebar中Table/Simple &amp; Dynamic对应的页面
	 *
	 * @return
	 */

		@Autowired
		RSBTCodeDicService  codeDicService;

		@RequestMapping("/sidebaritems")
		public String sidebaritems(String itemsname) {

			return itemsname;
		}




	@RequestMapping("/setApp")
	public String setApp(Model model) {
		//获取下拉框的数据字典
				List<RSBTCodeDic> orgSysCodeDic = codeDicService.getCodeByDataType("00092006");
				List<RSBTCodeDic> netSvnDic = codeDicService.getCodeByDataType("00452006");

				 //在加载下拉框数据
				model.addAttribute("orgSysCodeDic", orgSysCodeDic);
				model.addAttribute("netSvnDic", netSvnDic);
		return "station/setApp";
	}
}
