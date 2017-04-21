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
            content: "本表用于申报各类航空器上所设置的全部制式无线电设备（包括航空器电台、营救器发信机、卫星航空移动业务移动地球站、无线电导航设备等），但非制式电台不填写此表。凡新配备无线电设备或变更已有设备的频率或功率等核定项目时均应填写此表",
            option: {
                style:
                {
                    width: 275,
                    'font-size': '14px'
                }
            }
        },
        {
            selector: "#txtST_A_Model",
            content: "系指航空器的具体型号。由不超过四位的数字、字母组成，代表飞机的制造厂商、型号等",
            option: {
                position:
                {
                    adjust: {
                        x: 23
                    }
                }
            }
        },
        {
            selector: "#txtST_A_NRM",
            content: "系指航空器所属国籍的简称及登记注册号码",
            option: {
                position: {
                    adjust: {
                        x: -135,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#selST_A_Type",
            content: "请选择航空类型",
            type: "combo"
        },
        {
            selector: "#txtST_A_Call_OI",
            content: "请填写呼号或其他标识"
        }, {
            selector: "#Radio5,#Radio6",
            content: "系指飞行器在空中飞行是否依靠地标导航（公路、铁路、河流等线状地标；山峰、灯塔、公路交汇点等点状地标；湖泊、城镇等面状地标",
            type: 'radio'
        },
        {
            selector: "#txtST_A_ST",
            content: "系指飞机适航证上所规定的该型飞机在起飞时所许可的最大重量。固定翼飞机必须在“吨位”栏内填写具体吨位值，具体吨位值要求精确到小数点后一位",
            option: {
                style: {
                    width: 180
                },
                position: {
                    adjust: {
                        x: -130,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtSTAT_Date_Start",
            content: "系指该电台拟启用频率的起始日期",
            type: 'combo'
        },
        {
            selector: "#Radio1,#Radio2",
            content: "系指航空器电台的呼号识别的一种方式",
            type: 'radio'
        },
        {
            selector: "#txtST_A_SGN",
            content: "系指航空器识别码"
        },
        {
            selector: "#td_tip3",
            content: "系指为营救目的而设置在任何营救器上的移动电台",
            option: {
                style: {
                    width: "auto"
                },
                position: {
                    target: 'mouse',
                    adjust: {
                        screen: true
                    }
                }
            }
        },
        {
            selector: "#td_tip4",
            content: "系指雷达、自动定向机、测距机、无线电高度表等无线电设备",
            option: {
                style: {
                    width: "auto"
                },
                position: {
                    target: 'mouse',
                    adjust: {
                        screen: true
                    }
                }
            }
        }
    ],
    QtipDataGridList: {
        selector: "#table_Equ1,#table_Equ2,#table_Equ3",
        contentList: [
        {
            field: "et_equ_name",
            content: "系指发信机设备的名称，包括HF收发信机、VHF收发信机等，由用户填写。如果设备名称为航空器地球站，则仅指航空器上制式电台。后安装的地球站不填此表",
            option: {
                position: {
                    adjust: {
                        x: 5
                    }
                }
            }
        },

        {
            field: "et_equ_esgn",
            content: "填写无线电发射的发射特性，由九位字符组成。其前四位字符表示必要带宽，第五至第七位字符表示发射类别的基本特性，第八、第九位字符表示发射类别的附加特性（见GB12046-89规定）。"
        },
        {
            field: "et_equ_atype",
            content: "请选择天线类型"
        },
        {
            field: "et_equ_fntval",
            content: "系指设备的每信道间隔"
        },
        {
            field: "equ_pow",
            content: "系指发信机的标称输出功率值，精确到小数点后三位"
        },
        {
            field: "et_equ_epos",
            content: "系指无线电台安装的具体位置。有机翼、机身、动力装置、起落装置等",
            option: {
                position: {
                    adjust: {
                        x: -125,
                        y: 20
                    }
                }
            }
        },
        {
            field: "et_equ_apos",
            content: "系指天线安装的具体位置",
            option: {
                position: {
                    adjust: {
                        x: -118,
                        y: 20
                    }
                }
            }
        },
        {
            field: "et_equ_sum",
            content: "系指同次申请填在该表上的同类设备（包括备用设备）的总数量",
            option: {
                position: {
                    adjust: {
                        x: -218,
                        y: 20
                    }
                }
            }
        },
        {
            field: "et_equ_euse",
            content: "系指能保证“营救器发射机”正常工作提供电力的时间",
            option: {
                style: {
                    width: 220
                }
            }
        }
    ]

    }

}