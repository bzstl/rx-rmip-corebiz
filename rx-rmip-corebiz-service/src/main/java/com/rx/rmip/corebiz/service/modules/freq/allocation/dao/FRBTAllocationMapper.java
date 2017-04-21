package com.rx.rmip.corebiz.service.modules.freq.allocation.dao;

import java.util.List;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FRBTAllocation;


@MyBatisDao
public interface FRBTAllocationMapper {
    int deleteByPrimaryKey(String guid);

    int insert(FRBTAllocation record);

    int insertSelective(FRBTAllocation record);

    FRBTAllocation selectByPrimaryKey(String guid);

    int updateByPrimaryKeySelective(FRBTAllocation record);

    int updateByPrimaryKey(FRBTAllocation record);

	/**
	 * 查询出频率划分对比数据
	 * 
	 * @author 牛旭
	 * @date 2016年10月28日 下午2:18:18
	 * 
	 * @param areaCode 区域码
	 * @return
	 */
	List<FRBTAllocation> selectByAreaCodeAndBand(String areaCode);
}