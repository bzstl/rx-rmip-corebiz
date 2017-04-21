/**
 * 功能：台站申请表和技术资料表 动态添加行
 * 记录动态添加时的基本数据
 * item为动态添加的代码段，其中的{index}和{numitems}为占位符 addBtId：触发添加的按钮ID  tbodyId：被添加的tbodyID
 * rowNum：技术资料表初始化时的行数 colNum : 需要跨行的列的列数 tdId：需要跨行的列的id fnList:添加完之后需要执行的方法
 * 
 * 依赖: radioCheckboxHelp.js
 */





var dynamicItemsBasic={
		dataList:[
			{
				memo   :"国无管表1 频率使用许可证号或批准文号",
				addBtId:"appfilelistBt",
				tbodyId:"appfilelistTbody",
				item   :'<tr style="height: 18.45pt;"><td class="tdBorderRight Title3Left" colspan="5"><input id="txtAPP_File_NO{numitems0}" type="text" name="appfilelistList[{index0}].appFileNo" class="txtDefault app_file_no" /></td></tr>',
				rowNum : 3,
				colNum : 1,
				tdClass:"appfilelistTitle",
				fnList :[],
	        },
	        {
	        	memo   :"国无管表1 使用信（波）道的中心频率",
	        	addBtId:"appFreq1Bt",
	        	tbodyId:"appFreq1Tbody",
				item:'<tr style="height: 18.45pt;"><td class="tdContent Title3" ><input class="txtDefault" type="text" name="appfreqList[{index0}].appFreqLc" style="width: 47%"/><span>/</span><input class="txtDefault" type="text" name="appfreqList[{index0}].appFreqUc" style="width: 47%"/></td><td class="tdContent Title3" colspan="2" ><input class="txtDefault" type="text" name="appfreqList[{index1}].appFreqLc" style="width: 47%"/><span>/</span><input class="txtDefault" type="text" name="appfreqList[{index1}].appFreqUc" style="width: 47%"/></td></tr>',
			    rowNum : 7,
			    colNum : 2,
				tdClass:"appFreq1Title",
				fnList :[],
	        },
	        {
	        	memo  :"国无管表1  使用频率范围",
	        	addBtId:"appFreq2Bt",
	        	tbodyId:"appFreq2Tbody",
				item:'<tr style="height: 18.45pt;"><td class="tdContent Title3" colspan="3"  ><input class="txtDefault" type="text" name="appfreqList[{index0}].appFreqLfb"  style="width: 22%"/><span>/</span><input class="txtDefault" type="text" name="appfreqList[{index0}].appFreqUfb"  style="width: 22%"/> 至<input class="txtDefault" type="text" name="appfreqList[{index0}].appFreqLfe" style="width: 22%"/><span>/</span><input class="txtDefault" type="text" name="appfreqList[{index0}].appFreqUfe" style="width: 22%"/></td><td class="tdBorderRight Title3" colspan="2"  ><input id="radio_rangeFreqUnit0_{index0}" name="radio_rangeFreqUnit[{index0}]" value="0" type="radio"/><label for="radio_rangeFreqUnit0_{index0}">kHz</label><input id="radio_rangeFreqUnit1_{index0}" name="radio_rangeFreqUnit[{index0}]" value="1" type="radio"/><label for="radio_rangeFreqUnit1_{index0}">MHz</label><input id="radio_rangeFreqUnit2_{index0}" name="radio_rangeFreqUnit[{index0}]" value="2" type="radio"/><label for="radio_rangeFreqUnit2_{index0}">GHz</label></td></tr>',
				rowNum : 6,
				colNum : 1,
				tdClass:"appFreq2Title",
				fnList :[function(){
						$("input[type='radio'] + label,input[type='checkbox'] + label").click(radioCheck);
						},
					],
	        },
		],
		
};