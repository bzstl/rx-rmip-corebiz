/**
 * 自己添加的验证规则
 * @author 牛旭
 * 2016年11月14日16:37:45
 */

$(function() {
	// 匹配  正 浮点数
	jQuery.validator.addMethod("plusDecimal", function(value, element) {
		var doubleNumber = /^[0-9]+(\.[0-9]+)?$/;
	  return this.optional(element) || (doubleNumber.test(value));   
	}, "请输入正确小数，不能输入负数");
	
	// 第一个输入框的频率小于第二个输入框的频率
	jQuery.validator.addMethod("freq2GTfreq1", function(value, element) {
		var eFreq = $(element).val();
		var eUnit = $(element).next().val();
		if (eUnit == "mhz") {
			eFreq = Math.round(eFreq * 1000);
		}
		else if (eUnit == "ghz") {
			eFreq = Math.round(eFreq * 1000000);
		}
		else {
			eFreq = Math.round(eFreq);
		}
		
		var sFreq = $(element).parent().siblings("div").children("input").val();
		var sUnit = $(element).parent().siblings("div").children("select").val();
		if (sUnit == "mhz") {
			sFreq = Math.round(sFreq * 1000);
		}
		else if (sUnit == "ghz") {
			sFreq = Math.round(sFreq * 1000000);
		}
		else {
			sFreq = Math.round(sFreq);
		}
		
	  return this.optional(element) || eFreq > sFreq;   
	}, "结束频率要大于开始频率");
});