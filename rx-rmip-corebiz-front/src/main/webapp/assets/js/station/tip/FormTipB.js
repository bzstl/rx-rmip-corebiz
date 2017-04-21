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
            content: "本表用于广播业务中的各类广播电台。凡新设无线电台（站）或变更已设台（站）站址、频率或功率等核定项目时均应填写此表"
        },
        {
            selector: "#txtST_B_SGN",
            content: "系指播出该套节目的名称（如：中央人民广播电台一套）",
            option: {
                style:
                {
                    width: "auto"
                },
                position: {
                    adjust: {
                        x: -200,
                        y:20
                    }
                }
            }
        },
        {
            selector: "#txtSTAT_Name",
            content: "填写广播电台（站）的具体名称"
        },
        {
            selector: "#txtSTAT_ADDR",
            content: "系指设置的广播电台所在地详细地址。本栏也可填写该站附近有代表性的地名"
        },
         {
             selector: "#Radio5,#Radio6,#Radio7,#Radio8,#Radio9,#Radio10",
             content: "系指广播电台的分类，分为“□声音  □电视  □多媒体”和“□对外 □实验 □其他”，两者各选其一,并在相应的“□”内填写“√”号",
             type: 'radio',
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
            selector: "#Radio11,#Radio12,#Radio13,#Radio14",
            content: "可选择填写并在相应的“□”内填写“√”号。当在校园里设置广播电台时，本栏填写“县级及以下”选项。",
            type: 'radio'
        },
        {
            selector: "#Radio1,#Radio2",
            content: "是否教育台，可选择填写并在相应的“□”内填写“√”号。",
            type: 'radio'
        },
        {
            selector: "#Radio3,#Radio4",
            content: "是否差转台，可选择填写并在相应的“□”内填写“√”号。",
            type: 'radio'
        }, {
            selector: "#txtST_Time_B,#txtST_Time_E",
            content: "填写该电台每天的开始工作时间和每天的终止工作时间",
            option: {
                position: {
                    adjust: {
                        x: -160,
                        y: -50

                    }
                }
            }
        },
        {
            selector: "#Radio15",
            content: "24小时全天发射",
            type: 'radio',
            option: {
                position: {
                    adjust: {
                        x: -150,
                        y: 20

                    }
                }
            }
        }, {
            selector: "#txtST_B_Cover_Area",
            content: "系指经批准允许该广播电台所覆盖的区域，如国家、省市地区等"
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
        selector: "#table_Freqs,#table_Equs,#table_Ants",
        contentList: [
        {
            field: "ft_freq_timeb,ft_freq_timee",
            content: "系指对应发射频率的起止工作时间。如果全天发射，则填写24小时"
        },
        {
            field: "equ_auth",
            content: "系指无线电发射设备经过国家无线电管理机构型号核准后，获得的唯一代码;台站启用日期大于1999年6月1日，则必须填写；若无法填写，请输入“无”或“0”。"
        },
        {
            field: "equ_menu",
            content: "系指发信机或收发信机的生产厂家。最多不超过40个汉字"
        },
        {
            field: "ant_menu",
            content: "系指天线的生产厂家。最多不超过40个汉字",
            option: {
                style: {
                    width: "auto"
                }
            }
        },
        {
            field: "ant_hight",
            content: "通常系指天线馈电点至地面的高度（包括架设天线的建筑物的高度）"
        },
        {
            field: "ant_angle",
            content: "系指自真北起算(沿顺时针方向)的天线最大辐射方向的方位角。"
        },
        {
            field: "feed_lose",
            content: "系指天线输入（出）端口至接收机（发射机）端口之间馈线系统的总损耗（包括双工器、合（分）路器、馈线等）。单位是dB，精确到小数点后一位。"
        },
        {
            field: "at_se_b",
            content: "系指天线最大辐射方向与水平面之间的夹角"
        }
    ]

    }

}