!function(t){t.fn.tipTip=function(e){var o={activation:"hover",keepAlive:!1,maxWidth:"200px",edgeOffset:3,defaultPosition:"bottom",delay:400,fadeIn:200,fadeOut:200,attribute:"title",content:!1,enter:function(){},exit:function(){}},i=t.extend(o,e);if(t("#tiptip_holder").length<=0){var n=t('<div id="tiptip_holder" style="max-width:'+i.maxWidth+';"></div>'),r=t('<div id="tiptip_content"></div>'),a=t('<div id="tiptip_arrow"></div>');t("body").append(n.html(r).prepend(a.html('<div id="tiptip_arrow_inner"></div>')))}else var n=t("#tiptip_holder"),r=t("#tiptip_content"),a=t("#tiptip_arrow");return this.each(function(){function e(){i.enter.call(this),r.html(d),n.hide().removeAttr("class").css("margin","0"),a.removeAttr("style");var e=parseInt(f.offset().top),o=parseInt(f.offset().left),p=parseInt(f.outerWidth()),l=parseInt(f.outerHeight()),h=n.outerWidth(),c=n.outerHeight(),s=Math.round((p-h)/2),_=Math.round((l-c)/2),v=Math.round(o+s),m=Math.round(e+l+i.edgeOffset),g="",b="",M=Math.round(h-12)/2;"bottom"==i.defaultPosition?g="_bottom":"top"==i.defaultPosition?g="_top":"left"==i.defaultPosition?g="_left":"right"==i.defaultPosition&&(g="_right");var w=s+o<parseInt(t(window).scrollLeft()),O=h+o>parseInt(t(window).width());w&&s<0||"_right"==g&&!O||"_left"==g&&o<h+i.edgeOffset+5?(g="_right",b=Math.round(c-13)/2,M=-12,v=Math.round(o+p+i.edgeOffset),m=Math.round(e+_)):(O&&s<0||"_left"==g&&!w)&&(g="_left",b=Math.round(c-13)/2,M=Math.round(h),v=Math.round(o-(h+i.edgeOffset+5)),m=Math.round(e+_));var x=e+l+i.edgeOffset+c+8>parseInt(t(window).height()+t(window).scrollTop()),I=e+l-(i.edgeOffset+c+8)<0;x||"_bottom"==g&&x||"_top"==g&&!I?("_top"==g||"_bottom"==g?g="_top":g+="_top",b=c,m=Math.round(e-(c+5+i.edgeOffset))):(I|("_top"==g&&I)||"_bottom"==g&&!x)&&("_top"==g||"_bottom"==g?g="_bottom":g+="_bottom",b=-12,m=Math.round(e+l+i.edgeOffset)),"_right_top"==g||"_left_top"==g?m+=5:"_right_bottom"!=g&&"_left_bottom"!=g||(m-=5),"_left_top"!=g&&"_left_bottom"!=g||(v+=5),a.css({"margin-left":M+"px","margin-top":b+"px"}),n.css({"margin-left":v+"px","margin-top":m+"px"}).attr("class","tip"+g),u&&clearTimeout(u),u=setTimeout(function(){n.stop(!0,!0).fadeIn(i.fadeIn)},i.delay)}function o(){i.exit.call(this),u&&clearTimeout(u),n.fadeOut(i.fadeOut)}var f=t(this);if(i.content)d=i.content;else var d=f.attr(i.attribute);if(""!=d){i.content||f.removeAttr(i.attribute);var u=!1;"hover"==i.activation?(f.hover(function(){e()},function(){i.keepAlive||o()}),i.keepAlive&&n.hover(function(){},function(){o()})):"focus"==i.activation?f.focus(function(){e()}).blur(function(){o()}):"click"==i.activation&&(f.click(function(){return e(),!1}).hover(function(){},function(){i.keepAlive||o()}),i.keepAlive&&n.hover(function(){},function(){o()}))}})}}(jQuery);