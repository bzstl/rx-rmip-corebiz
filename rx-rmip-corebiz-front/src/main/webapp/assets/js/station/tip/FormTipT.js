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
            selector: "#selArea1",
            content: "请选择无线电台（站）省份名称",
            type: "combo",
            option: {
                position: {
                    adjust: {
                        x: 20
                    }
                }
            }
        },
        {
            selector: "#selArea2",
            content: "请选择无线电台（站）地区名称",
            type: "combo",
            option: {
                position: {
                    adjust: {
                        x: 20
                    }
                }
            }
        },
        {
            selector: "#spanTitle",
            content: "本表供申请设置各类无线电台(站)或变更已设台（站）站址、频率、功率等核定项目时使用"
        },

        {
            selector: "#radioAppcode",
            content: "无申请表编号的用户或单位，请您垂询当地无委主管部门；对于台站核查的单位(个人)，请您填写无委主管部门已分配的申请表编号",
            type: "radio",
            option: {
                position: {
                    adjust: {
                        x: -140,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtSTAT_TDI1,#txtSTAT_TDI2,#txtSTAT_TDI3",
            content: "系指申请设台时的申请表编号，T后由12位数字组成，其中，前4位表示地区编码，中间4位表示年份，后4位表示申请表序号"
        },
        {
            selector: "#txtAPP_Code1,#txtAPP_Code2,#txtAPP_Code3",
            content: "系指申请设台时的申请表编号，“T”后由12位数字组成，其中，前4位表示地区编码，中间4位表示年份，后4位表示申请表序号，例如：“T1100-2006-0010”，表示北京地区2006年第10张台（站）设置申请表。新设台（站）时由用户填写此栏。当设台单位信息、缴费单位信息变更或变更已建台站（网）的技术参数时，由用户填写已设台（站）的申请表编号。每次可申请修改同一通信网的多个台站的多项内容",
            option: {
                style: {
                    width: 220
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
            selector: "#selOrgName1",
            content: "系指申请设置使用无线电台（站）的单位或个人的全称。当申请设置空间电台时，填写卫星操作者名称"
        },
        {
            selector: "#selOrgName2",
            content: "系指交纳频率占用费的单位或个人的全称",
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
            selector: "#txtORG_Code,#txtORG_Code2",
            content: "系指根据中华人民共和国国家标准《全国组织机构代码编制规则》（GB11714—1997），由组织机构代码登记主管部门给每个企业、事业单位、机关和社会团体颁发的在全国范围内唯一的、始终不变的法定代码。产业活动单位是本部的，如果没有法定代码，使用其所属的法人单位法定代码的前8位，第9位校验码填“B”。所有单位均应填报本项",
            option: {
                style: {
                    width: 300
                },
                position: {
                    adjust: {
                        x: -140,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtORG_ADDR",
            content: "系指设台单位的通信地址"
        },
        {
            selector: "#txtORG_ADDR2",
            content: "系指缴费单位的通信地址",
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
            selector: "#txtORG_Phone,#txtORG_Phone2",
            content: "填写联系人的办公电话"
        },
        {
            selector: "#txtORG_MOB_Phone,#txtORG_MOB_Phone2",
            content: "填写联系人的手机号码"
        },
        {
            selector: "#txtORG_Mail,#txtORG_Mail2",
            content: "填写联系人的电子信箱或单位公务信箱",
            option: {
                position: {
                    adjust: {
                        x: -220,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#selNET_Name",
            content: "系指由用户命名的、拟设无线电台（站）所属的无线电通信系统或网络的名称",
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
            selector: "#txtNET_Band",
            content: "系指国家无线电管理机构根据相关标准划定的信道带宽/波道间隔，或国家标准、行业标准中规定的信道带宽/波道间隔。申请设置空间电台或地球站时，不用填写"
        },
        {
            selector: "#selNET_SVN",
            content: "系指所申请的无线电台（站）对应的无线电业务、通信系统及子系统，由用户填写",
            type: "combo",
            option: {
                position: {
                    adjust: {
                        x: -225,
                        y: 24
                    }
                }
            }
        },
        {
            selector: "#radioNetsp1,#radioNetsp2,#radioNetsp3",
            content: "系指拟设的无线电台（站）所属的无线电业务性质，可选择填写并在相应的“□”内填写“√”号。其中“专用”系指国内各部门开展的专用通信业务；“公众”系指用于国际、国内公众通信的业务；“其他”系指不包括在上述范围内的业务",
            type: "radio"
        },
        {
            selector: "#RadioNET_Area1,#RadioNET_Area2,#RadioNET_Area3,#RadioNET_Area4,#RadioNET_Area5,#RadioNET_Area6,#RadioNET_Area7",
            content: "系指拟建无线电通信网的使用范围，可选择填写并在相应的“□”内填写“√”号。其中“国际/跨边境（界）”系指拟建系统或网络可提供国际漫游；“全国”系指覆盖全国的通信系统或网络，“跨省”系指仅用于两省或两省以上的通信系统，其他类推",
            type: "radio",
            option: {
                position: {
                    adjust: {
                        x: -100,
                        y: 20
                    }
                }

            }
        },
        {
            selector: "#selNET_TS",
            content: "系指拟设的无线电台（站）所属的无线电通信系统或网络的技术体制，例如GSM、WCDMA等",
            type: "combo",
            option: {
                position: {
                    adjust: {
                        x: -220,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtNET_Use",
            content: "根据网络的实际用途进行填写。例如，防洪救灾、应急抢险、保障重大事件等,公众业务则不必填写",
            option: {
                position: {
                    adjust: {
                        x: -220,
                        y:20
                    }
                }
            }
        },
        {
            selector: "#txtAPP_File_NO1,#txtAPP_File_NO2,#txtAPP_File_NO3",
            content: "系指无线电管理机构批准使用频率的使用证号或批准文号。当设台单位已取得“频率使用许可证”后，填写“频率使用许可证号”，否则填写批准文号；若无法填写，请输入“无”。",
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
            selector: "#date_APP_FTLB,#date_APP_FTLE",
            content: "按频率使用许可证或批文中批准的频率使用期限填写",
            type: "combo"
        },
        {
            selector: "#txtORG_Bank,#txtORG_Account_Name,#txtORG_Account",
            content: "系指当缴费单位需要办理托收时填写",
            option: {
                position: {
                    adjust: {
                        x: -190,
                        y:20
                    }
                }
            }
        },
        {
            selector: "#txtORG_Link_Person",
            content: "系指设台单位联系人名称"
        },
        {
            selector: "#txtORG_Link_Person2",
            content: "系指缴费单位联系人名称"
        },
        {
            selector: "#txtORG_POST",
            content: "系指设台单位邮政编码，必须由六位数字组成",
            option: {
                style: {
                    width: 168
                },
                position: {
                    adjust: {
                        x: -160,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtORG_POST2",
            content: "系指缴费单位邮政编码，必须由六位数字组成",
            option: {
                style: {
                    width: 168
                },
                position: {
                    adjust: {
                        x: -160,
                        y: 20
                    }
                }
            }
        },
        {
            selector: "#txtORG_FAX",
            content: "系指设台单位的传真号码",
            option: {
                style: {
                    width: 168
                },
                position: {
                    adjust: {
                        x: -160,
                        y: 20
                    }
                }
            }
        },
             {
                 selector: "#txtORG_FAX2",
                 content: "系指缴费单位的传真号码",
                 option: {
                     style: {
                         width: 168
                     },
                     position: {
                         adjust: {
                             x: -160,
                             y: 20
                         }
                     }
                 }
             },
        {
            selector: "#selSys_Code",
            content: "系指设台单位所属部门的代码，由用户填写",
            type: "combo",
            option: {
                style: {
                    width: 165
                },
                position: {
                    adjust: {
                        x: -140,
                        y: 20
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
             content: "",
             hidden: false
         },
         {
             field: "ft_freq_unit_type",
             hidden: false
         }
    ]

    }

}