/*----------------------------------------------------------------
// Copyright (C) 2009 深圳市嵘兴实业发展有限公司
// 版权所有。 

// 文件功能描述：用于给各个页面进行文字提示
//
// 注意： 该类中用下划线开头的成员被作为私有成员对待，请不要在调
//        用方直接对该类的私有成员进行调用
//依赖文件：　Jquery.js    jquery.qtip-1.0.0-rc3.min.js  toolTipBasic.js FormTip(X).js
// 创建标识： wangzh 20111128

//----------------------------------------------------------------*/

jqQtipHelper = {
    _defaultOptions: {
        position: {
            corner: {
                target: "topRight",
                tooptip: "bottomRight"
            }
        },
        style: {
            name: "light",
            'font-size': '12px',
            'line-height': '18px',
            border: {
                width: 1,
                radius: 1,
                color: '#ADADAD'
            }
        },
        show: {
            solo: true,
            effect: { length: 100, type: 'slide' }
        }
    },
    QtipBasicList: [],
    QtipDataGridList: [],
    _initQtipData: function () {
        /*  FormTip(X) 和 tooltipBasic.js 数据合并*/
        var tThis = this;
        this.QtipBasicList = FormTip.QtipBasicList;
        for (var j = 0; j < TipBasic.TipBasicList.length; j++) {
            var basicList = $.grep(FormTip.QtipBasicList, function (item, index) {
                if (item != undefined && item.selector == TipBasic.TipBasicList[j].selector) {
                    return true;
                }
            });
            if (basicList != null && basicList.length > 0) {
                if (basicList[0].content) {
                    TipBasic.TipBasicList[j].content = basicList[0].content;
                }
                $.extend(true, basicList[0], TipBasic.TipBasicList[j], basicList[0]);
            }
            else {
                tThis.QtipBasicList.push(TipBasic.TipBasicList[j]);
            }
        }
        this.QtipDataGridList = FormTip.QtipDataGridList;
        if (typeof (this.QtipDataGridList) == "undefined" || this.QtipDataGridList.length == 0) {
            this.QtipDataGridList = [];
            return;
        }
        for (var i = 0; i < TipBasic.TipDataGridFieldList.length; i++) {
            var basicList = $.grep(FormTip.QtipDataGridList.contentList, function (item, index) {
                if (item.field == TipBasic.TipDataGridFieldList[i].field) {
                    return true;
                }
            });
            if (basicList != null && basicList.length > 0) {
                if (basicList[0].content) {
                    TipBasic.TipDataGridFieldList[i].content = basicList[0].content;
                }
                $.extend(true, basicList[0], TipBasic.TipDataGridFieldList[i], basicList[0]);
            }
            else {
                tThis.QtipDataGridList.contentList.push(TipBasic.TipDataGridFieldList[i]);
            }
        }

        //处理多个列提示信息是一样的，如频率
        var basicList1 = $.grep(tThis.QtipDataGridList.contentList, function (item, index) {
            if (item.field.indexOf(",") > 0) {
                return true;
            }
        });
        for (var i = 0; i < basicList1.length; i++) {
            var fields = basicList1[i].field.split(",");
            basicList1[i].field = fields[0];
            for (var t = 1; t < fields.length; t++) {
                var obj = $.extend(true, {}, obj, basicList1[i]);
                obj.field = fields[t];
                tThis.QtipDataGridList.contentList.push(obj);
            }
        }

    },
    _initQtipFreq: function (_option) {
        var option = $.extend(true, {}, this._defaultOptions, _option);
        var radioList = $("input[type='radio'][name]");
        var strIds = "";
        var list = $.grep(radioList, function (data, index) {
            if (data.name.indexOf("radio_FREQ_Type") != -1) {
                strIds += "#" + data.id + " + label,";
                return true;
            }
        });
        if (strIds.length > 0) {
            strIds = strIds.substring(0, strIds.length - 1);
            option.content = TipBasic.TipFreq;
            $(strIds).qtip(option);
        }
    },
    InitTooltip: function (_option) {
        var tThis = this;
        tThis._initQtipData();
        tThis._initQtipFreq(_option);
        var isChange = false;
        var option = $.extend(true, {}, this._defaultOptions, _option);
        $.each(tThis.QtipBasicList, function (index, item) {
            if (item != undefined) {
                if (item.hidden == false) {
                    return true;
                }
                var _id = item.selector;
                var _filter = "";
                if (typeof (item.type) != "undefined") {
                    if (item.type == "combo") {
                        _filter = ' + span > .combo-text';
                    } else if (item.type == "radio") {
                        _filter = ' + label';
                    }
                    isChange = true;
                }

                //多个ID时，用加#分开
                if (_id.indexOf(",") != -1) {
                    var ctlid = "";
                    var _ids = _id.split(",");
                    $.each(_ids, function (index, data) {
                        ctlid += data + _filter + ",";
                    });
                    ctlid = ctlid.substring(0, ctlid.length - 1);
                    _id = ctlid;
                }
                else {
                    _id = _id + _filter;
                }

                if (typeof (item.option) != "undefined") {
                    option = $.extend(true, {}, option, item.option);
                    isChange = true;
                }

                option.content = item.content;
                $(_id).qtip(option);

                if (isChange) {
                    isChange = false;
                    option = {};
                    option = $.extend(true, {}, tThis._defaultOptions, _option);
                }
            }
        });
        this.InitTooltipDataGrid(null, false);
    },
    /* 初始化表格提示信息
    target 需要提示的对象
    isReload 默认为false，是第一次加载数据还是重新初始化数据
    option 定义提示信息的格式
    */
    InitTooltipDataGrid: function (target, isReload, _option) {
        var tThis = this;
        var isChange = false;
        var option = $.extend(true, {}, this._defaultOptions, _option);
        var dataList = this.QtipDataGridList;
        if (typeof (dataList) == "undefined" || dataList.length == 0) {
            return;
        }
        if (target == null || (target) == "undefined") {
            target = dataList.selector;
        }
        var fieldXpr = "span[class='combox-text']";
        if (typeof (isReload) == "undefined") {
            fieldXpr = "span[class!='datagrid-sort-icon']";
        }

        var targets = target.split(",");
        $.each(targets, function (index, tar) {
            var curCols = $(tar).closest("tr").find("td[field]");
            $.each(curCols, function (colIndex, curCol) {
                var field = curCol.attributes["field"].value;
                var fieldTip = $.grep(tThis.QtipDataGridList.contentList, function (data, index) {
                    if (data.field.indexOf(field) >= 0) {
                        return true;
                    }
                });
                if (fieldTip != null && fieldTip.length > 0) {
                    //是否需要显示提示信息
                    if (fieldTip[0].hidden == false) {
                        return true;
                    }
                    var curSpan = $(curCol).find(fieldXpr);
                    if (curSpan.length == 0) {
                        curSpan = $(curCol).find("span[class!='datagrid-sort-icon']");
                    }
                    if (typeof (fieldTip[0].option) != "undefined") {
                        option = $.extend(true, {}, option, fieldTip[0].option);
                        isChange = true;

                    }

                    option.content = fieldTip[0].content;
                    $(curSpan).qtip(option);
                    if (isChange) {
                        isChange = false;
                        option = {};
                        option = $.extend(true, {}, tThis._defaultOptions, _option);
                    }
                }
            });
        });
    },
    InitToolTabs: function (target, _option) {
        if (_option == undefined) return;
        if (target == undefined) return;

        var option = $.extend(true, {}, this._defaultOptions, _option);
        option.position.corner = {
            target: 'leftMiddle',
            tooltip: 'leftMiddle'
        };
        $(target + " div span > .icon-add ").qtip(option);
    }
}