/*----------------------------------------------------------------
// Copyright (C) 2011 深圳市嵘兴实业发展有限公司
// 版权所有。 

// 文件功能描述：数据验证帮助器，对于在本项目中需用到的有关数据验
//               证的特性设定统一的默认值，以统一数据校验插件的使
//               用方法。
//
// 注意： 该脚本依赖于jquery、jquery-validate
//
// 创建标识： 邝云生 20101214
//
// 修改标识：
// 修改描述：
//----------------------------------------------------------------*/
(function ($) {

    // 设置默认参数
    $.validator.setDefaults({
        errorPlacement: function (error, element) {
            var target;

            //若使用easyui插件，则应绑定到其可视标签上
            if (element.hasClass('combo-f')) {
                target = $('.combo-text', element.data('combo').combo);
            }
            else {
                target = element;
            }

            //对单选按钮进行校验;
            if (element.is(':radio') || element.is(':checkbox')) {                
                var ele = $(target.parent()).find("input[radioinfo]");
                if (ele.length == 0) {
                    var html = '<input  class="error required" radioinfo="true"   readonly="readonly" style="width:15px;color:#A0A0A0;border:none;text-align:right"    type="text"/>';
                    element.parent().append(html);
                    target = element;
                    ele = $(target.parent()).find("input[radioinfo]");             
                    //隐藏光标
                    ele.mousemove(function () {
                        ele.valid();
                    }).focus(function () {
                        $(this).blur();
                    });
                }
            }


            target.data("jqValidateMsg", error.html());
            target.unbind('mouseenter', showTip).unbind('mouseleave', hideTip).unbind('blur', hideTip)
                .mouseenter(showTip)
                .mouseleave(hideTip)
                .blur(hideTip);
        },
        
      //对失去焦点事件绑定验证验证动作
		onfocusout: function(element){
	        $(element).valid();
	    },
        
        highlight: function (element, errorClass, validClass) {
            if (!$(element).hasClass('combo-text')) {
                $(element).removeClass(validClass)
                    .addClass(errorClass);
            }

            //若使用easyui插件，则应切换其可视标签的样式
            if ($(element).hasClass('combo-f')) {
                $('.combo-text', $(element).data('combo').combo)
                    .removeClass(validClass)
                    .addClass(errorClass);
            }


        },
        unhighlight: function (element, errorClass, validClass) {
            if (!$(element).hasClass('combo-text')) {
                $(element).removeClass(errorClass)
                    .addClass(validClass);
            }

            //若使用easyui插件，则应切换其可视标签的样式
            if ($(element).hasClass('combo-f')) {
                $('.combo-text', $(element).data('combo').combo)
                    .removeClass(errorClass)
                    .addClass(validClass);
            }

        }

    });

    //显示错误提示
    function showTip() {
        var element = $(this);

        if (!element.hasClass('error')) return;

        var tip = element.data('validateTip');
        var msg = element.data('jqValidateMsg');

        if (!tip) {
            tip = $(
				'<div class="jqValidate-tip">' +
					'<span class="jqValidate-tip-content">' +
					'</span>' +
					'<span class="jqValidate-tip-pointer">' +
					'</span>' +
				'</div>'
			).appendTo(element.closest('body'));

            if ($.browser.msie && $.browser.version < 8) {
                $('<iframe style="position: absolute; z-index: -1; width: 100%; height: 100%; top: 0; left: 0; scrolling: no;" frameborder="0" src="about:blank"> </iframe> ').css({ opacity: 0 }).prependTo(tip);
            }
            element.data('validateTip', tip);
        }



        tip.find('.jqValidate-tip-content').html(msg);

        tip.find('.jqValidate-tip-mask').css({
            display: 'block',
            left: 0,
            top: 0,
            width: tip.width(),
            height: tip.height()
        });

        var msgLeft = element.offset().left - 10;

        tip.css({
            display: 'block',
            left: msgLeft,
            top: element.offset().top + element.outerHeight() + 10
        });

        if (element.offset().left >= 500) {
            msgLeft = element.offset().left - tip.find('.jqValidate-tip-content').width();

            tip.find('.jqValidate-tip-pointer').css({
                left: tip.find('.jqValidate-tip-content').width()
            });
        }

        tip.css({
            left: msgLeft
        });
    }

    //隐藏错误提示
    function hideTip() {
        var element = $(this);
        var tip = element.data('validateTip');

        if (tip) {
            tip.hide();
        }
    }
})(jQuery);

$(function () {
    $('.combo-f').each(function () {
        var target = $(this);
        $('.combo-text', target.data('combo').combo)
            .unbind('blur')
        //.bind('focusin', function () { target.focusin() })
            .bind('focusout', function () { target.focusout() })
        //.bind('keyup', function () { target.keyup() });
    });
});