/**
 * 功能：调整iframe大小
 * 
 * 向jquer添加了一个关于设置iframe大小的插件
 * iframe的大小以iframe内的某个dom为标准，option为该dom的id
 * 
 * 依赖：jQuery    
 */



$.fn.iframeAdapte = function(options){
	var opts = $.extend({},$.fn.iframeAdapte.defaults,options);
	if($(this)!=null){
		/*var w = $(this).contents().width();
		var h = $(this).contents().height();*/
		$(this).width($(this).contents().find(opts.domId).width());
		$(this).height($(this).contents().find(opts.domId).height());
	}
	return this;
};

//设定默认值:
$.fn.iframeAdapte.defaults ={
		domId : '.main-container'
};

//调整页面中的每个iframe的大小
var iframeAdapte= function () {
	$("iframe").map($(this).iframeAdapte);
};


