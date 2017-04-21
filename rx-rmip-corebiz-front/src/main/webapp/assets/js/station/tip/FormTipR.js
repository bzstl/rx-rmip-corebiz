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
            content: "本表用于申报30MHz以上除制式无线电台以外的所有雷达站。凡新设无线电台（站）或变更已设台（站）站址、频率或功率等核定项目时均应填写此表"
        },
        {
            selector: "#txtSTAT_Name",
            content: "填写新设或更改的无线电台站的名称"
        },
  {
      selector: "#selSTAT_Type",
      content: "系指所设置的无线电台（站）的类别",
      type: "combo"
  }, {
            selector: "#txt_Equ_sum",
            option: {
                style: {
                    width: 175
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
            selector: "#txtSTAT_ADDR",
            content: "系指设置的无线电台（站）所在地详细地址。本栏也可填写雷达站附近有代表性的地名或建筑物。当机载雷达和船载雷达时，此项不填"
        },
      {
          selector: "#txt_St_TimeB,#txt_St_TimeE",
          content: "填写该台（站）每天工作的起止时间，左侧填写每天的开始工作时间，在其右侧填写每天的终止工作时间",
          option: {
              position: {
                  adjust: {
                      x: -160,
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
                      x: -210,
                      y: 20
                  }
              }
          }
      },

        {
            selector: "#txtST_R_WAMIN,#txtST_R_WAMAX",
            content: "指天线主波束方向（即通信方向）与真子午线之间沿顺时针方向的夹角。本栏要求填写工作方位角的范围，精确到小数点后一位"
        },
        {
            selector: "#txtST_R_EMIN,#txtST_R_EMAX",
            content: "系指天线最大辐射方向与水平面之间的夹角。本栏要求填写俯仰角的范围，水平线以上为正值，水平线以下为负值，精确到小数点后一位"
        },
        {
            selector: "#txtET_EQU_PUP,#txtET_EQU_PDN",
            content: "系指雷达发射机发射的射频功率脉冲上升/下降到调制包络最高（低）点所用的时间"
        },
        {
            selector: "#txtET_EQU_CHRIP",
            content: "只适用于线性调频雷达，相当于调频中的频偏",
            option: {
                style: {
                    width: 160
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
            selector: "#txtET_EQU_PWID1,#txtET_EQU_PWID2",
            content: "系指雷达发射机发射脉冲的宽度，单位是s。如果雷达的发射脉冲宽度固定且唯一，则只填写上面一格；如果有多个脉冲宽度，则依次填写"
        },
        {
            selector: "#txtET_EQU_PR,#txtET_EQU_PF",
            content: "系指雷达发射机射频脉冲重复发射的周期或频率，脉冲重复周期与脉冲重复频率互为倒数。如果雷达的脉冲重复周期或脉冲重复频率固定且唯一，则只填写上面一格；如果有多个，则依次填写"
        },
        {
            selector: "#txtET_EQU_SEN",
            content: "系指接收机线性部分(指从输入级至检波器)输出的信号功率等于内部噪声功率时，接收机输入端所需的最小信号功率",
            option: {
                style: {
                    width: 167
                },
                position: {
                    adjust: {
                        x: -40,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtANT_Size",
            content: "抛物面天线填直径，其他天线填写“长×宽”或长度",
            option: {
                style: {
                    width: 165
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
            selector: "#txtET_EQU_RWID",
            content: "按生产厂商提供的数据填写。没有此项数据，可不填",
            option: {
                style: {
                    width: 165
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
            selector: "#txtAT_BWID",
            content: "系指天线方向性图中的半功率点波瓣宽度，即天线辐射主瓣最大值两边场强等于最大场强的0.707倍的两个方向之间的夹角，又称3dB波束宽度。本栏主要填写水平方向的3dB带宽值"
        },
        {
            selector: "#txtANT_Hight",
            option: {
                style: {
                    width: 165
                },
                position: {
                    adjust: {
                        x: -125,
                        y: 20
                    }
                }
            }
        }, {
            selector: "#txtAT_LEL",
            content: "是指天线第一旁瓣增益相对于天线最大增益的比值，单位为dB",
            option: {
                style: {
                    width: 168
                },
                position: {
                    adjust: {
                        x: -122,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtAT_SSPeed",
            content: "系指拟设雷达站正常工作时天线的转速"
        },
        {
            selector: "#txtEQU_MENU",
            content: "填写收发信机的生产厂家。当备用设备与主用设备性能一样但生产厂家不同时，将备用设备生产厂家写在备注栏里"
        },
        {
            selector: "#txtEQU_Model",
            option: {
                style:{
                    width:160
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
            selector: "#txtANT_Gain",
            content: "系指最大辐射方向的各向同性增益，单位是dBi"
        },
        {
            selector: "#txtANT_Model",
            content: "系指所用天线的型号规格，若天线与发射设备一体化则可不填此项"
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
            selector: "#txtSTAT_Date_Start",
            type: 'combo',
            option: {
                position: {
                    adjust: {
                        x: -95,
                        y: 23
                    }
                }
            }
        }
    ],
    QtipDataGridList: {
        selector: "#tableFreqs",
        contentList: [
         {
             field: "freq_uc,freq_lc,freq_efb,freq_efe,freq_rfb,freq_rfe",
             content: "“发射中心频率”和“接收中心频率”栏，填写频段或中心频率，如“发射频率”为频段，则填写频段的起止频率",
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
             field: "ft_freq_unit_type,ft_freq_r_unit_type",
             content: "频率单位按以下原则选择填写：<br/>29.7 MHz＜f ≤10000 MHz         用MHz表示 <br/>f ＞10    GHz         用GHz表示",
             option: {
                 style: {
                     width: 190
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
             field: "freq_e_band",
             content: "系指设备正常工作时所占用的带宽值，按生产厂商提供的数据填写。当没有数据时填写设备的40dB带宽值"
         },
         {
             field: "freq_mod",
             content: "指无线电信号的发射类型和性质"
         },
         {
             field: "ft_freq_pow_max",
             content: "系指在正常工作情况下发信机在调制包络最高点的一个射频周期内送到馈线上的平均功率，单位是kW "
         },
         {
             field: "ft_freq_pow_avg",
             content: "系指在正常工作情况下发信机在足够长的时间内送到馈线上的平均功率,所谓足够长的时间是相对于最低调制频率的周期而言,单位是W "
         }
    ]

    }

}