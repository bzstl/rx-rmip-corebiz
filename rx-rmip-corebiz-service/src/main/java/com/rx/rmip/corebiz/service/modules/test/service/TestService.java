/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.rx.rmip.corebiz.service.modules.test.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rx.rmip.corebiz.common.service.CrudService;
import com.rx.rmip.corebiz.service.modules.test.dao.TestDao;
import com.rx.rmip.corebiz.service.modules.test.entity.Test;

/**
 * 测试Service
 * 
 * @author ThinkGem
 * @version 2013-10-17
 */
@Service
@Transactional(readOnly = true)
public class TestService extends CrudService<TestDao, Test> {

}
