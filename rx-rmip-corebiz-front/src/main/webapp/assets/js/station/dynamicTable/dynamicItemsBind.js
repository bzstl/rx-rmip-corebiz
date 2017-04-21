/**
 * 
 * 功能：台站申请表和技术资料表 动态添加行
 * 
 * 为按钮绑定触发事件
 * 依赖 jQuery  dynamicitemsBasic.js dynamicitemsHelp.js
 */
$(function () {
	(function(){
		//对dynamicItemsBasic中数据列表dataList进行循环，
		//若页面中存在于与dataList对应的button，则给其的click绑定上方法addItems()
		var item;
		for(var i=0;i<dynamicItemsBasic.dataList.length;i++){
			item=dynamicItemsBasic.dataList[i];
			$("#"+item.addBtId).click(item,addItems);
		}
	})();
});
