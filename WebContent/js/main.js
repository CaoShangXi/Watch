/** 對公共頁面的操作 */

/** 操作error404頁面 */
$(function() {
			var timer;
			$("#go_back").click(function() {
						if (timer != null && timer != undefined) {
							clearInterval(timer);
							window.location.href = "/";
						}
					});
			var i = 5;
			$("#auto").val(i + " 秒鐘之後自動返回首頁......");
			timer = setInterval(function() {
						--i;
						if (i > 0) {
							$("#auto").val(i + " 秒鐘之後自動返回首頁......");
						} else {
							clearInterval(timer);
							window.location.href = "/";
						}
					}, 1000);
		});
