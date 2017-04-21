/**
 * 功能：台站申请表和技术资料表 动态添加tab
 * 
 * 依赖 jQuery
 */

var addTab = function(event){
	var tabCounter= event.data.tabCounter,
	li = '<li><a data-toggle="tab" href="#tab'+tabCounter+'">Tab'+tabCounter+'<i class="red ace-icon fa fa-close bigger-30 " style="cursor:pointer;"></i></a></li>',
	url =event.data.url,
	tabs = $('.'+event.data.divTab);
	
	//添加的tab
	tabs.find( ".nav-tabs" ).append( li );
	tabs.find(".tab-content").append( '<div id="tab'+tabCounter+'" class="tab-pane fade"></div>' );
	

	$.ajax({
		type : 'get',
		url : url+'?tabIndex='+(tabCounter-1),
		data :{},
		success : function(data){
			$("#tab"+tabCounter).html(data);
		}
	});
	
	
	//tab数量增加
	event.data.tabCounter++;
	
	//让新添加的tab获得焦点 
	tabs.find( ".nav-tabs li:last > a" ).trigger('click'); 
	
	
	//给新加的dom<i>绑定事件
	$(".red.ace-icon.fa.fa-close").click(function () {
		//获取div
		var div = $($(this).closest("a").attr("href"));
		//获取li
		var li = $(this).closest("li")
		//删除li和div（如果是当前焦点页面，则把剩下的最后一个li和div设为焦点）
		if(li.hasClass("active")){
			//判断结果:是当前焦点页面。移除li和div，并为最后一个li和div添加焦点class
			li.remove();
			div.remove();
			//让最后一个tab获得焦点  
			tabs.find( ".nav-tabs li:last > a" ).trigger('click'); 
		}
		else{  
			//移除li和div
			li.remove();
			div.remove();
		}
	});
	
	
	//对radio和checkbox添加点击事件
	$("input[type='radio'] + label,input[type='checkbox'] + label").click(radioCheck);
	 
};