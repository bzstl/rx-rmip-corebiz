/*----------------------------------------------------------------
// Copyright (C) 2009 深圳市嵘兴实业发展有限公司
// 版权所有。 

// 文件功能描述：页面共性信息提示，即所有页面的ID或者表头说明都是一样的
主要在FormTip(X).js文件需要引用到
//
// 注意： 该类中用下划线开头的成员被作为私有成员对待，请不要在调
//        用方直接对该类的私有成员进行调用
//依赖文件：　无

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
function _getFromType() {
    var pathIndex = location.pathname.lastIndexOf("/set");
    var statType = location.pathname.substring(pathIndex + 4, location.pathname.length);
    var fromType = statType.substring(4);
    return fromType;
};
var TipBasic = {
    TipFreq: "由用户根据无线电管理机构指配的频率或设备使用频率选择填写，并在相应的“□”内填写“√”号",
    TipBasicList: [
        {
            selector: "#spanTitle",
            option: {
                style: {
                    width: 275,
                    'font-size': '14px'
                },
                position: {
                    adjust: {
                        x: -80,
                        y: 22
                    }
                }
            }
        },
        {
            selector: "#txtAPP_Code",
            content: "系指申请设台时“无线电台（站）设置申请表”的编号,填写台（站）所对应的申请表编号",
            option: {
                style: {
                    width: 260
                },
                position: {
                    adjust: {
                        x: 120,
                        y: -54
                    },
                    corner: "topLeft"
                }
            }
        },
         {
             selector: "#txtSTAT_TDI",
             content: "表示“技术资料申报表表号”，“" + _getFromType() + "”后由4位数字组成。此栏由用户填写或者由无线电管理机构指导用户填写",
             option: {
                 position: {
                     adjust: {
                         x: -260
                     },
                     corner: "topLeft"
                 }
             }
         },
        {
            selector: "#txtSTAT_LG1,#txtSTAT_LG2,#txtSTAT_LG3,#txtSTAT_LA1,#txtSTAT_LA2,#txtSTAT_LA3",
            content: "系指该站所在地的地理经纬度，秒精确到小数点后二位，例如：东经118°18′53.41″；若为移动台，坐标非固定，请输入“0”。",
            option: {
                position: {
                    adjust: {
                        y: -23
                    }
                }
            }
        },
        {
            selector: "#txt_Equ_sum",
            content: "系指同次申请填在该表上的主用发射设备的总数量"
        },
        {
            selector: "#txtSTAT_AT",
            content: "填写所设置无线电台（站）所在地海拔高度，单位m，精确到小数点后一位",
            option: {
                style: {
                    width: 230
                },
                position: {
                    adjust: {
                        x: -200,
                        y: -53
                    }
                }
            }
        },
        {
            selector: "#txtSTAT_EQU_SUM",
            content: "填写该技术资料申报表中所有主用发射设备的总数"
        },
        {
            selector: "#txtEQU_AUTH",
            content: "系指无线电发射设备经过国家无线电管理机构型号核准后，获得的唯一代码；台站启用日期大于1999年6月1日，则必须填写；若无法填写，请选择“NONE”。"
        },
        {
            selector: "#txtEQU_MENU",
            content: "系指发信机或收发信机的生产厂家，最多不超过40个汉字"
        },
        {
            selector: "#txtEQU_Model",
            content: "应与型号核准证中的设备型号一致"
        },
        {
            selector: "#txtANT_MENU",
            content: "系指发信机或收发信机的生产厂家"
        },
        {
            selector: "#txtFEED_Lose",
            content: "系指天线输入（出）端口至接收机（发射机）端口之间馈线系统的总损耗（包括双工器、合（分）路器、馈线等）。单位是dB，精确到小数点后一位"
        },
        {
            selector: "#txtANT_Hight",
            content: "系指天线馈电点至地面的高度（包括架设天线的建筑物的高度），精确到小数点后一位"
        },
        {
            selector: "#txtSTAT_Date_Start",
            content: "填写该站批准启用的日期",
            type: 'combo'
        },
        {
            selector: "#selNET_SVN", //技术资料表中的“通信业务/系统类型”
            content: "系指台站所对应申请表数据中的通信系统或技术体制。",
            type: "combo",
            option: {
                style: {
                    width: 230
                },
                position: {
                    adjust: {
                        x: -100,
                        y: 20
                    }
                }
            }
        }
    ],
    TipDataGridFieldList: [
        {
            field: "et_equ_name",
            content: "系指发信机设备的名称，包括HF收发信机、VHF收发信机等，由用户填写。如果设备名称为航空器地球站，则仅指航空器上制式电台。后安装的地球站不填此表。"
        },
         {
             field: "equ_auth",
             content: "系指无线电发射设备经过国家无线电管理机构型号核准后，获得的唯一代码；台站启用日期大于1999年6月1日，则必须填写；若无法填写，请选择“NONE”。"
         },
         {
             field: "ant_angle",
             content: "系指自正北（沿顺时针方向）起算的天线最大辐射方向的方位角，全向请选择“ND”。"
         },
        {
            field: "equ_model",
            content: "系指无线电设备的具体型号,应与“型号核准代码”一致"
        },
        {
            field: "ant_model",
            content: "系指所用天线的型号规格",
            option: {
                style: {
                    width: "auto"
                }
            }
        },
        {
            field: "ant_model",
            content: "系指天线的生产厂家",
            option: {
                style: {
                    width: "auto"
                }
            }
        },
         {
             field: "freq_e_band",
             content: "系指对给定的发射类别而言，在规定条件下恰能足以保证传输信息，并能满足所要求的速率和质量的频带宽度。此栏可填写信道间隔或带宽"
         },
         {
             field: "freq_mod",
             content: "填写主载波的调制方式",
             option: {
                 style: {
                     width: "auto"
                 }
             }
         },
        {
            field: "equ_mb",
            content: "表示主用设备和备用设备，应分开填写",
            option: {
                style: {
                    width: "auto"
                }
            }
        },
        {
            field: "freq_mb",
            content: "表示主用设备和备用设备，应分开填写",
            option: {
                style: {
                    width: "auto"
                },
                position: {
                    adjust: {
                        x: -170,
                        y: 20
                    }
                }
            }
        }, {
            field: "ft_freq_epow",
            content: "系指发射机的标称输出功率值。单位是W或kW"
        },
         {
             field: "ft_freq_eirp",
             content: "系指等效全向辐射功率，单位为dBW",
             option: {
                 style: {
                     width: "auto"
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
             field: "ft_freq_unit_type",
             content: "单位为“kHz”或“MHz”。如果是电视，只填写图像载频频率。频率单位按以下原则选择填写：<br/>f  ≤  29700 kHz  用kHz表示  <br/>    29.7 MHz＜f ≤10000 MHz         用MHz表示 <br/> 发射频率的序号与天线栏的序号一一对应",
             option: {
                 style: {
                     width: 280
                 }
             }
         },
        {
            field: "equ_code",
            content: "系指设备出厂时的序列编号。属于备用设备应在出厂号后加注“（B）”"
        },
        {
            field: "ant_hight",
            content: "系指天线馈电点至地面的高度（包括架设天线的建筑物的高度），精确到小数点后一位"
        },
        {
            field: "feed_lose",
            content: "系指天线输出（入）端口至接收机（发射机）端口之间馈线系统的总损耗（包括双工器、合（分）路器、馈线等）。单位是dB，精确到小数点后一位",
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