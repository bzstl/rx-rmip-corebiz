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
            content: "本表用于申报设置卫星移动业务终端地球站"
        },
        {
            selector: "#txtST_ME_SAT_Name",
            content: "系指本表所填移动地球站所属的卫星移动通信系统的具体名称"
        },
        {
            selector: "#rdSTAT_WorkR,#rdSTAT_WorkE,#rdSTAT_WorkER",
            content: "系指所设置的无线电台（站）的类别",
            type: "radio"
        },
         {
            selector: "#txtST_ME_FILE_NO",
            content: "系指无线电管理机构批准使用频率的使用证号或批准文号",
            option: {
                style: {
                    width: 210
                },
                position: {
                    adjust: {
                        x: -200,
                        y: 20
                    }
                }
            }
        },
         {
             selector: "#selMulti_Addr",
             content: "系指卫星通信采用的通信方式",
             type: 'combo'
         },
        {
            selector: "#selSt_Pos_Type",
            content: "系指该（类）移动地球站的装载或携带方式",
            type: 'combo',
            option: {
                position: {
                    adjust: {
                        x: -120
                    }
                }
            }
        },
        {
            selector: "#rdsStMestype1,#rdsStMestype2",
            content: "系指与该地球站通信的空间电台或星座的名称，并将相应的“□”打上√。若选择“卫星”，且通信区域有多颗星同时覆盖，则需依次填写多颗星的名称以及标称轨道经度",
            type: 'radio'
        },
        {
            selector: "#txtST_ME_NAME1,#txtST_ME_NAME2",
            content: "填写该地球站通信的空间电台或星座的名称"
        },
        {
            selector: "#txtST_ME_STA1,#txtST_ME_STA2",
            content: "系指在境内使用的关口站，可填写多个关口站"
        },
        {
            selector: "#txtST_ME_STA3",
            content: "系指在境内使用的关口站，可填写多个关口站",
            option: {
                style: {
                    width: 210
                },
                position: {
                    adjust: {
                        x: -200,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtSt_Me_LG1,#txtSt_Me_LG2",
            content: "系指对地静止卫星星下点的标称地理经度，并在经度值前填写（E）表示东经或填写（W）表示西经，精确到小数点后一位。非静止卫星则不填此项",
            option: {
                style:{
                    width:140
                }
            }
        },
        {
            selector: "#stST_ME_FBand",
            content: "系指该站实际使用时占用的总带宽"
        },
        {
            selector: "#txtET_EQU_Type",
            content: "系指卫星通信系统的运营商根据业务的种类和功能给予设备的类别名称。没有则不填写此项"
        },
        {
            selector: "#txtANT_Model",
            content: "系指所用天线的型号规格，若天线与发射设备一体化则可不填此项",
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
            selector: "#txtANT_MENU",
            content: "系指天线的生产厂家，若天线与发射设备一体化则可不填此项"
        },
        {
            selector: "#txtANT_RGai,#txtANT_EGai",
            content: "系指最大辐射方向上的各向同性增益(Gi)，按发射增益和接收增益分别填写，单位是dBi",
            option: {
                style:{
                    width:200
                },
                position: {
                    adjust: {
                        x: -165,
                        y: -70
                    }
                }
            }
        },
        {
            selector: "#txtEQU_MENU",
            content: "系指天线的生产厂家",
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
            selector: "#txtEQU_Model",
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
            selector: "#txtAt_Qua",
            content: "系指接收天线增益与接收系统噪声温度的比值，单位为dB/K。精确到小数点后一位"
        },
        {
            selector: "#selANT_Type",
            content: "系指天线类型代码，若天线与发射设备一体化则可不填此项",
            type:'combo'
        }
        
    ],
    QtipDataGridList: {
        selector: "#tableFreqs",
        contentList: [
         {
             field: "freq_uc,freq_lc,freq_efb,freq_efe,freq_rfb,freq_rfe",
             content: "",
             hidden:false
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