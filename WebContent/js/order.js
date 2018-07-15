/* 工單頁面的所有動作 */
$(function() {
			var w = window.innerWidth || document.documentElement.clientWidth
					|| document.body.clientWidth;
			$("body").width(w);

			$("#dept").change(function(){
				var val=$(this).val();
				//發送AJAX請求到服務端
				$.ajax({
					url:"findLine.do",//請求地址
					type:"post",//請求類型
					data:{"dept_number":val},//發送到服務端的參數
					dataType:"json",//服務端返回的數據類型
					success:function(data){//服務端返回數據成功
						$("#line").empty();
						for(var i=0;i<data.length;i++){
							var l=data[i];
							$("#line").append(
							"<option value="+l.line_id+">"+l.line_name+"</option>"
							);
						}
						
					},
					error:function(){//服務端返回數據失敗
						alert("服務端返回數據失敗！");
					}
				});
			});
		});
