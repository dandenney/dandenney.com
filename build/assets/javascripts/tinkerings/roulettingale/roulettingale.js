(function(){var t,n,i,s,e,h,a,r,l,c;h=function(){return $(".js-winnings").each(function(){var t,n,i;return t=$(this),n=t.html(),i=50*n,$(this).html(i)})},h(),s=function(){return $(".js-maxBet").each(function(){var t,n,i;return n=$(this),t=n.html(),i=50*t,$(this).html(i)})},s(),e=function(){return $(".js-minBankroll").each(function(){var t,n,i;return n=$(this),t=n.html(),i=50*t,$(this).html(i)})},e(),i=function(){return $(".js-checkMirage").each(function(){var t,n;return t=$(this),n=t.attr("data-maxbet"),n>=400?$(this).html("&#10008;").addClass("negative"):void 0})},i(),n=function(){return $(".js-checkMGM").each(function(){var t,n;return t=$(this),n=t.attr("data-maxbet"),n>=200?$(this).html("&#10008;").addClass("negative"):void 0})},n(),t=function(){return $(".js-checkBeau").each(function(){var t,n;return t=$(this),n=t.attr("data-maxbet"),n>=300?$(this).html("&#10008;").addClass("negative"):void 0})},t(),c=function(){return $(".js-spins").each(function(){var t,n,i,s,e,h,a,r;return s=$(this),h=$(this).find(".js-n-red .positive--a").length,t=$(this).find(".js-n-red .negative--a").length,e=h+t,r=h/e,a=(100*r).toFixed(2)+"%",i=t/e,n=(100*i).toFixed(2)+"%",$(this).siblings().find(".js-count-red").html(h),$(this).siblings().find(".js-count-black").html(t),$(this).siblings().find(".js-prct-red").html(a),$(this).siblings().find(".js-prct-black").html(n)})},c(),a=function(){return $(".js-spins").each(function(){var t,n,i,s,e,h,a,r;return t=$(this),n=$(this).find(".js-n-even .positive--a").length,h=$(this).find(".js-n-even .negative--a").length,e=n+h,s=n/e,i=(100*s).toFixed(2)+"%",r=h/e,a=(100*r).toFixed(2)+"%",$(this).siblings().find(".js-count-even").html(n),$(this).siblings().find(".js-count-odd").html(h),$(this).siblings().find(".js-prct-even").html(i),$(this).siblings().find(".js-prct-odd").html(a)})},a(),l=function(){return $(".js-spins").each(function(){var t,n,i,s,e,h,a,r;return t=$(this),n=$(this).find(".js-n-118 .positive--a").length,h=$(this).find(".js-n-1936 .negative--a").length,e=n+h,s=n/e,i=(100*s).toFixed(2)+"%",r=h/e,a=(100*r).toFixed(2)+"%",$(this).siblings().find(".js-count-118").html(n),$(this).siblings().find(".js-count-1936").html(h),$(this).siblings().find(".js-prct-118").html(i),$(this).siblings().find(".js-prct-1936").html(a)})},l(),(r=function(){var t,n,i,s,e;return i=$(".js-id001 .js-n-118 .positive--a").length,t=$(".js-id001 .js-n-118 .negative--a").length,e=i+t,s=i/e,n=t/e,$(".example-positive").append(s),$(".example-negative").append(n)})()}).call(this);