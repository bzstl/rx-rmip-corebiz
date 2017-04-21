/**
 * 功能：台站申请表和技术资料表 动态添加tab
 * 记录动态添加时的基本数据
 * addBtId为触发添加的按钮  url;Tab中内容的url divTab:容纳Tab的div的id
 * tabCounter：容纳Tab的div中初始化时的tab数量
 */

var dynamicTabBasic = {
		dataList : [
			{
				memo   :"国无管表11",
				addBtId : "bt11",
				tabCounter: 2,
				url :  "techData/setFormC_cd1",
				divTab :  "tabbable",
			},
			{
				memo   :"国无管表5  ",
				addBtId : "bt5",
				tabCounter: 2,
				url :  "techData/setFormTF_cd1",
				divTab :  "tabbable",
			},
		],
};