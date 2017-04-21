/**
 * 对radio和checkbox添加点击事件
 */


var radioCheck = function(){
	var chd = $(this);
    $("input[name='" + $("#" + chd.attr("for")).attr("name") + "']")
            .each(function (i, n) {
                var _n = $(n);
                var _label = _n.next();

                if (!_n.attr("disabled")) {
                    if (n.id == chd.attr("for")) {
                        if (_n.attr("name") == "radio_FREQ_Type") {
                            tThis.TabFreqGridSelect(_n.val());
                            if ($("#hidTooltip").val() == '1') {
                                jqQtipHelper.InitTooltipDataGrid("#tableFreqs");
                            }
                        }

                        if (_n.attr("name") == "radio_appcode") {
                            //自动生成编号 
                            tThis.InitAppcode(_n[0].attributes["checked"]); // _n.attr("checked") //在Firefox下不识别

                        }
                        else if (_n.attr("name") == "radio_netsp" || _n.attr("name") == "radio_netarea") {
                            $(this).parent().find("input[radioinfo]").remove("input[radioinfo]");
                        }

                        if (_n.attr("type") == "radio") {
                            _n.attr("checked", true);
                            _label.css({ "background-position": "0 -16px" });
                        }
                        else {
	                        	//这段代码的含义不明，且需要修改，因为他它会导致checked的背景和实际的选择状态不符
                            if (_n[0].attributes["checked"]) {
                                _n.attr("checked", false);
                                _label.css({ "background-position": "0 0" });
                            } else {
                                _n.attr("checked", true);
                                _label.css({ "background-position": "0 -16px" });
                            }
                        }
                    } else {
                        _n.attr("checked", false);
                        _label.css({ "background-position": "0 0" });
                    }
                }
            });
};

$(function(){
	$("input[type='radio'] + label,input[type='checkbox'] + label").click(radioCheck);
});