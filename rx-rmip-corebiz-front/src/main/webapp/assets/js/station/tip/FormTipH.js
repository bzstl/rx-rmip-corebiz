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
            content: "本表用于除广播电台、船舶电台、航空器电台和营救电台之外的各类30MHz以下的无线电台（站）。凡新设无线电台（站）或变更已设台（站）站址、频率或功率等核定项目时均应填写此表"
        },
        {
            selector: "#txtSTAT_Name",
            content: "填写无线电台（站）的具体名称"
        },
        {
            selector: "#selSTAT_APP_Type",
            content: "系指所设置的无线电台（站）的类别",
            type: "combo",
            option: {
                position: {
                    adjust: {
                        x: -180,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txt_St_TimeB,#txt_St_TimeE",
            content: "填写该台（站）每天工作的起止时间，左侧填写每天的开始工作时间，在其右侧填写每天的终止工作时间",
            option: {
                position: {
                    adjust: {
                        x: -80,
                        y: -70
                    }
                }
            }
        }, {
            selector: "#rdStTime",
            content: "若是断续工作，则填写每天第一次工作的起始时间和最后一次工作的终止时间",
            type: "radio",
            option: {
                position: {
                    adjust: {
                        x: -120,
                        y: 20
                    }
                }
            }
        }, {
            selector: "#txtSTAT_ADDR",
            content: "填写所设置的无线电台（站）所在地的详细地址。本栏也可填写该站附近有代表性的地名"
        }, {
            selector: "#rdStat_Work_TypeS,#rdStat_Work_TypeH,#rdStat_Work_TypeD",
            content: "按照所设无线电台（站）实际工作方式在相应的“□”内填写“√”号",
            type: "radio",
            option: {
                style: {
                    width: 220
                },
                position: {
                    adjust: {
                        x: -120,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtANT_Model",
            content: "系指所用天线的型号规格"
        },
        {
            selector: "#txtFEED_Model",
            content: "系指所用馈线线的型号规格"
        },
        {
            selector: "#txtANT_MENU",
            content: "系指天线的生产厂家"
        },
        {
            selector: "#txtFEED_MENU",
            content: "系指馈线的生产厂家",
            option: {
                position: {
                    corner:{
                        target:"bottomRight"
                    },
                    adjust: {
                        x: -110,
                        y: 8
                    }
                }
            }
        }, {
            selector: "#txtANT_Gain",
            content: "系指最大辐射方向的各向同性增益，单位是dBi",
            option: {
                position: {
                    adjust: {
                        x: -50,
                        y: -53
                    }
                }
            }
        }, {
            selector: "#txtANT_Angle",
            content: "系指自正北（沿顺时针方向）起算的天线最大辐射方向的方位角，全向请选择“ND”。"
        }, {
            selector: "#txt_AT_SE_B,#txt_AT_SE_E",
            content: "系指能满足工作要求的最小和最大仰角，精确到小数点后一位",
            option: {
                position: {
                    adjust: {
                        x: -120,
                        y: -53
                    }
                }
            }
        }, {
            selector: "#txtAT_H_VPIC",
            content: "填写附件号，附件是用户提供的天线方向图和垂直方向图，可以是扫描的图片，也可以提供电子版的数据"
        },
         {
             selector: "#txtAT_H_HPIC",
             content: "填写附件号，附件是用户提供的天线方向图和垂直方向图，可以是扫描的图片，也可以提供电子版的数据",
             option: {
                 position: {
                     adjust: {
                         x: -250,
                         y: 20
                     }
                 }
             }
         },
        {
            selector: "#txtFEED_Lose",
            option: {

                position: {
                    adjust: {
                        y: -88
                    },
                    corner: {
                        target: 'topMiddle',
                        tooltip: "topMiddle"
                    }

                }
            }
        },
        {
            selector: "#selANT_Type",
            content: "系指天线的型号规格",
            type: "combo"
        },
        {
            selector: "#td_tip6",
            content: "应根据通信对象的具体情况按以下两种方式选择填写： <br/>（1）通信对象在境外的，在“通信对象的无线电台（站）申请表编号或名称”栏内填写该通信对象的区域名称，“通信对象的无线电台（站）技术资料申报表号”栏不填；<br/>（2）通信对象在境内的，在“通信对象的无线电台（站）申请表编号或名称”栏内填写通信对象的无线电台（站）设置申请表编号或名称，并在“通信对象的无线电台（站）技术资料申报表号”栏依次填写出相关的技术资料申报表号",
            option: {
                style: {
                    width: 400
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
            selector: "#txtSTAT_Date_Start",
            content: "系该台（站）拟启用频率的起始日期",
            type: 'combo',
            option: {
                position: {
                    adjust: {
                        x: -65,
                        y: 22
                    }
                }
            }
        }
    ],
    QtipDataGridList: {
        selector: "#tableEqus,#tableFreqs",
        contentList: [
         {
             field: "ft_freq_unit_type",
             hidden: false
         },
         {
             field: "equ_model",
             content: "系指发信机或收发信机的设备型号"
         },
         {
             field: "equ_menu",
             content: "系指发信机或收信机的生产厂家"
         }, {
             field: "equ_pow",
             content: "系指发射机在通信过程中实际输出的功率值"
         }, {
             field: "et_af_type",
             content: "如果“自动选频”项选择“是”，则应在“发射频率”和“接收频率”栏填写频带值，在上一行空格内填写频带的下限频率，在下一行空格内填写频带的上限频率；如果“自动选频”项选择“否”，则应在“发射频率”和“接收频率”栏依次填写所用的中心频率。属于备用频率应在频率后加注“（B）”",
             option: {
                 position: {
                     adjust: {
                         x: -300,
                         y: 20
                     }
                 }
             }

         }, {
             field: "ft_freq_timeb,ft_freq_timee",
             content: "系指某一具体频点的使用时间，应与频率一一对应。用24小时制，例如：20:00 "
         }, {
             field: "freq_e_band",
             content: "系指对给定的发射类别而言，在规定条件下恰能足以保证传输信息，并能满足所要求的速率和质量的频带宽度。此栏可填写信道间隔或带宽"
         }, {
             field: "ft_freq_hcl",
             content: "由用户根据无线电管理机构核配的无线电台（站）呼号填写。",
             option: {
                 position: {
                     adjust: {
                         x: -280,
                         y: 30
                     }
                 }
             }
         }






    ]

    }

}