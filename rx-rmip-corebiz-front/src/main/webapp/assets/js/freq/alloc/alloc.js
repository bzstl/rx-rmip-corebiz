$(function() {
	setWidth();
	setTitle();
});

/**
 * 频率划分图比例的换算
 * 宽度的百分比与频率之间的换算公式如下：
 * 
 * (log(endFreq)-log(startFreq))/(log(endFreqOfSection)-log(startFreqOfSection))*100
 * 说明：
 * 		startFreq			为每个业务的开始频率
 * 		endFreq				为每个业务的结束频率
 * 		startFreqOfSection	为Hz0K_300K、Hz300K_3M等每一段的开始频率
 * 		endFreqOfSection	为Hz0K_300K、Hz300K_3M等每一段的结束频率
 * 		log()				为以10为底的对数
 * 注意：
 * 		在Hz0K_300K段中段的起始频率要从3K开始，同样的最初以0K为开始的业务也应该从3K开始计算。
 * @author 牛旭
 * @returns
 */
function setWidth() {
	var allocTDs = $("td[id^='ALLOCTD']");
	allocTDs.each(function() {
		// 获取ID和开始结束频率
		var id = $(this).attr("id");
		var freqs = id.split("_");
		var freqStart = Math.round(freqs[1] * 1000);
		var freqEnd = Math.round(freqs[2] * 1000);
		var allocDataKey = freqs[3] + "_" + freqs[4];

		var range = 1
		if (allocDataKey == "Hz0K_300K") {
			range = 2;
		} else if (allocDataKey == "Hz300K_3M") {
			range = 1;
		} else if (allocDataKey == "Hz3M_30M") {
			range = 1;
		} else if (allocDataKey == "Hz30M_300M") {
			range = 1;
		} else if (allocDataKey == "Hz300M_3G") {
			range = 1;
		} else if (allocDataKey == "Hz3G_30G") {
			range = 1;
		} else if (allocDataKey == "Hz30G_3000G") {
			range = 1;
		}

		// 由于log(0)不存在，这里从3K开始计算
		if (freqStart == 0) {
			freqStart = 3;
		}
		var dif = Math.log(freqEnd)/Math.log(10) - Math.log(freqStart)/Math.log(10);
		var percent=(dif / range) * 100;
		percent = percent.toFixed(4);

		$(this).attr("width", percent + "%");
	});
}

function getServiceType(serviceType){
	return serviceType == 1 ? "主要业务" : "次要业务";
}

function setTitle() {
	var freqTDs = $("td[id^='FREQ']");

	freqTDs.each(function() {
		// 获取ID和开始结束频率
		var id = $(this).attr("id");
		var freq = id.split("_");
		var freqStart = freq[2];
		var freqEnd = freq[3];
		var serviceName = freq[4];
		var serviceType = freq[5];
		serviceType = serviceType == 1 ? "主要业务" : "次要业务";

		freqStart = parseFloat((freqStart * 1000).toFixed(2));
		freqEnd = parseFloat((freqEnd * 1000).toFixed(2));
		var tipContent = "开始频率：" + getUnit(freqStart) + "\n";
		tipContent += "结束频率：" + getUnit(freqEnd) + "\n";
		tipContent += "业务性质：" + serviceType + "\n";
		tipContent += "业务名称：" + serviceName + "\n";

		$(this).attr("title", tipContent);
	});
}

// 频率单位转换
function getUnit(number) {
	if (number >= 3000 && number < 3000000) {
		return (number * 10000 / (10000 * 1000)) + "MHz";
	}

	if (number >= 3000000) {
		return (number * 10000 / (10000 * 1000000)) + "GHz";
	}
	return number + "KHz";
}

// 构建脚注HTML链接信息
function bulidFootnoteHTML(footnotes){
	var generalFootnotes = footnotes.split(" ");
	
	var footnoteHTML = "";
	for (var i = 0; i < generalFootnotes.length; i++) {
		var footnoteCode = generalFootnotes[i];
		footnoteHTML += "<a href=javascript:showFootnote('"
				+ footnoteCode
				+ "')>"
				+ footnoteCode
				+ "</a>&nbsp;"
	}
	
	return footnoteHTML;
}

// 展示脚注信息
function showFootnote(footnoteCode){
	layer.open({
		type: 2,
		title: ['脚注详情', 'font-size:14px;color:#000;background-color:#eee;'],
		skin: 'layui-layer-rim', //加上边框
		shift: 0,//改为0，这里不需要动画，看着晃眼
		shadeClose: true,
		area: ['500px', '30%'], //宽高
		content: 'getFootnote/' + footnoteCode
	});
}