/**
 * 功能：台站申请表和技术资料表 动态添加tab
 * 
 * 为按钮绑定触发事件
 * 依赖 jQuery  dynamicTabBasic.js dynamicTabHelp.js
 */

$(function(){
	//对dynamicTabBasic中数据列表dataList进行循环，
	//若页面中存在于与dataList对应的button，则给其的click绑定上方法addTab()
	(function(){
		var item;
		for(var i=0;i<dynamicTabBasic.dataList.length;i++){
			item=dynamicTabBasic.dataList[i];
			$("#"+item.addBtId).click(item,addTab);
		}
	})();
});