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
                    position: {
                        adjust: {
                            x: -50
                        }
                    }
                }
            },
        {
            selector: "#spanTitle",
            content: "本表用于除30MHz以下无线电台（站）、陆地移动电台、地面固定业务台（站）、地球站、广播电台、船舶电台、航空器电台、雷达站、蜂窝无线电通信基站、直放站、移动地球站和空间电台之外的各类无线电台（站）。航空电台、海岸电台、港口电台、非蜂窝组网的陆地移动业务基站（含寻呼基站）和射电天文业务电台等也应填写此表。凡新设无线电台（站）或变更已设台（站）站址、频率或功率等核定项目时均应填写此表"
        },
        {
            selector: "#txtSTAT_Name",
            content: "填写无线电台（站）的具体名称，最多不超过40个汉字"
        },
        {
            selector: "#txtST_SERV_R",
            content: "系指能满足用户接收质量要求的圆形服务区域的半径值，单位是km"
        }, 
        {
            selector: "#txtSTAT_ADDR",
            content: "填写所设置无线电台（站）所在地的详细地址。本栏也可填写台站附近有代表性的地名或建筑物"
        },
        {
            selector: "#txtSTAT_Work",
            content: "系指所设置的无线电台（站）的工作方式",
            type: "combo"
        }, 
        {
            selector: "#txtANT_Gain,#txtANT_Gain1",
            content: "填写最大辐射方向上的各向同性增益(Gi)或相对于半波振子的增益值(Gd)值。单位是dBi或dBd。各向同性增益（Gi）和相对于半波振子的增益（Gd）之间的换算公式是：Gi = Gd + 2.1（dBi）"
        },
         {
             selector: "#txtANT_Type,#txtANT_Type1",
             content: "系指天线类型代码",
             type: "combo"
         },
        {
            selector: "#txtANT_Model,#txtANT_Model1",
            content: "系指所用天线的型号规格"
        },
        {
            selector: "#txtFEED_Model,#txtFEED_Model1",
            content: "系指所用馈线的型号规格"
        },
        {
            selector: "#txtANT_Angle,#txtANT_Angle1",
            content: "系指自正北（沿顺时针方向）起算的天线最大辐射方向的方位角，全向请选择“ND”。",
            option: {
                position: {
                    adjust: {
                        x: -50,y:20
                    }
                },
                style: {
                    width: 200
                }
            }
        },
        {
            selector: "#txtFEED_Lose1",
            content:"系指天线输入（出）端口至接收机（发射机）端口之间馈线系统的总损耗（包括双工器、合（分）路器、馈线等）。单位是dB，精确到小数点后一位",
            option: {
                position: {
                    adjust: {
                        x: -70,
                        y:20
                    }
                },
                style: {
                    width: 230
                }
            }
        },
        {
            selector: "#txtFEED_Lose",
            option: {
                position: {
                    adjust: {
                        x: -50,
                        y: 20
                    }
                }, style: {
                    width: 200
                }
            }
        },
        {
            selector: "#txtFEED_MENU,#txtFEED_MENU1",
            content: "系指馈线的生产厂家",
            option: {
                style:{
                    width:120
                },
                position: {
                    adjust: {
                        x: -70,
                        y: 20
                    }
                }
            }
        }, 
        {
            selector: "#txtANT_Hight1",
            content: "系指天线馈电点至地面的高度（包括架设天线的建筑物的高度），精确到小数点后一位"
        },
         {
            selector: "#txtANT_MENU1",
            content: "系指发信机或收发信机的生产厂家",
            option: {
                style: {
                    width: 120
                },
                position: {
                    adjust: {
                        x: -85,
                        y: 20
                    }
                }
            }
        },

        {
            selector: "#txtANT_MENU",
            option: {
                style: {
                    width: 120
                },
                position: {
                    adjust: {
                        x: -85,
                        y: 20
                    }
                }
            }
        },
         {
             selector: "#txt_Equ_sum",
             option: {
                 style: {
                     width: 195
                 },
                 position: {
                     adjust: {
                         x: -130,
                         y: -50
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
        selector: "#table_Freqs,#table_Equs",
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
                        x:-300
                     }
                 }
             }

         }, {
             field: "ft_freq_timeb,ft_freq_timee",
             content: "系指某一具体频点的使用时间，应与频率一一对应。例如填写“01-18”表示该频率的工作时段为1点至18点"
         }, {
             field: "freq_e_band",
             content: "系指对给定的发射类别而言，在规定条件下恰能足以保证传输信息，并能满足所要求的速率和质量的频带宽度。此栏可填写信道间隔或带宽"
         }, {
             field: "ft_freq_hcl",
             content: "由用户根据无线电管理机构核配的无线电台（站）呼号填写。",
             option: {
                 position: {
                     adjust: {
                         x: -280
                     }
                 }
             }
         }
    ]

     }
 }