package com.rx.rmip.corebiz.service.modules.freq.allocation.dao;

import java.util.List;

import com.rx.rmip.corebiz.common.persistence.annotation.MyBatisDao;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FrmAllocation;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FrmFootnote;
import com.rx.rmip.corebiz.service.modules.freq.allocation.model.FrmService;

/**
 * 区域划分数据mapper
 * 
 * @author 牛旭
 * @date 2016年10月28日 下午2:16:38
 *
 */
@MyBatisDao
public interface FrmAllocationMapper {

	/**
	 * 根据区域码查找全部频率划分数据
	 * 
	 * @param areaCode
	 * @return
	 */
	public List<FrmAllocation> selectAllocations(String areaCode);

	/**
	 * 获取全部无线电业务类型
	 * 
	 * @param areaCode
	 * @return
	 */
	public List<FrmService> selectFrmServices();

	/**
	 * 获取全部无线电业务类型
	 * 
	 * @param areaCode
	 * @return
	 */
	public List<FrmFootnote> selectFrmFootnotes();
}
