package com.core;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FRBTAllocation;
import com.rx.rmip.corebiz.service.modules.freq.allocation.service.FRBTAllocService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath*:/spring-context.xml","classpath*:/spring-mvc.xml"})
public class BaseJunitTest {

	@Autowired
	private FRBTAllocService frbtAllocServ;

	@Test
	public void test(){
		Map<String, List<FRBTAllocation>> allocationsMap = frbtAllocServ.getFRBTAllocData();
		List<BigDecimal> anchors = frbtAllocServ.getAllocAnchors(allocationsMap);
		List<FRBTAllocation> allocations = allocationsMap.get("CN");
		for (FRBTAllocation allocation : allocations) {
			System.out.print(allocation.getBandB() + " ");
		}
		System.out.println();
		for (BigDecimal anchor : anchors) {
			System.out.print(anchor + " ");
		}
		int i = 0;
		for (BigDecimal anchor : anchors) {
			if (allocations.get(i).getBandB().compareTo(anchor) == 0) {
				System.out.println(anchor);
				i++;
			}
		}
		System.out.println(anchors.size());
		System.out.println(allocationsMap.size());
	}
}
