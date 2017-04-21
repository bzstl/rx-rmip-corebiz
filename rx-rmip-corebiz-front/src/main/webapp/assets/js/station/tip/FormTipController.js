/**
// 文件功能描述：用于给各个页面的输入框添加文字提示（给控件添加title属性）
//
//依赖文件：　Jquery.js    jquery.qtip-1.0.0-rc3.min.js  FormTipBasic.js FormTip(X).js  qtipHelper.js
// 创建标识： 白章顺 2016.10.20
 */
var FormTipController ={
		AddFormTip : function (){
			jqQtipHelper._initQtipData();
			
			for(var i=0;i<jqQtipHelper.QtipBasicList.length;i++)   
				{
					$(jqQtipHelper.QtipBasicList[i].selector).attr('title', jqQtipHelper.QtipBasicList[i].content);
					$(jqQtipHelper.QtipBasicList[i].selector).attr('data-rel', 'tooltip').addClass("tooltip-info");
				}
		},
};