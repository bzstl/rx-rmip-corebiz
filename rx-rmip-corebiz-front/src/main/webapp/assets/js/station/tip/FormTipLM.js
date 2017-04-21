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
            content: "本表用于陆地移动电台，如对讲机、车载台、手持台等，国家规定不需办理台（站）设置审批手续的除外。凡新设无线电台或变更已设台（站）站址、频率或功率等核定项目时均应填写此表。"
        },
  {
      selector: "#selSTAT_APP_Type",
      content: "系指所设置的无线电台（站）的类别",
      type: "combo"
  }, 
    {
        selector: "#txtSTAT_Work",
      content: "系指所设置的无线电台（站）的工作方式",
      type: "combo",
      option: {
          position: {
              adjust: {
                  x: -150,
                  y: 20
              }
          }
      }
  }, 
  {
             selector: "#Radio1,#Radio2",
            content: "系指铁路机车的制式电台，在相应的“□”内填写“√”号",
            type: "radio"
        }, {
            selector: "#txtST_User_Area",
            content: "系指经批准允许该移动电台使用的地区范围，可填写汉字"
        },
        {
            selector: "#txtSTAT_Date_Start",
            content : "系指该次申请的移动电台拟启用频率的起始日期",
            option: {
                style :{
                    width : 190
                },
                position: {
                    adjust: {
                        x: -105,
                        y:25
                    }
                }
            }
        },
        {
            selector: "#txt_Equ_sum",
            content: "系指同次申请填在该表上的主用发射设备的总数量；设备数量超过150个，请新增新的技术资料表。"
        }

    ],
    QtipDataGridList: {
        selector: "#table_Freqs,#table_Equs",
        contentList: [     
         {
             field: "freq_uc,freq_lc,freq_efb,freq_efe,freq_rfb,freq_rfe",
             content: "填写信道的中心频率，集中控制多信道共用系统中的手持台填写频段的起止频率",
             option: {
                 style: {
                     width: 280
                 }
             }
         },
         {
             field: "freq_e_band",
             content: "系指对给定的发射类别而言，在规定条件下恰能足以保证传输信息，并能满足所要求的速率和质量的频带宽度。此栏可填写信道间隔或带宽"
         }, {
             field: "ant_gain",
             content: "发射频率在1GHz以下的填写单位dBd的天线增益；1GHz以上的填写单位为dBi的天线增益。手持台可不填本栏"
         }, {
             field: "equ_pow",
             content: "填写发信机或收发信机的标称输出功率值",
             option: {
                 style: {
                     width: "auto"
                 }
             }
         },
          {
             field: "equ_model",
             content: "系指发信机或收发信机的设备型号",
             option: {
                 style: {
                     width: "auto"
                 }
             }
         },
          {
             field: "equ_menu",
             content: "系指所用设备的生产厂家",
             option: {
                 style: {
                     width: "auto"
                 }
             }
         }, {
             field: "et_equ_cl",
             content: "由用户根据无线电管理机构核配的无线电台（站）呼号填写。进入市话网的陆地移动电台不填此栏",
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
             field: "equ_code",
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