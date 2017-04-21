/*----------------------------------------------------------------
// Copyright (C) 2009 深圳市嵘兴实业发展有限公司
// 版权所有。 

// 文件功能描述：给FormA表的页面进行文字提示
//
// 注意： 该类中用下划线开头的成员被作为私有成员对待，请不要在调
//        用方直接对该类的私有成员进行调用
//依赖文件：　toolTipBasic.js

// 创建标识： wangzh 20111129
 
使用方法：
QtipBasicList 基本控件的用法
selector:为要提示的控件ID（多个ID用逗号隔开），或者符合查询元素的字符
content：需要提示的内容
hidden:true/false 如果设置为false，则不提示信息
option：是要对控件进行单独的样式控件
QtipDataGridList 表格控件的用法
selector:为要提示的控件ID（多个ID用逗号隔开），或者符合查询元素的字符
contentList：里面的对应的是字符名称和提示信息
//----------------------------------------------------------------*/
var FormTip = {
    QtipBasicList:
    [

        {
            selector: "#spanTitle",
            content: "本表用于申报各类船舶上所设置的全部制式无线电设备（包括船舶电台、营救器发信机、卫星水上移动业务移动地球站、无线电导航设备等），但非制式电台不填写此表。凡新设无线电台（站）或变更已设台（站）站址、频率或功率等核定项目时均应填写此表"
        },
        {
            selector: "#selShip_Type",
            content: "请选择船舶种类",
            type: "combo"
        },
        {
            selector: "#txtST_Call_Sign",
            content: "系指船舶电台的呼号，由无线电管理机构指配",
            option: {
                style: {
                    width: "auto"
                }
            }
        },
        {
            selector: "#txtST_S_MMSI",
            content: "系指水上移动业务识别号。由交通部无线电管理机构指配"
        }, {
            selector: "#txtST_S_CS",
            content: "系指船舶在交通部登记的号码",
            option: {
                position: {
                    adjust: {
                        x: -120,
                        y: 20
                    }
                }
            }
        }, {
            selector: "#txtST_S_PN",
            content: "系指船舶注册港的具体名称"
        }, {
            selector: "#txtST_Ship_Name",
            content: "系指船舶的名称"
        }
        , {
            selector: "#txtST_S_AAIC",
            content: "系指对外帐务结算机构识别代码。如目前国内有北京船舶通信导航公司代码CN03"
        },
        {
            selector: "#txtST_S_T,#txtST_S_P",
            content: "系指船舶的总吨位数或功率值。在“/”左侧填写总吨位，在其右侧填写功率值，单位是马力。凡是渔船只填写功率值，其他船舶均填写总吨位数，精确到小数点后一位",
            option: {
                position: {
                    adjust: {
                        x: -200,
                        y: -88
                    }
                }
            }
        },

        {
            selector: "#txtSTAT_Date_Start",
            content: "系指在船舶上所配备的无线电设备拟启用频率的起始日期",
            option: {
                style: {
                    width: 180
                },
                position: {
                    adjust: {
                        x: -95,
                        y: 22
                    }
                }
            }
        }
    ],
    QtipDataGridList: {
        selector: "#table_Equ1,#table_Equ2",
        contentList: [
        {
            field: "freq_uc,freq_efb,freq_efe",
            content: "填写频率或频带的下限频率至上限频率，单位是kHz或MHz",
            option: {
                style: {
                    width: 280
                },
                position: {
                    adjust: {
                        x: -100,
                        y: 20
                    }
                }
            }
        },
        {
            field: "ft_freq_unit_type",
            option: {
                style: {
                    width: 220
                },
                position: {
                    adjust: {
                        x: -200,
                        y: 20
                    }
                }
            }
        }, {
            field: "et_equ_name",
            content: "系指船舶上无线电设备的名称",
            option: {
                style: {
                    width: "auto"
                }
            }
        },
        {
            field: "et_equ_code",
            content: "系指由中华人民共和国海事局编制的认可代码"
        },
        {
            field: "et_equ_esgn",
            content: "填写无线电发射的发射特性，由九位字符组成。其前四位字符表示必要带宽，第五至第七位字符表示发射类别的基本特性，第八、第九位字符表示发射类别的附加特性。（见GB12046-89规定）"
        },
         {
             field: "equ_menu",
             content: "系指发信机或收信机的生产厂家"
         },
        {
            field: "equ_pow",
            content: "填写发射机的标称输出功率值，单位是W或kW",
            option: {
                position: {
                    adjust: {
                        x: -100,
                        y: 20
                    }
                }
            }
        }

    ]

    }

}