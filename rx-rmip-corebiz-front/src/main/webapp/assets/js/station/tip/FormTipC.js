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
            selector: "#txtAPP_Code",
            option: {
                style:
                {
                    width: 300
                },
                position: {
                    adjust: {
                        x: -10
                    }
                }
            }
        },
        {
            selector: "#spanTitle",
            content: "本表用于以蜂窝方式组网的无线电通信系统基站，包括集群通信系统、公众移动通信系统（GSM、CDMA、 TD-SCDMA）和无线接入（移动）系统（如PHS、SCDMA等）等，使用全向天线的基站也填写此表。凡新设无线电台（站）或变更已设台（站）站址、频率或功率等核定项目时均应填写此表"
        },
        {
            selector: "#txtSTAT_Name",
            content: "填写该基站的具体名称"
        },
        {
            selector: "#txtSTAT_ADDR",
            content: "填写所设置无线电台（站）所在地的详细地址。本栏也可填写基站附近有代表性的地名或建筑物",
            option: {
                style:
                {
                    width: "auto"
                },
                position: {
                    adjust: {
                        x: -300,
                        y:20
                    }
                }
            }
        },
         {
             selector: "#Radio5,#Radio6,#Radio7,#Radio8,#Radio9,#Radio10",
             content: "系指广播电台的分类，分为“□声音  □电视  □多媒体”和“□对外 □实验 □其他”，两者各选其一,并在相应的“□”内填写“√”号",
             type: 'radio'
         },
        {
            selector: "#Radio11,#Radio12,#Radio13,#Radio14",
            content: "可选择填写并在相应的“□”内填写“√”号。当在校园里设置广播电台时，本栏填写“县级及以下”选项。",
            type: 'radio'
        },
        {
            selector: "#txtST_Time_B,#txtST_Time_E",
            content: "填写该电台每天的开始工作时间和每天的终止工作时间"
        },
        {
            selector: "#Radio15",
            content: "如果全天发射，则填写24小时",
            type: 'radio'
        },
        {
            selector: "#txtST_B_Cover_Area",
            content: "系指经批准允许该广播电台所覆盖的区域，如国家、省市地区等"
        },
        {
            selector: "#txtSTAT_C_Sum",
            content: "填写本基站的扇区数量",
            option: {
                style:{
                    width:110
                },
                position: {
                    adjust: {
                        x: -90,
                        y: 20

                    }
                }
            }
        },
        {
            selector: "#txtSTAT_C_Code",
            content: "系指申请设台单位针对该基站的具体编号，由申请单位填写",
            option: {
                style: {
                    width: 117
                },
                position: {
                    adjust: {
                        x: -107,
                        y: 20

                    }
                }
            }
        },
        {
            selector: "#txtSt_Serv_R",
            content: "系指能满足用户接收质量要求的圆形服务区域的半径值，单位是km"
        },
        {
            selector: "#txtSTA_Equ_CCode",
            content: "按顺序填写基站的扇区编号，若为全向基站，则只须填写一个扇区的数据,扇区编号必须唯一"
        },
        {
            selector: "#txtAT_Csgm",
            content: "系指系统中区别扇区的标识码，由申请单位填写",
            option: {
                style:
                {
                    width: "auto"
                },
                position: {
                    adjust: {
                        x: -500
                    }
                }
            }
        },
        {
            selector: "#txtAT_ANG_E",
            content: "系指自正北起算沿顺时针方向的天线最大辐射方向的方位角",
            option: {
                position: {
                    adjust: {
                        x: -100
                    }
                }
            }
        },
        {
            selector: "#txtAt_Rang",
            content: "系指收天线的倾角"
        },
        {
            selector: "#txtAt_Eang",
            content: "系指发天线的倾角"
        },
        {
            selector: "#txtSTAT_Date_Start",
            content: "填写该站批准启用的日期",
            type: 'combo'
        }
    ],
    QtipDataGridList: {
        selector: "#table_Freqs,#tableEqu,#tableAnt",
        contentList: [
        {
            field: "et_equ_sum",
            content: "填写本扇区同型号设备的数量"
        },
        {
            field: "equ_pow",
            content: "系指基站发射机的标称输出功率值，单位是W或dBm",
            option: {
                position: {
                    adjust: {
                        x: -120,
                        y: 20
                    }
                }
            }
        },
        {
            field: "ant_type",
            content: "系指天馈线类型"
        },
        {
            field: "equ_menu",
            content: "系指设备生产厂家"
        },
        {
            field: "at_3dbe",
            content: "发射天线最大增益下降3dB时的角宽"
        },
        {
            field: "at_3dbr",
            content: "接收天线最大增益下降3dB时的角宽"
        },
        {
            field: "ant_egain",
            content: "天线在最大辐射方向的某一距离上产生一定场强所需要的输入功率与同一方向的相同距离上为获得相同场强而必须加到无损耗基准天线的功率之比"
        },
        {
            field: "ant_rgain",
            content: "天线在最大辐射方向的某一距离上产生一定场强所需要的输入功率与同一方向的相同距离上为获得相同场强而必须加到无损耗基准天线的功率之比"
        },
        {
            field: "ant_angle",
            content: "系指自真北起算(沿顺时针方向)的天线最大辐射方向的方位角"
        },
        {
            field: "ant_hight",
            option: {
                position: {
                    adjust: {
                        x: -130,
                        y: 20
                    }
                }
            }
        },
        {
            field: "feed_lose",
            option: {
                position: {
                    adjust: {
                        x: -250,
                        y: 20
                    }
                }
            }
        }
    ]

    }

}