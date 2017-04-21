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
            content: "本表用于填写除卫星移动业务终端地球站之外的各类地球站。凡新设地球站或变更已设台（站）站址、频率或功率等核定项目时均应填写此表"
        },
        {
            selector: "#txtST_E_NET_Code",
            content: "系指由国家无线电管理部门在网络批准文件中指定的编号",
            option: {
                style:
                {
                    width: 250
                },
                position: {
                    adjust: {
                        x: -240
                    }
                }
            }
        },
        {
            selector: "#txtSTAT_Name",
            content: "系指该地球站的具体名称"
        },
        {
            selector: "#selSTAT_Type",
            content: "系指所设置的无线电台（站）的类别",
            type: "combo",
            option: {
                position: {
                    adjust: {
                        x: -190,
                        y: 20
                    }
                }
            }
        },
         {
             selector: "#selMulti_Addr",
             content: "系指卫星通信采用的通信方式",
             type: 'combo',
             option: {
                 position: {
                     adjust: {
                         x: -170,
                         y: 20
                     }
                 }
             }
         },
        {
            selector: "#txtSTAT_ADDR",
            content: "系指设置的地球站所在地的详细地址。本栏也可填写地球站附近有代表性的地名"
        },
         {
             selector: "#rdSTAT_WorkER,#rdSTAT_WorkE,#rdSTAT_WorkR",
             content: "按照所设地球站的实际工作方式在相应的“□”内填写“√”号",
             type: 'radio'
         },
        {
            selector: "#RadioNET_Area1,#RadioNET_Area3,#RadioNET_Area4",
            content: "填写该地球站的通信范围，可选择填写并在相应的“□”内填写“√”号",
            type: 'radio',
            option: {
                position: {
                    adjust: {
                        x: -180,
                        y :20
                    }
                }
            }
        },
        {
            selector: "#Radio_ST_POS_Type0,#ST_POS_Type1,#ST_POS_Type2,#ST_POS_Type3,#ST_POS_Type4,#ST_POS_Type5",
            content: "系指除卫星移动业务之外的地球站，按照装载设备的类别在相应“□”栏填写“√”号，并填上移动装载设备的唯一识别号，即车牌号、船舶登记号或飞机的国籍和注册号",
            type: 'radio',
            option: {
                position: {
                    adjust: {
                        x: -80,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtST_E_SAT",
            content: "系指与该地球站通信的空间电台或星座的名称"
        },
        {
            selector: "#txtST_E_LG",
            content: "系指对地静止卫星星下点的标称地理经度，并在经度值前填写“E”表示东经或填写“W”表示西经，精确到小数点后一位。非静止卫星则不填此项"
        },
        {
            selector: "#stST_ME_FBand",
            content: "系指该站所有发射载波带宽值之和"
        },
        {
            selector: "#txtEQU_Model",
            content: "系指HPA的型号，对VSAT站填写射频单元的型号；单收地球站则填写LNA的型号"
        },
        {
            selector: "#txtEQU_MENU",
            option: {
                position: {
                    adjust: {
                        x: -240,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtANT_Model",
            content: "按厂家指定填写"
        },
        {
            selector: "#txtANT_RGai,#txtANT_EGai",
            content: "系指最大辐射方向上的各向同性增益(Gi)，按发射增益和接收增益分别填写，单位是dBi"
        },
        {
            selector: "#txtANT_MENU",
            content: "系指天线的生产厂家"
        },
        {
            selector: "#txtANT_Size",
            content: "抛物面天线填直径，其他天线填写“长×宽”或长度",
            option: {
                style:{
                    width:170
                },
                position: {
                    adjust: {
                        x: -115,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#selANT_Type",
            content: "系指天线类型代码",
            type: "combo"
        }, {
            selector: "#txtAT_ANG_B,#txtAT_ANG_E",
            content: "栏系指在当地水平面上，自正北(沿顺时针方向)起算的天线最大辐射方向的方位角。对于静止卫星系统则在第一个空格填写天线方位角",
            option: {
                position: {
                    adjust: {
                        x: -150,
                        y: -90
                    }
                }
            }
        },
        {
            selector: "#txtAT_SE_B,#txtAT_SE_E",
            content: "系指在通过天线安装点的垂直平面上，天线最大辐射方向与水平面之间的夹角。对于静止卫星系统则在第一个空格填写天线的仰角"
        },
        {
            selector: "#txtAt_Rnt",
            content: "系指在晴朗天空条件和实际工作仰角的情况下，折算到地球站接收天线输出端的接收系统的噪声温度",
            option: {
                style:{
                    width:170
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
            selector: "#td_tip5",
            content: "填写实际测得的地球站周围（0～360度）天际线仰角与对应方位角的值，仅当地球站周围建筑物仰角变化时填写，精确到度",
            option: {
                style: {
                    width: 300
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
            selector: "#txtFEED_Lose",
            option: {
                position: {
                    adjust: {
                        x : -220,
                        y : -90
                    }
                }
            }
        },
        {
            selector: "#txtSTAT_Date_Start",
            option: {
                position: {
                    adjust: {
                        x : -105,
                        y : 20
                    }
                }
            }
        }
    ],
    QtipDataGridList: {
        selector: "#tableFreqs,#tableSe",
        contentList: [
         {
             field: "freq_uc,freq_lc,freq_efb,freq_efe,freq_rfb,freq_rfe",
             content: "发射中心频率”和“接收中心频率”栏，填写频段或中心频率，如“发射频率”为频段，则填写频段的起止频率。频率单位按以下原则选择填写： <br/>29.7 MHz ＜ f ≤ 10000 MHz     	用MHz表示 <br/>       f ＞ 10    GHz       	用GHz表示",
             option: {
                 style: {
                     width: 280
                 }
             }
         },
         {
             field: "ft_freq_unit_type",
             hidden:false
         },
         {
             field: "freq_e_band,freq_r_band",
            content: "系指发射频率和接收频率的必要带宽，可以填写每频率的实际带宽"
        },
         {
             field: "ft_freq_mc",
            content: "根据调制信号的性质以及调制方式（射频调制方式）来选择填写"
        },
        {
            field: "se_dis",
            content: "填写设站地点到障碍物的距离，单位是km"
        }
    ]

    }

}