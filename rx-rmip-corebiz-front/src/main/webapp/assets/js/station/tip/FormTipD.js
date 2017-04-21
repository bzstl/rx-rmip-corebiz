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
            content: "本表用于各类室外无线通信直放站，填写移频直放站时需提供频率使用批准文件，一个直放站填一张表。凡新设无线电台（站）或变更已设台（站）站址、频率或功率等核定项目时均应填写此表。"
        },
        {
            selector: "#txtSTAT_Name",
            content: "填写直放站的具体名称，最多不超过40个汉字",
            option: {
                position: {
                    adjust: {
                        x: -150,
                        y:20
                    }
                }
            }
        },
        {
            selector: "#txtSTAT_ADDR",
            content: "填写所设置直放站所在地的详细地址。本栏也可填写基站附近有代表性的地名或建筑物"
        },
         {
             selector: "#radio8,#radio9",
             content: "系指直放站的技术类型，在“宽带”或“窄带“栏相应的“□”内填写“√”号",
             type: 'radio'
         },
        {
            selector: "#Radio11,#Radio12,#Radio13,#Radio14",
            content: "可选择填写并在相应的“□”内填写“√”号。当在校园里设置广播电台时，本栏填写“县级及以下”选项。",
            type: 'radio'
        },
        {
            selector: "#txtSt_Serv_R",
            content: "系指该直放站能满足用户接收质量要求的圆形服务区域的半径值，单位是m，精确到小数点后一位"
        }, 
        {
            selector: "#txtFREQ_E_Band",
            content: "系指每信道的带宽值，单位是MHz或kHz，在相应的“□”内填写“√”号"
        },
        {
            selector: "#txtST_D_TEC_Type",
            content: "系指拟设的直放站所属的无线电通信系统或网络的技术体制，例如GSM、WCDMA等",
            //type: "combo",
            option: {
                style:{
                    width:210
                },
                position: {
                    adjust: {
                        x: -187,
                        y: 22
                    }
                }
            }
        },
        {
            selector: "#txtSTAT_C_Code",
            content: "系指申请设台单位针对该基站的具体编号，由申请单位填写",
            option: {
                position: {
                    adjust: {
                        x: -250

                    }
                }
            }
        },

        {
            selector: "#txtSTAT_Date_Start",
            option: {
                position: {
                    adjust: {
                        x: -80,
                        y: 20

                    }
                }
            }
        }
    ],
    QtipDataGridList: {
        selector: "#table_Freqs,#tableAnts",
        contentList: [
        {
            field: "freq_uc,freq_lc,freq_efb,freq_efe,freq_rfb,freq_rfe",
            content: "上行方向填写直放站对基站发射和接收的中心频率。下行方向填写直放站对手机终端发射和接收的中心频率"
        },         
        {
            field: "ant_menu",
            content: "填写天线的生产厂家",
            option: {
                style: {
                    width: "auto"
                }
            }
        },
        {
            field: "ant_gain",
            content: "是天线在最大辐射方向的某一距离上产生一定场强所需要的输入功率与同一方向的相同距离上为获得相同场强而必须加到无损耗基准天线的功率之比"
        },
         {
            field: "at_ang_b",
            content: "填写自正北(沿顺时针方向)起算的天线最大辐射方向的方位角"
        },
        {
            field: "et_equ_upow",
            content: "系指上行发射机每信道的标称输出功率值，单位是W或dBm，精确到小数点后一位"
        },
        {
            field: "et_equ_dpow",
            content: "系指下行发射机每信道的标称输出功率值，单位是W或dBm，精确到小数点后一位"
        }
    ]

    }

}