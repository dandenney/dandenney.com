(function(){var t,n,a,i,r,e;e=function(){return $(".js-winnings").each(function(){var t,n,a;return t=$(this),n=t.html(),a=50*n,$(this).html(a)})},e(),i=function(){return $(".js-maxBet").each(function(){var t,n,a;return n=$(this),t=n.html(),a=50*t,$(this).html(a)})},i(),r=function(){return $(".js-minBankroll").each(function(){var t,n,a;return n=$(this),t=n.html(),a=50*t,$(this).html(a)})},r(),a=function(){return $(".js-checkMirage").each(function(){var t,n;return t=$(this),n=t.attr("data-maxbet"),n>=400?$(this).html("&#10008;").addClass("negative"):void 0})},a(),n=function(){return $(".js-checkMGM").each(function(){var t,n;return t=$(this),n=t.attr("data-maxbet"),n>=200?$(this).html("&#10008;").addClass("negative"):void 0})},n(),(t=function(){return $(".js-checkBeau").each(function(){var t,n;return t=$(this),n=t.attr("data-maxbet"),n>=300?$(this).html("&#10008;").addClass("negative"):void 0})})()}).call(this);