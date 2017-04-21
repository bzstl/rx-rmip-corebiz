(function ($) {

    function getDateVal(value) {
        var xdata = null;
        if ($.trim(value).length > 0) {
            var re = /^(\d{4})([-\/\.])(\d{1,2})\2(\d{1,2})$/;
            var rslt = re.exec(value);
            if (rslt) {
                var year = rslt[1];
                var month = rslt[3] - 1;
                var day = rslt[4];
                xdata = new Date(year, month, day);
            }
        }

        return xdata;
    }
    //2014-10-28 maoguangjiang
    //Determines whether its argument is a number.
    function isNumeric(obj) {
        return !isNaN(parseFloat(obj)) && isFinite(obj);
    }

    function getLenB(value) {
        return $.trim(value).replace(/[^\x00-\xff]/g, "**").length;
    }

    function matchTimes(s, pattern) {
        var i = 0;
        var regex = new RegExp(pattern, 'ig');
        while (regex.exec(s)) {
            i++;
        }
        return i;
    }

    function getXDocElm(element) {
        return $('#xdoc' + element.id.replace(/\:/, '\\:')).get(0);
    }

    //判断两个文本框必须输入一个

    function IsNullRequired(element, ctl1, ctl2) {
        var curTable = $(element).closest('table[pwidRequired]');
        var $pwid1 = curTable.find(ctl1);
        var $pwid2 = curTable.find(ctl2);
        var rslt = false;
        if ($.trim($pwid1.val()).length > 0 || $.trim($pwid2.val()).length > 0) {
            rslt = true;
        }
        return rslt;
    }

    //判断两个文本框中第一个数不能大于第二个数

    function IsEqualRequired(tThis, element, ctl1, ctl2) {
        var curRow = $(element).closest('tr[EquRequired]');
        if (typeof (ctl1) == "undefined" && typeof (ctl2) == "undefined") {
            ctl1 = "[startRequired=true]";
            ctl2 = "[endRequired=true]";
        }
        var $start = curRow.find(ctl1);
        var $end = curRow.find(ctl2);
        var rslt = tThis.optional($start.get(0)) || tThis.optional($end.get(0));

        if (!rslt) {
            if ($.trim($start.val()).length == 0 || $.trim($end.val()).length == 0) {
                return false;
            }
            if (parseFloat($start.val()) <= parseFloat($end.val())) {
                rslt = true;
            }
        }
        return rslt;
    }

    //正则表达式验证
    jQuery.validator.addMethod("regexVal", function (value, element, param) {
        return this.optional(element) || param[0].test(value);
    }, '{1}');

    //字符串最大长度（字节数）验证
    jQuery.validator.addMethod("maxLengthB", function (value, element, param) {
        return this.optional(element) || getLenB(value) <= param;
    }, "长度不能超过{0}（一个中文字符长度为2）");

    //字符串等长（字节数）验证
    jQuery.validator.addMethod("EquLength", function (value, element, param) {
        return this.optional(element) || getLenB(value) == param;
    }, "请输入{0}位数字编号");

    //设备序列号格式验证
    jQuery.validator.addMethod("tfCodeFormat", function (value, element, param) {
        return this.optional(element) || /^[a-zA-Z0-9\-,]+$/.test(value);
    }, "通信对象站代号只允许包含字母、数字，多个站代号用&nbsp;,&nbsp;分隔");

    //设备序列号格式验证
    jQuery.validator.addMethod("equNoFormat", function (value, element, param) {

        return this.optional(element) || /^[a-zA-Z0-9\-;；]+$/.test(value);
    }, "设备序列号只允许包含字母、数字及-，多个序列号用&nbsp;;&nbsp;隔开");

    //设备序列号是否重复验证
    jQuery.validator.addMethod("equRepeated", function (value, element, param) {
        var noRepeated = true;
        value = $.trim(value);
        value = value.replace(/，/g, ',');
        if (value.substring(value.length - 1, value.length) != ';') {
            value = ';' + value + ';';
        } else {
            value = ';' + value
        }

        if (value.match(/(;[a-zA-Z0-9\-]{1,};).*\1/ig)) {
            noRepeated = false;
        }

        return noRepeated;
    }, "设备序列号重复");

    //设备序列号与设备数量匹配验证
    jQuery.validator.addMethod("equCountMath", function (value, element, param) {
        var curRow = $(element).closest('tr[datagrid-row-index]');
        var rowIndex = curRow.attr("datagrid-row-index");

        var countElm = curRow.find('[countControl=EQU_COUNT]');
        var noElm = curRow.find('[noControl=EQU_NO]');

        var rslt = this.optional(countElm.get(0)) || this.optional(noElm.get(0));

        if (!rslt) {
            var equCount = countElm.val();
            var noCount = matchTimes(noElm.val(), '[a-zA-Z0-9\-]{1,}[;；]?');
            rslt = equCount == noCount
        }
        return rslt;
    }, "设备序列号的数目与设备数量不匹配");

    /* 身份证号校验*/

    //字符串等长（字节数）验证
    jQuery.validator.addMethod("IDCardMath", function (sId, element) {
        var info = cidInfo(sId);
        return this.optional(element) || info;
    }, "请输入正确身份证号");

    //校验身份证必须与出生日期一至
    jQuery.validator.addMethod("IDCardByBirthday", function (sId, element) {
        var sIdLength;

        if (sId.length == 18) {
            sIdLength = 14;
        } else if (sId.length == 15) {
            sIdLength = 12;
        } else {
            return false;
        }

        var _year = $("#selBirthYear").combobox('getValue');
        var _month = $("#selBirthMonth").combobox('getValue');
        var _day = $("#selBirthDay").combobox('getValue');
        if (sIdLength == 12) {
            _year = _year.substring(2, 4);
        }
        var birthday = _year + _month + _day;
        var cid = sId.substring(6, sIdLength);
        return this.optional(element) || birthday == cid;
    }, "出生日期与身份证不一致！");

    var aCity = { 11: "北京", 12: "天津", 13: "河北", 14: "山西", 15: "内蒙古", 21: "辽宁", 22: "吉林", 23: "黑龙江", 31: "上海", 32: "江苏", 33: "浙江", 34: " 安徽", 35: "福建", 36: "江西", 37: "山东", 41: "河南", 42: "湖北", 43: "湖南", 44: "广东", 45: "广西", 46: "海南", 50: "重庆", 51: "四川", 52: "贵州", 53: "云南", 54: "西藏", 61: "陕西", 62: "甘肃", 63: "青海", 64: "宁夏", 65: "新疆", 71: "台湾", 81: "香港", 82: "澳门", 91: "国外" };

    function cidInfo(sId) {

        var iSum = 0;
        var info = "";
        if (sId.length) {
            //身份证正则表达式(15位) 
            isIDCard1 = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/;
            if (isIDCard1.test(sId))
                return true;
        }
        if (!/^\d{17}(\d|x)$/i.test(sId))
            return false;
        sId = sId.replace(/x$/i, "a");
        if (aCity[parseInt(sId.substr(0, 2))] == null)
            return false;
        sBirthday = sId.substr(6, 4) + "-" + Number(sId.substr(10, 2)) + "-" + Number(sId.substr(12, 2));
        var d = new Date(sBirthday.replace(/-/g, "/"));
        if (sBirthday != (d.getFullYear() + "-" + (d.getMonth() + 1) + "-" + d.getDate()))
            return false;
        for (var i = 17; i >= 0; i--)
            iSum += (Math.pow(2, i) % 11) * parseInt(sId.charAt(17 - i), 11);
        if (iSum % 11 != 1) return false;
        return true; // [parseInt(sId.substr(0, 2))] + "," + sBirthday + "," + (sId.substr(16, 1) % 2 ? "男" : "女")
    }


    // 日期校验(YMD)
    jQuery.validator.addMethod("dateYMD", function (value, element) {
        var check = false;
        var re = /^(\d{4})([-\/\.])(\d{1,2})\2(\d{1,2})$/;
        var rslt = re.exec(value);
        if (rslt) {
            var year = rslt[1];
            var month = rslt[3] - 1;
            var day = rslt[4];
            var xdata = new Date(year, month, day);
            if ((xdata.getFullYear() == year) && (xdata.getMonth() == month) && (xdata.getDate() == day))
                check = true;
        } else
            check = false;
        return this.optional(element) || check;
    }, "请按年月日的顺序输入正确的日期(分隔符用- / . 如: 2010-10-01)");


    // 时间校验(YMD)
    jQuery.validator.addMethod("timeYMD", function (value, element) {
        var check = false;
        var re = /^(\d{1,2})([:])(\d{1,2})$/;
        var rslt = re.exec(value);
        if (rslt) {
            var hour = rslt[1];
            var minute = rslt[3];
            if (hour < 24 && minute < 60)
                check = true;
        } else
            check = false;
        return this.optional(element) || check;
    }, "请按入正确的时间格式(00:00—23:59)");
    //结束时间有效性验证
    jQuery.validator.addMethod("EndTime", function (value, element) {
        var curRow = $(element).closest('tr[datagrid-row-index]');


        var $startDate = curRow.find('[startTimeControl=startTime]');
        var $endDate = curRow.find('[endTimeControl=endTime]');

        var rslt = this.optional($endDate.get(0)) || this.optional($startDate.get(0));

        if (!rslt) {
            var d1 = $startDate.val();
            var d2 = $endDate.val();
            rslt = d2 >= d1;
        }
        return rslt;
    }, "结束时间必须大于开始时间");

    //脉冲宽度两个必须输入一个
    jQuery.validator.addMethod("pwidRequired", function (value, element, param) {
        var ctl1 = "[EtEquPwid1=etequpwid1]";
        var ctl2 = "[EtEquPwid2=etequpwid2]";
        return IsNullRequired(element, ctl1, ctl2);
    }, "脉冲带宽至少必须输入一个");

    //脉冲周期两个必须输入一个
    jQuery.validator.addMethod("PRRequired", function (value, element, param) {
        var ctl1 = "[EtEquPR=etequpr]";
        var ctl2 = "[EtEquPF=etequpf]";
        return IsNullRequired(element, ctl1, ctl2);
    }, "脉冲周期至少必须输入一个");

    //通信表编号或者名称
    jQuery.validator.addMethod("ObjRequired", function (value, element, param) {
        var ctl1 = "[objName1=true]";
        var ctl2 = "[objName2=true]";
        return IsNullRequired(element, ctl1, ctl2);
    }, "通信表编号或名称至少必须输入一个");

    //通信表编号或者名称
    jQuery.validator.addMethod("ObjIsNull", function (value, element, param) {
        var flag = true;
        var curTable = $(element).closest('table[pwidRequired]');
        var ctl1 = "[objTdi" + param + "=true]";
        var $tdi = curTable.find(ctl1);
        if ($.trim($tdi.val()) > 0) {
            if ($.trim(value).length == 0) {
                flag = false;
            }
            if (param == "2") {
                var obj_type = $("#selObj_Type").combobox("getValue");
                if (obj_type != "" && value == "" && $("#txtSTAT_TDI1").val() != "") {
                    flag = false;
                }
            }
        } else {
            if (param == "1") {
                var obj_type = $("#selObj_Type").combobox("getValue");
                if (obj_type != "" && value == "" && $("#txtSTAT_TDI2").val() == "") {
                    $("#selObj_Type").valid();
                    flag = false;
                }
            }
        }
        return flag;
    }, "通信表编号或名称不能为空");

    //通信表名称重复
    jQuery.validator.addMethod("ObjIsRepeat", function (value, element, param) {
        var tdi1 = $("#txtSTAT_TDI" + param).val();
        var tdi2 = value;
        return !(tdi1 != "" && tdi2 != "" && tdi1 == tdi2);
    }, "通信表编号或名称重复");

    //对H表的通信对象类型进行校验
    jQuery.validator.addMethod("ComboxHObj", function (value, element, param) {
        var comboxValue = $('#' + element.id).combobox('getValue');
        var check = true;
        var tdi1 = $("#txtSTAT_TDI1").val();
        var tdi2 = $("#txtSTAT_TDI2").val();
        if (comboxValue == "") {
            if (tdi1 != "" || tdi2 != "") {
                check = false;
            }
        }
        return check;
    }, "请选择通信对象类型");

    //判断时间秒数、度数、仰角数据的大小值
    jQuery.validator.addMethod("EqualRequired", function (value, element, param) {
        return IsEqualRequired(this, element);
    }, "结束{0}不能小于开始{0}");
    jQuery.validator.addMethod("AntRequired", function (value, element, param) {
        return IsEqualRequired(this, element, "[antsrequired=true]", "[anterequired=true]");
    }, "结束{0}不能小于开始{0}");
    //结束日期有效性验证
    jQuery.validator.addMethod("freqEndDate", function (value, element) {

        var curRow = $(element).closest('tr[datagrid-row-index]');


        var $startDate = curRow.find('[startDateControl=startDate]');
        var $endDate = curRow.find('[endDateControl=endDate]');

        var rslt = this.optional($endDate.get(0)) || this.optional($startDate.get(0));

        if (!rslt) {
            var d1 = getDateVal($startDate.val());
            var d2 = getDateVal($endDate.val());
            rslt = d2 >= d1;
        }

        return rslt;
    }, "结束日期必须大于开始日期");

    //最大辐射方位角ND
    jQuery.validator.addMethod("ant_angle_RequiredND", function (value, element, param) {
        var ANT_Angle_Temp = 'ND';
        var rslt = true;
        if (isNumeric(value)) {
            var TempValue = parseFloat(value);
            rslt = this.optional(element) || (TempValue > 0 && TempValue <= 360)
        }
        else {
            rslt = this.optional(element) || value == 'ND';
        }
        return rslt;
    }, "最大辐射方位角范围0-360或ND(全向)");

    //发射频率有效性验证
    jQuery.validator.addMethod("EmitFreqRange", function (value, element) {
        //起始频率段不需要校验
        if (typeof (element.startFreqControl) != "undefined" && element.startFreqControl == "startEmitFreq") {
            return true;
        }
        var curRow = $(element).closest('tr[datagrid-row-index]');

        var $startFreq = curRow.find('[startFreqControl=startEmitFreq]');
        var $endFreq = curRow.find('[endFreqControl=endEmitFreq]');

        //var $startFreq = $(element).closest('tr').find('[id$=STARTFREQ]');
        var rslt = this.optional($endFreq.get(0)) || this.optional($startFreq.get(0));

        if (!rslt) {
            var val1 = $startFreq.val();
            var val2 = $endFreq.val();
            rslt = new Number(val2) >= new Number(val1);
        }

        return rslt;
    }, "终止频率必须大于等于起始频率");

    //接受频率有效性验证
    jQuery.validator.addMethod("ReceiveFreqRange", function (value, element) {
        //起始频率段不需要校验
        if (typeof (element.startFreqControl) != "undefined" && element.startFreqControl == "startReceiveFreq") {
            return true;
        }
        var curRow = $(element).closest('tr[datagrid-row-index]');

        var $startFreq = curRow.find('[startFreqControl=startReceiveFreq]');
        var $endFreq = curRow.find('[endFreqControl=endReceiveFreq]');

        //var $startFreq = $(element).closest('tr').find('[id$=STARTFREQ]');
        var rslt = this.optional($endFreq.get(0)) || this.optional($startFreq.get(0));

        if (!rslt) {
            var val1 = $startFreq.val();
            var val2 = $endFreq.val();
            rslt = new Number(val2) >= new Number(val1);
        }

        return rslt;
    }, "终止频率必须大于等于起始频率");

    //Combox下接列表 默认为请选择时，则提示必须输入
    jQuery.validator.addMethod("ComboxRequired", function (value, element, param) {
        var comboxValue = $('#' + element.id).combobox('getValue');
        var check = true;
        if (comboxValue == "" || comboxValue == "-1") {
            check = false;
        }
        return check;
    }, "请选择{0}项");

    function GetWebConfig(configKey, callback) {
        $.ajax({
            type: "POST",
            url: "../ApplyCommon/ExcelService.asmx/GetWebConfig",
            data: { webconfigKey: configKey },
            dataType: "text",
            success: function (result) {
                if (callback) {
                    callback(result);
                }
            },
            error: function (XMLHttpRequest, status, err) {
                alert("申请表编号获取失败,错误:" + err);
            }
        });
    }

    //读取XmlConfig配置

    function GetXmlConfig(configKey, callback) {
        $.ajax({
            type: "POST",
            url: "../ApplyCommon/GetDataService.asmx/GetXmlConfig",
            data: { webconfigKey: configKey },
            dataType: "text",
            success: function (result) {
                if (callback) {
                    callback(result);
                }
            },
            error: function (XMLHttpRequest, status, err) {
                alert("经纬度配置获取失败,错误:" + err);
            }
        });
    }

    jQuery.validator.addMethod("RangeAndMessage", function (value, element, param) {
        if (parseFloat(value) == parseFloat(0)) {

            var lg1 = $(param[2]).val();
            var lg2 = $(param[2]).val();
            if (typeof (lg1) == "undefined" || lg1 == "" || typeof (lg2) == "undefined" || lg2 == "") {
                return true;
            }
            if (typeof (lg1) != "undefined" && lg1 != "" && typeof (lg2) != "undefined" && lg2 != "") {
                if (parseFloat(lg1) == parseFloat(0) && parseFloat(lg2) == parseFloat(0))
                    return true;
            }

            return false;
        }
        if (param[4] == "1" && $(param[3]).val() == "") {
            return true;
        }
        if (parseFloat(param[0]) <= parseFloat(value) && parseFloat(value) <= parseFloat(param[1])) {
            return true;
        } else {
            return false;
        }
    }, "{2} 请输入一个介于 {0} 和 {1} 之间的值");

    var area = "";

    var statLgMax = 360; //117;
    var statLgMin = 0;
    var statLaMax = 360;
    var statLaMin = 0;
    /*GetXmlConfig("statLg", function (v) {
        if (v.indexOf(";") > -1) {
            statLgMax = v.split(";")[0];
            statLgMin = v.split(";")[1];
        }
        GetWebConfig("AreaCodeName", function (x) {
            area = x;
            jQuery.validator.addClassRules({
                stat_lg1:
                {
                    number: true,
                    required: true,
                    RangeAndMessage: [statLgMin, statLgMax, "您输入的经度不在" + area + "范围内", "#txtSTAT_LG1"]
                }
            });
            jQuery.validator.addClassRules({
                stat_lg1_norequired:
                {
                    number: true,
                    RangeAndMessage: [statLgMin, statLgMax, "您输入的经度不在" + area + "范围内", "#txtSTAT_LG1", "1"]
                }
            });
        });
    });*/

    /*GetXmlConfig("statLa", function (v) {
        if (v.indexOf(";") > -1) {
            statLaMax = v.split(";")[0];
            statLaMin = v.split(";")[1];
        }
        GetWebConfig("AreaCodeName", function (x) {
            area = x;
            jQuery.validator.addClassRules({
                stat_la1:
                {
                    number: true,
                    required: true,
                    RangeAndMessage: [statLaMin, statLaMax, "您输入的纬度不在" + area + "范围内", "#txtSTAT_LA1"]
                }
            });

            jQuery.validator.addClassRules({
                stat_la1_norequired:
                {
                    number: true,
                    RangeAndMessage: [statLaMin, statLaMax, "您输入的纬度不在" + area + "范围内", "#txtSTAT_LA1", "1"]
                }
            });


        });
    });*/

    jQuery.validator.addClassRules({

        checkGENDER:
        {
            required: true
        },
        /*申请表*/
        startDate: {
            required: true,
            dateYMD: true
        },
        endDate: {
            required: true,
            dateYMD: true,
            freqEndDate: true
        },
        startTime: {
            required: true,
            timeYMD: true
        },
        endTime: {
            required: true,
            timeYMD: true//,
            //EndTime: true
        },

        /*台站资料验证*/
        app_code:
        {
            required: true,
            //regexVal: [/^(T|PA)[0-9]{12}$/i, '请输入合法的申请表编号，如：<br/>T440020120001、PA000000000012']
            regexVal: [/^(T|PA)?[0-9]{12}$/i, '请输入合法的申请表编号，如：<br/>T440020120001、PA000000000012<br/>440020120001']
        },
        app_code2:
        {
            required: true,
            regexVal: [/^(T|PA)?[0-9]{12}$/i, '请输入合法的申请表编号，如：<br/>T440020120001、PA000000000012<br/>440020120001']
        },
        app_code_pa:
        {
            EquLength: 4,
            required: true,
            number: true
        },
        app_code_pa1:
        {
            EquLength: 4,
            required: true,
            number: true
        },
        st_c_code:
        {
            required: true,
            regexVal: [/^(\w|\d)+$/i, '请输入合法的基站编号，编号由字母和数字组成且长度小于40'],
            maxLengthB: 40
        },
        st_c_code_noRequired:
        {
            //regexVal: [/^(\w|\d)+$/i, '请输入合法的基站编号，编号由字母和数字组成且长度小于40'],
            maxLengthB: 40
        },
        stat_name:
        {
            required: true,
            maxLengthB: 80
        },
        stat_name_noRequired:
        {
            maxLengthB: 80
        },
        at_h_vpic:
        {
            maxLengthB: 80
        },
        stat_name_obj1:
        {
            maxLengthB: 80,
            ObjIsNull: 1
        },
        stat_name_obj2:
        {
            maxLengthB: 80,
            ObjIsRepeat: 1,
            ObjIsNull: 2
        },
        stat_name_v:
        {
            maxLengthB: 80
        },
        stat_addr:
        {
            required: true,
            maxLengthB: 80
        },
        stat_addr_norequired:
        {
            maxLengthB: 80
        },
        org_name:
        {
            required: true,
            maxLengthB: 60
        },
        stat_tdi:
        {
            EquLength: 4,
            required: true,
            number: true
        },
        STAT_Date_Start:
        {
            required: true,
            dateYMD: true
        },
        STAT_Date_Start_norequired:
        {
            dateYMD: true
        },
        st_c_sum:
        {
            number: true,
            required: true,
            range: [1, 9] //暂时修改为9个，20120814
        },
        stat_lg2:
        {
            number: true,
            required: true,
            range: [0, 59]
        },
        stat_lg2_norequired:
        {
            number: true,
            range: [0, 59]
        },
        stat_lg3_norequired:
        {
            number: true,
            range: [0, 59.99]
        },
        stat_lg3:
        {
            number: true,
            required: true,
            range: [0, 59.99]
        },
        stat_la2:
        {
            number: true,
            required: true,
            range: [0, 59]
        },
        stat_la2_norequired:
        {
            number: true,
            range: [0, 59]
        },
        stat_la3:
        {
            number: true,
            required: true,
            range: [0, 59.99]
        },
        stat_la3_norequired:
        {
            number: true,
            range: [0, 59.99]
        },
        stat_at:
        {
            required: true,
            number: true,
            range: [-199, 8999]
        },
        stat_at_norequired:
        {
            number: true,
            range: [-199, 8999]
        },
        stat_at_v:
        {
            number: true,
            range: [-199, 8999]
        },
        St_Serv_R:
        {
            number: true,
            range: [0, 190]
        },
        St_Serv_R_d:
        {
            number: true,
            range: [0, 190000]
        },
        cCode:
        {
            required: true,
            maxLengthB: 20
        },
        at_csgn:
        {
            required: true,
            maxLengthB: 20
        },
        at_csgn_norequired:
        {
            maxLengthB: 20
        },
        ctfCode:
        {
            required: true,
            tfCodeFormat: true,
            maxLengthB: 20
        },

        at_rang:
        {
            required: true,
            number: true,
            range: [-89.9, 89.9]
        },
        at_rang_norequired:
        {
            number: true,
            range: [-89.9, 89.9]
        },
        at_eang:
        {
            required: true,
            number: true,
            range: [-89.9, 89.9]
        },
        at_eang_norequired:
        {
            number: true,
            range: [-89.9, 89.9]
        },
        at_ang_e:
        {
            //required: true,
            number: true,
            range: [0, 360]
        },
        app_file_no:
        {
            maxLengthB: 40
        },
        app_file_no_required:
        {
            required: true,
            maxLengthB: 40
        },
        st_me_file_no:
        {
            maxLengthB: 20
        },
        st_e_net_code:
        {
            required: true,
            maxLengthB: 20
        },
        st_me_lg0:
        {
            number: true,
            range: [0, 180]
        },
        st_me_lg0_required:
        {
            required: true,
            number: true,
            range: [0, 180]
        },
        st_me_lg1:
        {
            number: true,
            range: [0, 90]
        },
        st_d_tec_type:
        {
            required: true,
            maxLengthB: 20
        },
        freq_e_band:
        {
            number: true,
            range: [0, 30000]
        },
        freq_band_required:
        {
            required: true,
            number: true,
            range: [0, 30000]
        },
        freq_e_band_e:
        {
            required: true,
            number: true,
            range: [0, 300000]
        },

        ft_freq_epow:
        {
            number: true,
            range: [0, 300000]
        },
        ft_freq_eirp:
        {
            number: true,
            range: [0, 300000]
        },
        ft_freq_eirp_required:
        {
            required: true,
            number: true,
            range: [0, 300000]
        },
        ft_freq_mc:
        {
            maxLengthB: 20
        },
        stataddr:
        {
            maxLengthB: 80
        },
        stat_equ_sum:
        {
            regexVal: [/^[0-9]+$/, '请输入数字'],
            min: 1,
            max: 10000
        },
        st_a_nrm:
        {
            required: true,
            maxLengthB: 40
        },
        st_a_call_oi:
        {
            required: true,
            maxLengthB: 20
        },
        st_a_sgn:
        {
            required: true,
            maxLengthB: 20
        },
        st_a_st:
        {
            number: true,
            min: 0,
            max: 99999999.9
        },
        st_a_st_required:
        {
            required: true,
            number: true,
            min: 0,
            max: 99999999.9
        },

        st_a_model:
        {
            required: true,
            maxLengthB: 4,
            regexVal: [/^[\s0-9a-zA-Z]{0,4}$/, '格式错误，请输入字母或数字']
        },
        st_tf_code:
        {
            required: true,
            maxLengthB: 40
        },
        st_tf_code_norequired:
        {
            maxLengthB: 40
        },
        st_user_area:
        {
            required: true,
            maxLengthB: 80
        },
        stat_equ_sum_lm:
        {
            required: true,
            number: true,
            min: 1,
            max: 999  //150
        },
        st_b_sgn:
        {
            required: true,
            maxLengthB: 40
        },
        st_b_cover_area:
        {
            maxLengthB: 40
        },
        st_me_fband: {
            required: true,
            number: true,
            range: [0, 30000]
        },
        et_equ_rwid: {
            number: true,
            range: [0, 30000]
        },
        st_me_fband_G: {
            number: true,
            range: [0, 3000]
        },
        st_tf_trans_ca_p: {
            number: true,
            range: [0, 999999.999999]
        },
        meno:
        {
            maxLengthB: 512
        },
        tableNo:
        {
            number: true,
            range: [0, 99]
        },
        /*频率数据校验*/
        freqNo:
        {
            required: true,
            number: true,
            min: 0,
            max: 999
        },
        freq: {
            required: true,
            number: true,
            range: [0, 30000]
        },
        freq_G: {
            required: true,
            number: true,
            range: [0, 3000]
        },
        receiveFreqEquTo: {
            required: true,
            number: true,
            range: [0, 30000],
            ReceiveFreqRange: true
        },
        receiveFreqEquTo_G: {
            required: true,
            number: true,
            range: [0, 3000],
            ReceiveFreqRange: true
        },
        emitFreqEquTo: {
            required: true,
            number: true,
            range: [0, 30000],
            EmitFreqRange: true
        },
        emitFreqEquTo_G: {
            required: true,
            number: true,
            range: [0, 3000],
            EmitFreqRange: true
        },
        emitFreqEquTo_H: {
            number: true,
            range: [0, 30000],
            EmitFreqRange: true
        },
        receiveFreqEquTo_H: {
            number: true,
            range: [0, 30000],
            ReceiveFreqRange: true
        },
        receiveFreq: {
            required: false,
            number: true,
            range: [0, 30000],
            freqRange: false
        },
        receiveFreq_G: {
            required: false,
            number: true,
            range: [0, 3000],
            freqRange: false
        },
        /*设备*/
        EQU_AUTH:
        {
            maxLengthB: 40
        },
        EQU_AUTH_required:
        {
            required: true,
            maxLengthB: 40
        },
        EQU_Model_tf:
        {
            maxLengthB: 40
        },
        EQU_Model:
        {
            required: true,
            maxLengthB: 40
        },
        EQU_MENU:
        {
            required: true,
            maxLengthB: 80
        },
        EQU_MENU_NoRequired:
        {
            maxLengthB: 80
        },
        EQU_MENU_by_dlm:
        {
            maxLengthB: 80
        },
        equ_sum: {
            required: true,
            number: true,
            range: [1, 999]
        },
        equ_sum_d:
        {
            //required: true,
            number: true,
            range: [1, 999]
        },
        equ_pow:
        {
            number: true,
            range: [0, 9999999]
        },
        equName: {
            required: true,
            maxLengthB: 5
        },
        equCount: {
            required: true,
            regexVal: [/^[0-9]+$/, '请输入数字'],
            min: 0,
            max: 10000,
            equCountMath: true
        },
        equNo: {
            equNoFormat: true,
            equCountMath: true
        },
        equType: {
            maxLengthB: 20
        },
        equTl:
        {
            number: true,
            range: [0, 999999.9]
        },
        et_equ_tl:
        {
            number: true,
            range: [-899.9, 999999.9]
        },
        equ_code:
        {
            maxLengthB: 40
        },
        equ_code_required:
        {
            required: true,
            maxLengthB: 40
        },
        equ_code_b:
        {
            maxLengthB: 40
        },
        stpostype:
        {
            maxLengthB: 20
        },
        et_equ_cl:
        {
            maxLengthB: 20
        },
        et_equ_dpow:
        {
            number: true,
            range: [-70, 69.9]
        },
        et_equ_upow:
        {
            number: true,
            range: [0, 300000]
        },
        et_equ_sen:
        {
            number: true,
            range: [0, 300000]
        },
        st_e_sat:
        {
            maxLengthB: 40
        },
        et_equ_name:
        {
            required: true,
            maxLengthB: 80
        },
        et_equ_sum:
        {
            number: true,
            range: [1, 999]
        },
        et_equ_euse:
        {
            maxLengthB: 20
        },
        et_equ_epos:
        {
            maxLengthB: 40
        },
        et_equ_esgn:
        {
            regexVal: [/^((H\d{3})|([1-9]\d{2}(H|K|M|G))|([1-9]\d(H|K|M|G)\d)|([1-9](H|K|M|G)\d{2}))[N|A|H|R|J|B|C|F|G|D|P|K|L|M|Q|V|W|X][0|1|2|3|7|5|9|X][N|A|B|C|D|E|F|W|X][A|B|C|D|E|F|G|H|J|K|L|M|N|W|X][N|C|F|T|W|X]$/, '应该按照格式填写发射标识:1-4位表示带宽,必须仅包含[HKMG]之一和三个数字并且不能以(0KMG中任意开头),第5位为[NAHRJBCFGDPKLMQVWX]之一,第6位为[0123759X]之一,第7位为[NABCDEFWX]之一,第8位为[ABCDEFGHJKLMNWX]之一,第9位为[NCFTWX]之一'],
            maxLengthB: 20
        },
        et_equ_fntval:
        {
            number: true,
            range: [0, 999999.999]
        },
        et_equ_apos:
        {
            maxLengthB: 40
        },
        /*天线*/

        ant_model:
        {
            required: true,
            maxLengthB: 40
        },
        ant_model_tf:
        {
            maxLengthB: 40
        },
        at_3dbe:
        {
            required: true,
            number: true,
            range: [0, 360]
        },
        at_3dbe_norequired:
        {
            number: true,
            range: [0, 360]
        },
        at_3dbr:
        {
            required: true,
            number: true,
            range: [0, 360]
        },
        at_ang_b:
        {
            number: true,
            range: [0, 360]
        },
        at_se_b:
        {
            number: true,
            range: [-89.9, 89.9]
        },
        ant_egain:
        {
            number: true,
            range: [0, 199.9]
        },
        ant_rgain:
        {
            number: true,
            range: [0, 199.9]
        },
        ant_menu_required:
        {
            required: true,
            maxLengthB: 80
        },
        ant_menu:
        {
            maxLengthB: 80
        },
        ant_hight:
        {
            number: true,
            range: [0, 999]
        },
        ant_hight_required:
        {
            required: true,
            number: true,
            range: [0, 999]
        },
        feed_lose:
        {
            number: true,
            range: [0, 199]
        },
        feed_lose_required:
        {
            required: true,
            number: true,
            range: [0, 199]
        },
        ant_type:
        {
            maxLengthB: 8
        },
        ant_gain:
        {
            number: true,
            range: [0, 199.9]
        },
        ant_gain_required:
        {
            required: true,
            number: true,
            range: [0, 199.9]
        },
        at_ant_upang:
        {
            number: true,
            range: [-89.9, 89.9]
        },
        at_ant_upangMax_e:
        {
            required: true,
            number: true,
            range: [-89.9, 89.9],
            AntRequired: "天线仰角"
        },
        at_ant_upangMax_e_norequired:
        {
            number: true,
            range: [-89.9, 89.9],
            AntRequired: "天线仰角"
        },
        at_ant_upang_required:
        {
            required: true,
            number: true,
            range: [-89.9, 89.9]
        },
        at_ant_gMax_e:
        {
            number: true,
            range: [0, 360],
            required: true,
            EqualRequired: "天线方位角"
        },
        at_ant_gMax_e_norequired:
        {
            number: true,
            range: [0, 360],
            EqualRequired: "天线方位角"
        },
        at_ant_upangMax_h:
        {
            number: true,
            range: [-89.9, 89.9],
            AntRequired: "射线仰角"
        },
        at_ant_upangMax:
        {
            required: true,
            number: true,
            range: [0, 360],
            EqualRequired: "工作方位角"
        },
        st_r_eax:
        {
            required: true,
            number: true,
            range: [-89.9, 89.9],
            AntRequired: "工作俯仰角"
        },
        st_r_eax1:
        {
            required: true,
            number: true,
            range: [-89.9, 89.9]
        },
        at_size:
        {
            regexVal: [/^((?!0\d)\d+(\.\d+)?|((?!0\d)\d+(\.\d+)?\*){1,2}?(?!0\d)\d+(\.\d+)?)$/, '请输入正确格式,如3.2*3*4.4或大于等于0的数字,长度不可以超过20'],
            maxLengthB: 20
        },
        at_size_required:
        {
            required: true,
            regexVal: [/^((?!0\d)\d+(\.\d+)?|((?!0\d)\d+(\.\d+)?\*){1,2}?(?!0\d)\d+(\.\d+)?)$/, '请输入正确格式,如3.2*3*4.4或大于等于0的数字,长度不可以超过20'],
            maxLengthB: 20
        },
        feed_length:
        {
            number: true,
            range: [0, 999.9]
        },
        ant_pole:
        {
            maxLengthB: 8
        },

        at_sum:
        {
            number: true,
            range: [0, 999]
        },
        feed_model:
        {
            maxLengthB: 40
        },
        feed_menu:
        {
            maxLengthB: 80
        },
        //台站申请表的相关检验
        net_use:
        {
            maxLengthB: 80
        },
        org_code:
        {
            required: true,
            regexVal: [/^[A-Z0-9]{8}[-]{0,1}\w$/, '设台单位组织机构代码有误，必须为数字或大写字母组成，如：99999999-9']
        },
        org_post:
        {
            required: true,
            regexVal: [/^[0-9]{6}$/, '邮政编码，必须为数字组成，如：440000'],
            EquLength: 6
        },
        org_account_name:
        {
            maxLengthB: 40
        },
        org_link_person:
        {
            required: true,
            maxLengthB: 40
        },
        org_phone:
        {
            required: true
        },
        org_mob_phone:
        {
            // EquLength: 11
            regexVal: [/^0?1[358]\d{9}$/, '请输入正确的手机号码格式,如13800138000'],
            maxLengthB: 12
        },
        org_fax:
        {
            regexVal: [/^[0-9 \/ \r - - +]+$/, '请输入正确的传真格式，如0755-12345678'],
            maxLengthB: 40
        },
        org_mail:
        {
            maxLengthB: 80,
            email: true
        },
        /* 业余台站申请表 */
        obj_tdi:
        {
            maxLengthB: 20
        },
        app_pa_email:
        {
            required: true,
            maxLengthB: 80,
            email: true
        },
        app_pa_org_phone:
        {
            required: true,
            //regexVal: [/^((0\d{2,3})-)(\d{7,8})?$/, '请输入正确的电话格式,如0755-12345678'],
            regexVal: [/^[0-9 \/ \r - - +]+$/, '请输入正确的电话格式，如0755-12345678'],
            maxLengthB: 40
        },
        app_pa_home_phone:
        {
            required: true,
            //regexVal: [/^((0\d{2,3})-)(\d{7,8})?$/, '请输入正确的电话格式,如0755-12345678'],
            regexVal: [/^[0-9 \/ \r - - +]+$/, '请输入正确的电话格式,如0755-12345678'],
            maxLengthB: 40
        },
        app_pa_mobile:
        {
            required: true,
            regexVal: [/^0?1[3578]\d{9}$/, '请输入正确的手机号码格式,如13800138000'],
            maxLengthB: 12
        },
        app_pa_other_info:
        {
            maxLengthB: 512
        },
        app_pa_entity_type:
        {
            required: true,
            maxLengthB: 1
        },
        app_pa_stat_addr:
        {
            required: true,
            maxLengthB: 80
        },
        app_pa_ope_degree:
        {
            required: true,
            maxLengthB: 20
        },
        app_pa_ope_code:
        {
            required: true,
            maxLengthB: 20
        },
        app_pa_call_sign:
        {
            required: true,
            maxLengthB: 10
        },
        app_pa_name:
        {
            required: true,
            maxLengthB: 40
        },
        app_pa_nation:
        {
            required: true,
            maxLengthB: 40
        },
        app_pa_degree:
        {
            required: true,
            maxLengthB: 20
        },
        app_pa_id_card:
        {
            IDCardMath: true,
            IDCardByBirthday: true,
            required: true,
            maxLengthB: 20
        },
        app_pa_birthday:
        {
            required: true,
            dateYMD: true
        },
        app_pa_serv_org:
        {
            required: true,
            maxLengthB: 80
        },
        app_pa_serv_post:
        {
            required: true,
            regexVal: [/^[0-9]{6}$/, '邮政编码，必须为数字组成，如：440000'],
            EquLength: 6
        },
        app_pa_live_addr:
        {
            required: true,
            maxLengthB: 80
        },
        app_pa_live_post:
        {
            required: true,
            regexVal: [/^[0-9]{6}$/, '邮政编码，必须为数字组成，如：440000'],
            EquLength: 6
        },
        app_pa_contact_addr:
        {
            required: true,
            maxLengthB: 80
        },
        app_pa_contact_post:
        {
            required: true,
            regexVal: [/^[0-9]{6}$/, '邮政编码，必须为数字组成，如：440000'],
            EquLength: 6
        },
        app_clubs_name:
        {
            required: true,
            maxLengthB: 80
        },
        app_clubs_sup_org:
        {
            required: true,
            maxLengthB: 80
        },
        app_clubs_member_code:
        {
            required: true,
            maxLengthB: 20
        },
        /*add by zwb 2013-6-17 begin*/
        app_pa_stat_type_mark:
        {
            maxLengthB: 40
        },
        app_stat_type:
        {
            required: true
        },
        app_pa_org_department: /*登记机关*/
        {
        required: true,
        maxLengthB: 80
    },

    app_pa_org_code: /*机构代码*/
        {
        required: true,
        maxLengthB: 20
    },
    app_pa_stat_name: /*台站名称*/
        {
        maxLengthB: 50
    },
    special_explain: /*特殊（请注明）*/
        {
        maxLengthB: 50
    },
    app_pa_user_name: /*用户名*/
        {
        required: true,
        maxLengthB: 50
    },
    app_pa_ope_license: /*操作等级编号*/
        {
        required: true,
        maxLengthB: 40
    },
    app_pa_detail_addr: /*详细地址*/
       {
       required: true,
       maxLengthB: 100
   },
    app_pa_statdetail_addr: /*设台详细地址*/
       {
       required: true,
       maxLengthB: 50
   },
    app_pa_special_note: /*特殊台站说明*/
   {
   maxLengthB: 100

},
    app_pa_old_call: /*原指配呼号--业余无线电台设置（变更）申请表*/
   {
   required: true,
   maxLengthB: 10

},
    app_pa_old_call_Tech: /*原指配呼号--技术资料表*/
   {
   maxLengthB: 10

},
    app_pa_unit:
        {
            required: true,
            maxLengthB: 100
        },
    app_pa_service_unit:
        {
            required: true,
            maxLengthB: 100
        },
    app_pa_post:
        {
            required: true,
            number: true,
            maxlength: 6,
            regexVal: [/^[0-9]{6}$/, '邮政编码，必须为数字组成，如：440000'],
            EquLength: 6
        },
    app_pa_mobilePhone:
        {
            regexVal: [/^0?1[358]\d{9}$/, '请输入正确的手机号码格式,如13800138000'],
            maxLengthB: 12
        },
    app_pa_hone: {
        regexVal: [/^[0-9 \/ \r - - +]+$/, '请输入正确的电话格式,如0755-12345678'],
        maxLengthB: 40
    },
    app_code_pa:
        {
            regexVal: [/^[0-9]+$/, '请输入数字'],
            required: true,
            number: true
        },
    app_code_pa1:
        {
            regexVal: [/^[0-9]+$/, '请输入数字'],
            required: true,
            number: true
        },
    stat_tdi2:
        {
            regexVal: [/^[0-9]+$/, '请输入数字'],
            required: true,
            number: true
        },
    app_pa_stat_at:
        {
            number: true,
            range: [-199, 8999]
        },
    app_pa_equ_model: /*设备型号*/
        {
        required: true,
        maxLengthB: 40
    },
    app_pa_equ_menu: /*生产厂家*/
        {
        maxLengthB: 100
    },
    app_pa_equ_auth: /*型号核准代码*/
        {
        required: true,
        maxLengthB: 40
    },
    app_pa_equ_code: /*出厂编号*/
        {
        required: true,
        maxLengthB: 40
    },
    app_pa_equ_power: //设备功率
        {
        required: true,
        number: true,
        range: [0, 9999999.999]

    },
    app_pa_uppower: //中继台上行频率或者中继台下行频率
        {
        required: true,
        number: true,
        range: [0, 9999999.9999999]
    },

    app_pa_dpower: //中继台下行功率，
        {
        required: true,
        number: true,
        range: [0, 9999999.999]
    },
    app_regis_QQ: //qq号码
        {
        required: true,
        number: true
    },
    app_regis_DetailsAddr: //详细地址：邮寄地址街道门牌
        {
        required: true,
        maxLengthB: 200
    },
    app_regis_MobileHomePhone: {
        required: true,
        regexVal: [/^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/, '请输入正确的电话号或手机号，格式：如0755-12345678，13888888888'],
        maxLengthB: 40
    },
    app_regis_OperaCerNo: //通过考试地点（旧版操作证号）
        {
        required: true,
        maxLengthB: 20
    },
    app_pa_issueDate:
        {
            required: true,
            dateYMD: true
        },
    /*end*/

    /* 业余技术申请表3*/
    ant_angle:
        {
            number: true,
            range: [0, 360]
        },
    se_angle:
        {
            number: true,
            range: [-89.9, 89.9]
        },
    ant_angle_v:
        {
            number: true,
            range: [0, 360]
        },
    ant_angle_h:
        {
            number: true,
            range: [0, 360]
        },
    ant_angle_required:
        {
            required: true,
            number: true,
            range: [0, 360]
        },
    ant_angle_required_Two:
        {
            required: true,
            ant_angle_RequiredND: true
        },
    ant_angle_required_Three:
        {
            required: false,
            ant_angle_RequiredND: true
        },
    obj_tdi_h:
        {
            EquLength: 4,
            number: true
        },
    equ_pow_kw_h:
        {
            number: true,
            range: [0, 9990]
        },
    equ_pow_kw_h_required:
        {
            required: true,
            number: true,
            range: [0, 9990]
        },
    se_dis:
        {
            number: true,
            range: [0, 999.999]
        },
    equ_pow_w_h:
        {
            number: true,
            range: [0, 9990000]
        },
    equ_pow_w_required:
        {
            required: true,
            number: true,
            range: [0, 9990000]
        },
    equ_pow_dbm_h:
        {
            number: true,
            range: [-40, 99.999]
        },
    equ_pow_dbm_e:
        {
            required: true,
            number: true,
            range: [-40, 99.999]
        },
    equ_pow_dbw_h:
        {
            number: true,
            range: [-70, 69.9]
        },
    equ_pow_dbuv_h:
        {
            number: true,
            range: [56.99, 206.99]
        },
    EQU_Model_h:
        {
            maxLengthB: 40
        },
    EQU_cl_h:
        {
            maxLengthB: 20
        },
    et_equ_no:
        {
            required: true,
            number: true,
            maxLengthB: 5
        },
    equ_pow_s:
        {
            required: true,
            number: true,
            range: [0, 9999999.9]
        },
    st_code_s:
        {
            maxLengthB: 20
        },
    st_code_s_required:
        {
            required: true,
            maxLengthB: 20
        },
    ship_name:
        {
            //required: true,
            maxLengthB: 80
        },
    et_equ_code:
        {
            maxLengthB: 10
        },
    et_equ_code_s:
        {
            required: true,
            maxLengthB: 10
        },
    stat_lg2_r:
        {
            number: true,
            range: [0, 59]
        },
    stat_lg3_r:
        {
            number: true,
            range: [0, 59.99]
        },
    stat_la2_r:
        {
            number: true,
            range: [0, 59]
        },
    stat_la3_r:
        {
            number: true,
            range: [0, 59.99]
        },
    et_equ_ns_r:
        {
            number: true,
            range: [0, 9999999.9]
        },
    et_equ_ns_end_r:
        {
            number: true,
            range: [0, 9999999.9],
            EqualRequired: "时间数"
        },
    et_equ_pwid:
        {
            number: true,
            range: [0, 9999999.999]
        },
    et_equ_pwidEnd:
        {
            number: true,
            range: [0, 9999999.9]
        },
    et_equ_pr:
        {
            number: true,
            range: [0, 9999999.9]
        },
    et_equ_pf:
        {
            number: true,
            range: [0, 9999999.9]
        },
    et_equ_sen:
        {
            number: true,
            range: [-9999.9, 9999.9]
        },
    at_size_r:
        {
            regexVal: [/^((?!0\d)\d+(\.\d+)?|((?!0\d)\d+(\.\d+)?\*){1,2}?(?!0\d)\d+(\.\d+)?)$/, '请输入正确格式,如3.2*3*4.4或大于等于0的数字,长度不可以超过20'],
            maxLengthB: 20
        },
    at_bwid:
        {
            number: true,
            range: [0, 999.9]
        },
    at_lel:
        {
            number: true,
            range: [0, 999999.9]
        },
    at_sspeed:
        {
            number: true,
            range: [0, 999999.9]
        },
    at_rnt:
        {
            number: true,
            range: [0, 999999.9]
        },
    at_qua:
        {
            number: true,
            range: [0, 9999.9]
        },
    checkSys_Code:
        {
            ComboxRequired: "系统代码"
        },
    checkNET_SVN:
        {
            ComboxRequired: "通信业务/系统类型"
        },
    checkNET_TS:
        {
            maxLengthB: 8
            //ComboxRequired: "技术体制"
        },
    checkNET_TS_Required:
        {
            ComboxRequired: "技术体制"
        },
    checkArea2:
        {
            ComboxRequired: "地区名称"
        },
    checkArea3:
        {
            ComboxRequired: "区县名称"
        },
    checkSex:
        {
            ComboxRequired: "性别"
        },
    checkNation:
        {
            ComboxRequired: "民族"
        },
    checkDegree:
        {
            ComboxRequired: "文化程度"
        },
    checkRequired:
        {
            required: true
        },
    h_Obj_Type:
        {
            ComboxHObj: true
        },
    comboxRequired: {
        ComboxRequired: "下拉"
    }
});
})(jQuery);