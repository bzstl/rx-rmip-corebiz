/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.rx.rmip.corebiz.service.modules.test.web;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rx.rmip.corebiz.common.web.BaseController;
import com.rx.rmip.corebiz.service.modules.test.entity.Test;

/**
 * 测试Controller
 * 
 * @author ThinkGem
 * @version 2013-10-17
 */
@Controller
@RequestMapping(value = "${adminPath}/test")
public class TestController extends BaseController {

	/**
	 * 删除数据方法
	 * 
	 * @param id
	 * @param redirectAttributes
	 * @return
	 */
	@RequestMapping(value = "delete")
	@ResponseBody
	public String delete(Test test, RedirectAttributes redirectAttributes) {
		// testService.delete(test);
		// addMessage(redirectAttributes, "删除测试成功");
		// return "redirect:" + adminPath + "/test/test/?repage";
		return "true";
	}

	@RequestMapping(value = "/{id:\\d+}", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
	public @ResponseBody Test getTest(@PathVariable("id") int id) {
		System.out.println("ID = " + id);
		Test test = new Test();
		test.setLoginName("user");
		test.setRemarks("这是测试JSON接口");
		test.setIngorevalue("这是要忽略的属性");
		test.setCreateDate(new Date());
		return test;

	}

}
