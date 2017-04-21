// 查询数据
function doSearch(pageno) {
	$.ajax({
		url : 'layout/systemlist?flag=1',
		data : {
			systemName : $.trim($("#systemNameInput").val()),
			pageNo : pageno
		},
		success : function(result) {
			$("#search_result").empty().html(result);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			layer.msg('网络连接超时,请您稍后重试...........', 1, 5);
			alert("readyState:" + jqXHR.readyState);
			alert("status:" + jqXHR.status);
			alert("statusText:" + jqXHR.statusText);
			alert("responseText :" + jqXHR.responseText);
			alert(textStatus);
			alert(errorThrown);
		}
	});
}

// 查询频率规划数据
function searchLayout(){
	// 查询条件
	var freqStart = $("#freqStart").val();
	var freqEnd = $("#freqEnd").val();
	var freqStartUnit = $("#freqStartUnit").children("option:selected").val();
	var freqEndUnit = $("#freqEndUnit").children("option:selected").val();
	var systemCode = $("#systemCode").val();
	var systemName = $("#systemName").val();
	
	if ($.trim(freqStart) == ""){
		layer.alert("请输入起始频率");
		return;
	}
	
	if ($.trim(freqEnd) == ""){
		layer.alert("请输入结束频率");
		return;
	}
	
	// 转换单位为小数
	if ("KHz" == freqStartUnit){
		freqStart = freqStart / 1000
	}else if ("MHz" == freqStartUnit){
		freqStart = freqStart;
	}else if ("GHz" == freqStartUnit){
		freqStart = freqStart * 1000;
	}
	
	// 转换单位为小数
	if ("KHz" == freqEndUnit){
		freqEnd = freqEnd / 1000;
	}else if ("MHz" == freqEndUnit){
		freqEnd = freqEnd;
	}else if ("GHz" == freqEndUnit){
		freqEnd = freqEnd * 1000;
	}
	
	console.log("range:"+freqStart+","+freqEnd);
	// 结束频率要大于等于开始频率
	if (freqEnd < freqStart){
		layer.alert("结束频率须大于开始频率");
		return;
	}
	
	$.ajax({
		url : 'getLayouts',
		data : {
			freqStart : freqStart,
			freqEnd : freqEnd,
			systemCode : systemCode
		},
		success : function(result) {
			console.log(result)
			$("body").html(result);
			// 回显搜索条件
//			$("#freqStart").val(freqStart);
//			$("#freqEnd").val(freqEnd);
//			$("#systemCode").val(systemCode);
//			$("#systemName").val(systemName);
//			$("#freqStartUnit").val(freqStartUnit);
//			$("#freqEndUnit").val(freqEndUnit);
		},
		error : function(jqXHR, textStatus, errorThrown) {
			layer.msg('网络连接超时', 1, 5);
		}
	});
}

// 选择业务系统查询条件
function viewSystemlistLayer(){
	var index = layer.open({
		type: 2,
		title: ['选择业务/通信系统', 'font-size:14px;color:#000;background-color:#eee;'],
		skin: 'layui-layer-rim', //加上边框
		shift: 2,
		shadeClose: true,
		area: ['600px', '55%'], //宽高
		content: 'systemlist'
	});
}

/**
 * 设置所选择的应用系统信息
 * 
 * @param systemCode
 * @param systemName
 */
function setSystemInfo(systemCode,systemName){
	var systemCodeInput = parent.document.getElementById("systemCode");
	var systemNameInput = parent.document.getElementById("systemName");
	$(systemCodeInput).val(systemCode);
	$(systemNameInput).val(systemName);
	parent.layer.closeAll();
}