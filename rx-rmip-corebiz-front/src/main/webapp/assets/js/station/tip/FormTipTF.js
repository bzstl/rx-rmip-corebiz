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
            content: "本表主要用于工作频率在30MHz以上，通信对象都是固定的点对点、点对多点的无线电台（站）。例如微波接力系统、扩频通信系统、各种无线接入系统（不包括PHS）中具有固定通信对象（手持机、可移动电台除外）的台（站）。如果无线接入用户站不用办理设台手续，则其中心站填写表11。凡新设无线电台（站）或变更已设台（站）站址、频率或功率等核定项目时均应填写此表"
        },
        {
            selector: "#selSTAT_Type",
            content: "系指无线电台（站）的分类",
            type: "combo"
        },
        {
            selector: "#selEqu_PF",
            content: "请选择发射功率",
            type: "combo"
        },
        {
            selector: "#chkOnlyGet",
            content: "当为单收时，频率栏数据无需填写，只需填写“通信对象站代号”即可",
            type: "radio"
        },

        {
            selector: "#txtSTAT_Name",
            content: "填写地面固定台（站）的具体名称"
        },
         {
             selector: "#txtSt_Tf_Code",
             content: "系指该站在电路系统中的排序号，实际应用中应保证其在网络中的唯一性",
             option: {
                 style: {
                     width:180
                 },
                 position: {
                     adjust: {
                         x: -170,
                         y: 20
                     }
                 }
             }
         },
         {
             selector: "#txt_Equ_sum",
             option: {
                 style: {
                     width: 175
                 },
                 position: {
                     adjust: {
                         x: -93,
                         y: 20
                     }
                 }
             }
         },
         {
             selector: "#txtEQU_AUTH",
             option: {
                 style: {
                     width: 250
                 },
                 position: {
                     adjust: {
                         x: -230,
                         y: 20
                     }
                 }
             }
         }, 
         {
             selector: "#txtSTAT_ADDR",
             content: "系指设置的无线电台（站）所在地详细地址。本栏也可填写微波站附近有代表性的地名"
         },
        {
            selector: "#txtST_TF_TRANS_CA_P",
            content: "模拟微波接力通信系统在本栏内填写每波道传输的电话路数；数字微波接力系统在本栏内填写传输速率，单位为Mbit/s或Gbit/s。无线接入系统可以按照实际情况填写，当以传输电话路数为主时，填写话路数；当以传输数据为主时，填写传输速率"
        },
        {
            selector: "#txtFT_FREQ_TFCODE",
            content: "系指与该站通信的相邻站的站代号。若该站为中心站或枢纽站，有多个通信方向时，则列出与该站通信的所有对象的站代号（例如“01，02，03，04…”）"
        },
        {
            selector: "#radio10,#radio101",
            content: "“波道间隔”系指所用微波射频波道配置中的相邻交叉极化波道中心频率之间的差值；“信道带宽”系指所用无线接入系统或其他点-点、点-多点无线通信系统在标准中规定的每信道带宽。可选择填写",
            type: "radio"
        },
        {
            selector: "#txtFREQ_E_Ban",
            content: "“波道间隔”系指所用微波射频波道配置中的相邻交叉极化波道中心频率之间的差值；“信道带宽”系指所用无线接入系统或其他点-点、点-多点无线通信系统在标准中规定的每信道带宽。可选择填写"
        },
        {
            selector: "#txtET_EQU_TLl",
            content: "系指与门限信噪比相对应的收信机输入端的电平值。对数字微波通信电路，本表填写误码率为1*10-6时的门限电平，单位为dBm。对无线接入系统来说，填写接收机灵敏度。由设备生产厂家提供",
            option: {
                position: {
                    adjust: {
                        x: -180,
                        y: -105
                    }
                }
            }
        },

        {
            selector: "#txtET_EQU_RNQ",
            content: "单位是dB。由设备生产厂家提供",
            option: {
                style: {
                    width: "auto"
                },
                position: {
                    adjust: {
                        x: -125,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#selANT_Type",
            content: "系指天线类型代码",
            type: "combo"
        },
        {
            selector: "#selFREQ_MODl",
            content: "系指该系统采用的调制方式",
            type: "combo",
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
            selector: "#txtEQU_MENU",
            option: {
                position: {
                    adjust: {
                        x: -250,
                        y:20
                    }
                }
            }
        },
        {
            selector: "#txtANT_MENU",
            option: {
                position: {
                    adjust: {
                        x: -200,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtAT_SE_B",
            content: "系指天线最大辐射方向与水平面之间的夹角。高于水平面为“正”，低于水平面为“负”"
        },
        {
            selector: "#txtANT_Gain",
            content: "天线在最大辐射方向的某一距离上产生一定场强所需要的输入功率与同一方向的相同距离上为获得相同场强而必须加到无损耗基准天线的功率之比。本栏填写各向同性增益，单位dBi",
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
            selector: "#txtANT_Size",
            content: "抛物面天线填直径，其他天线填写“长×宽”或长度"
        },
        {
            selector: "#txtANT_Hight",
            content: "系指天线馈电点至地面的高度（包括架设天线的建筑物的高度），精确到小数点后一位",
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
            selector: "#txtANT_Angle",
            content: "系指自正北（沿顺时针方向）起算的天线最大辐射方向的方位角，全向请选择“ND”。",
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
            selector: "#txtFEED_Length",
            content: "系指馈线的长度，精确到小数点后一位",
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
             selector: "#txtFEED_Lose",
             option: {
                 style: {
                     width: 350
                 },
                 position: {
                     adjust: {
                         x:10,
                         y: -20
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
            content: "系指所用馈线的馈线型号"
        },
        {
            selector: "#txtFEED_MENU",
            content: "系指所用馈线的生产厂家",
            option: {
                position: {
                    adjust: {
                        x: -140,
                        y:20
                    }
                }
            }
        } ,
        {
            selector: "#txtSTAT_Date_Start",
            option: {
                position: {
                    adjust: {
                        x: -95,
                        y: 20
                    }
                }
            }
        }
    ],
    QtipDataGridList: {
        selector: "#table_Freqs,#table_equ",
        contentList: [
         {
             field: "freq_uc,freq_efb,freq_efe",
             content: "发射中心频率”和“接收中心频率”栏，填写频段或中心频率，如“发射频率”为频段，则填写频段的起止频率。频率单位按以下原则选择填写： <br/>29.7 MHz ＜ f ≤ 10000 MHz     	用MHz表示 <br/>       f ＞ 10    GHz       	用GHz表示"
         },
         {
             field: "freq_e_band,freq_r_band",
             content: "系指发射频率和接收频率的必要带宽，可以填写每频率的实际带宽"
         },
         {
             field: "equ_code",
             content: "根据厂商提供的实际数据填写。若设备出厂号与频率有对应关系，则在设备出厂号前的小框中填入对应的频率序号。备用设备在设备出厂号后加注“（B）”"
         },
        {
            field: "se_dis",
            content: "填写设站地点到障碍物的距离，单位是km"
        }
    ]

    }

}