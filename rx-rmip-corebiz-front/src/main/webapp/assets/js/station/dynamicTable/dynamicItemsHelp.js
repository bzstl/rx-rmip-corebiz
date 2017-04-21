/**
 * 功能：台站申请表和技术资料表 动态添加行
 * 
 * item为动态添加的代码段，其中的{index}和{numitems}为占位符
 * 依赖 jQuery   
 */




//增加item	
function addItems(event){
	var indexNum = event.data.rowNum*event.data.colNum;
	var re1;  
	var re2;
	
	var tempItem =event.data.item.substring();/* 复制字符串 */
	for(var i=0;i<event.data.colNum;i++){
		re1 = new RegExp("\\{index"+i+"\\}","g");  //随着循环而变化的正则表达式  例如：/\{index0\}/g ， /\{index1\}/g....
		re2 = new RegExp("\\{numitems"+i+"\\}","g");
		tempItem = tempItem.replace(re1,indexNum+i);
		tempItem = tempItem.replace(re2,indexNum+i+1);
	}
	event.data.rowNum++;
	if(event.data.tdClass!=null||event.data.tdClass!=""){
		$("."+event.data.tdClass).attr("rowspan",event.data.rowNum);
	}
	$("#"+event.data.tbodyId).append(tempItem);
	
	
	for(i=0;i<event.data.fnList.length;i++){
		(event.data.fnList[i])();
	}
	
	
	 /* 当该页面作为iframe嵌套在其他页面中时，
	 执行父页面的方法：把iframe大小尺寸赋给容纳它的div  */
	/*if(parent.iframeAdapte!=null){
		parent.iframeAdapte();
	}*/
	
}
//减少items


