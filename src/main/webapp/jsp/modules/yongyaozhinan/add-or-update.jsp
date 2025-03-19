<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
		<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
		</script>
		<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
		<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	  	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
		
</head>
<body>
	<div class="wrapper compact-wrapper">
		<%@ include file="../../static/mainHeader.jsp"%>
		<!-- Sidebar -->
		<%@ include file="../../static/sidebar.jsp"%>
		<div class="main-panel">
			<div class="content">
				<div class="page-inner">
					<div class="page-header">
						<ul class="breadcrumbs">
							<li class="nav-home">
								<a href="${pageContext.request.contextPath}/index.jsp">
									<i class="flaticon-home"></i>
								</a>
							</li>
							<li class="separator">
								<i class="flaticon-right-arrow"></i>
							</li>
							<li class="nav-item">
								<a href="${pageContext.request.contextPath}/jsp/modules/yongyaozhinan/list.jsp">用药指南</a>
							</li>
						</ul>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<div class="card-title"></div>
								</div>
								<div class="card-body">								
									<div class="row">
										<div class="col-md-6 col-lg-4">
										<form id="addOrUpdateForm" method="post">
											<input id="updateId" name="id" type="hidden">
											<div class="form-group">
												<label>指南标题</label>
												
												<input id="zhinanbiaoti" name="zhinanbiaoti" class="form-control" placeholder="指南标题">
												</div>	
											<div class="form-group">
												<label>药品名称</label>
												
												<select  class="form-control"  name="yaopinmingcheng" id="yaopinmingchengSelect" onchange="yaopinmingchengSelect2Change()">
												</select>											
												</div>	
											<div class="form-group">
												<label>药品类型</label>
												
												<input id="yaopinleixing" name="yaopinleixing" class="form-control" value="" readonly>
												</div>	
											<div class="form-group">
												<label>封面图片</label>
												
													<img id="fengmiantupianImg" src="" width="100" height="100">
													<input name="file" type="file" id="fengmiantupianupload" class="form-control-file">
													<input name="fengmiantupian" id="fengmiantupian-input" type="hidden">
												</div>	
											<div class="form-group">
												<label>不良反应</label>
												
												<textarea id="buliangfanying" name="buliangfanying" class="form-control" rows="5">
												</textarea>
											</div>	
											<div class="form-group">
												<label>用法用量</label>
												
												<textarea id="yongfayongliang" name="yongfayongliang" class="form-control" rows="5">
												</textarea>
											</div>	
											<div class="form-group">
												
											</div>	
											<div class="form-group">
												
											</div>	
											<div class="form-group">
												
											</div>	

																																																																																																																																																																																																																																																																												<div class="form-group">
													<label>用药指南</label>
													<input id="yongyaozhinanupload" name="file" type="file">
													<script id="yongyaozhinanEditor" type="text/plain" style="width:800px;height:230px;"></script>
													<script type="text/javascript">
														//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
													//相见文档配置属于你自己的编译器
													var yongyaozhinanUe = UE.getEditor('yongyaozhinanEditor', {
														toolbars: [
															[
																'undo', //撤销
																'bold', //加粗
																'redo', //重做
																'underline', //下划线
																'horizontal', //分隔线
																'inserttitle', //插入标题
																'cleardoc', //清空文档
																'fontfamily', //字体
																'fontsize', //字号
																'paragraph', //段落格式
																'inserttable', //插入表格
																'justifyleft', //居左对齐
																'justifyright', //居右对齐
																'justifycenter', //居中对
																'justifyjustify', //两端对齐
																'forecolor', //字体颜色
																'fullscreen', //全屏
																'edittip ', //编辑提示
																'customstyle', //自定义标题
																]
															]
														});
													</script>
													<input type="hidden" name="yongyaozhinan" id="yongyaozhinan-input">
												</div>
																																																																																																																											</form>
										</div>
									</div>
								</div>
								<div class="card-action">
									<button id="submitBtn" type="button" class="btn btn-success">提交</button>
									<button class="btn btn-danger">取消</button>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Custom template | don't include it in your project! -->
		<!-- End Custom template -->
	</div>
	<!--   Core JS Files   -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/core/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/core/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.form.js"></script>
	<!-- jQuery UI -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/plugin/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
	
	<!-- jQuery Scrollbar -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
	<!-- Atlantis JS -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/atlantis.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/assets/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/assets/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/assets/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/assets/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<!-- Atlantis DEMO methods, don't include it in your project! -->
	<!--<script src="${pageContext.request.contextPath}/resources/assets/js/setting-demo2.js"></script> -->
	
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   

		var tableName = "yongyaozhinan";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};
																																															
					      				      				      				      				      				      				      				      				      	
														function yaopinmingchengSelect2(){
					http("option/yaopinxinxi/yaopinmingcheng","GET",{
						tableName: "yaopinxinxi",
						columnName: "yaopinmingcheng"
					},(res)=>{
						if(res.code == 0){
							var options = res.data;
							var option = document.createElement("option");
							$("#yaopinmingchengSelect").append(option)
							for(var i=0;i<options.length;i++){
								var yaopinmingchengOption = document.createElement("option");
								yaopinmingchengOption.setAttribute("value",options[i]);
								yaopinmingchengOption.setAttribute("class","yaopinmingchengOption");
								if(ruleForm.yaopinmingcheng == options[i]){
									yaopinmingchengOption.setAttribute("selected","selected");
								}
								yaopinmingchengOption.innerHTML = options[i];
								$("#yaopinmingchengSelect").append(yaopinmingchengOption);
							}
						}
					});
				}
				function yaopinmingchengSelect2Change(){
					var options = document.getElementById("yaopinmingchengSelect").options;
					var index = document.getElementById("yaopinmingchengSelect").selectedIndex;
					var colVal = options[index].value;
					http("follow/yaopinxinxi/yaopinmingcheng","GET",{
						tableName: "yaopinxinxi",
						columnName: "yaopinmingcheng",
						columnValue: colVal
					},(res)=>{
						if(res.code == 0){
																																																						if(res.data != null && res.data.yaopinleixing != null){
										$("#yaopinleixing").val(res.data.yaopinleixing);
									}
																																																																																																															}
					});
				}	
																																										var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "yongyaozhinan/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});
		// 文件上传
		function upload(){
																																	$('#fengmiantupianupload').fileupload({
						url: baseUrl + 'file/upload',
						headers:{ token: window.sessionStorage.getItem("token")},
						dataType: 'json',
						done: function (e, data) {						
							document.getElementById('fengmiantupian-input').setAttribute('value',baseUrl+"upload/"+data.result.file);
							if(document.getElementById('fengmiantupianFileName') != null){
								document.getElementById('fengmiantupianFileName').innerHTML = data.result.file +"";
							}						
							$("#fengmiantupianImg").attr("src",baseUrl+"upload/"+data.result.file);
						}
					});
																														$('#yongyaozhinanupload').fileupload({
						url: baseUrl + 'file/upload',
						headers:{ token: window.sessionStorage.getItem("token")},
						dataType: 'json',
						done: function (e, data) {	
							UE.getEditor('yongyaozhinanEditor').execCommand('insertHtml','<img src=\"'+ baseUrl +'upload/'+ data.result.file + '\" width=900 height=560 >');					
						}
					});
																							}  
		// 表单提交
		function submit() {
			if(validform() ==true && compare() == true){
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				//console.log('json : ',json);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{				
					urlParam = 'save';
					successMes = '添加成功';
				}
				httpJson("yongyaozhinan/"+urlParam,"POST",data,(res)=>{
					if(res.code == 0){
						window.sessionStorage.removeItem('id');	
						let flag = true;
																																																																																																																																	if(flag){
							alert(successMes);
						}					
						if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == true){
							window.sessionStorage.removeItem('onlyme');
							window.location.href="${pageContext.request.contextPath}/index.jsp";
						}else{
							window.location.href="list.jsp";
						}
					}
				});
			}else{
				alert("表单未填完整或有错误");
			}
		}
		// 填充富文本框
		function setContent(){
																																														if(ruleForm.yongyaozhinan != null && ruleForm.yongyaozhinan != 'null' && ruleForm.yongyaozhinan != ''){
						var yongyaozhinanMes = '' + ruleForm.yongyaozhinan;
						var yongyaozhinanUeditor = UE.getEditor('yongyaozhinanEditor');
						yongyaozhinanUeditor.ready(function() {
							yongyaozhinanUeditor.setContent(yongyaozhinanMes);
						});
				}
																				}  
		// 获取富文本框内容
		function getContent(){
																																														if(UE.getEditor('yongyaozhinanEditor').hasContents()){
					$('#yongyaozhinan-input').attr('value',UE.getEditor('yongyaozhinanEditor').getPlainTxt());
				}
																				}
		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
					           				       			 	           										    yaopinmingcheng: {
														},
						       			 	           										    yaopinleixing: {
														},
						       			 	           										    fengmiantupian: {
														},
						       			 	           										    buliangfanying: {
														},
						       			 	           										    yongfayongliang: {
														},
						       			 	           										    yongyaozhinan: {
														},
						       			 	           										    thumbsupnum: {
															digits: true,
														},
						       			 	           										    crazilynum: {
															digits: true,
														},
						       			 					},
				messages: {
																													yaopinmingcheng: {
														},
																								yaopinleixing: {
														},
																								fengmiantupian: {
														},
																								buliangfanying: {
														},
																								yongfayongliang: {
														},
																								yongyaozhinan: {
														},
																								thumbsupnum: {
															digits: "请输入整数",
														},
																								crazilynum: {
															digits: "请输入整数",
														},
															}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
			jQuery.validator.addMethod("isIdCardNo", function(value, element) {
				return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
			}, "请正确输入您的身份证号码");
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				$("#submitBtn").addClass("修改");
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("yongyaozhinan/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
																																								yaopinmingchengSelect2();
																																																																																																														//注册表单验证
						$(validform());
					}
				});
			}else{
																								yaopinmingchengSelect2();	
																																																																																//注册表单验证
				$(validform());
			}
		}
		// 下拉框选项回显
		function setSelectOption(){
																																																																				}
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
							
											
											
											
											
											
											
											
											
										
		}
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
																																																																		
		}

		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;
																																																																				}
		function calculationSE(colName){
			//单列求和接口
			http("yongyaozhinan"+colName,"GET",{
				tableName: "yongyaozhinan",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}

		function calculationPre(){
			//进入该页面就填充"单列求和"的列
																																																																				}
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
												$("#zhinanbiaoti").val(ruleForm.zhinanbiaoti);	
											
																				$("#yaopinleixing").val(ruleForm.yaopinleixing);	
																$("#fengmiantupian-input").val(ruleForm.fengmiantupian);
																$("#buliangfanying-input").val(ruleForm.buliangfanying);
																$("#yongfayongliang-input").val(ruleForm.yongfayongliang);
																$("#yongyaozhinan").val(ruleForm.yongyaozhinan);	
											
											
									}
		//图片显示
		function showImg(){
																																	var fengmiantupianFileName = "\"" + ruleForm.fengmiantupian + "\"";
					$("#fengmiantupianImg").attr("src",ruleForm.fengmiantupian);
																																												}		
       //跨表

        //跨表
        function crossTable(){
            crossTableName = window.sessionStorage.getItem('crossTableName');
			crossTableId = window.sessionStorage.getItem('crossTableId');
            if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
				http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
					if(res.code == 0){
						crossRuleForm = res.data;
						$('#updateId').val(crossTableId);
												if(res.data != null && res.data != '' && res.data.zhinanbiaoti != null && res.data.zhinanbiaoti != ''){

															$("#zhinanbiaoti").val(res.data.zhinanbiaoti);
													}
												if(res.data != null && res.data != '' && res.data.yaopinmingcheng != null && res.data.yaopinmingcheng != ''){

							
																				}
												if(res.data != null && res.data != '' && res.data.yaopinleixing != null && res.data.yaopinleixing != ''){

															$("#yaopinleixing").val(res.data.yaopinleixing);
													}
												if(res.data != null && res.data != '' && res.data.fengmiantupian != null && res.data.fengmiantupian != ''){

															$("#fengmiantupianImg").attr("src",res.data.fengmiantupian);
								$("#fengmiantupian-input").val(res.data.fengmiantupian);
													}
												if(res.data != null && res.data != '' && res.data.buliangfanying != null && res.data.buliangfanying != ''){

															$("#buliangfanying-input").val(res.data.buliangfanying);
													}
												if(res.data != null && res.data != '' && res.data.yongfayongliang != null && res.data.yongfayongliang != ''){

															$("#yongfayongliang-input").val(res.data.yongfayongliang);
													}
												if(res.data != null && res.data != '' && res.data.yongyaozhinan != null && res.data.yongyaozhinan != ''){

															$("#yongyaozhinan").val(res.data.yongyaozhinan);
													}
												if(res.data != null && res.data != '' && res.data.thumbsupnum != null && res.data.thumbsupnum != ''){

							
																				}
												if(res.data != null && res.data != '' && res.data.crazilynum != null && res.data.crazilynum != ''){

							
																				}
											}
				});  
            }
            window.sessionStorage.removeItem('crossTableName');
			window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
																																																																																																												},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
																																																																					return true;
		}
		function readonly(){
			if(window.sessionStorage.getItem('role') != '管理员'){
				$('#jifen').attr('readonly','readonly');
				$('#money').attr('readonly','readonly');
			}
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
																																																												if(largerVal !=null && smallerVal != null){
				if(largerVal<=smallerVal){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}		

		// 用户登出
        <%@ include file="../../static/logout.jsp"%>

		$(document).ready(function() { 
			$('#projectName').html(projectName)
			//设置导航栏菜单
			setMenu();
			//设置左上角系统名
			if(projectName.length >14){
				$('.logo-header h2').html(projectName.substring(0,13)+'..')
			}else{
				$('.logo-header h2').html(projectName)
			}
			//设置右上角用户名
			$('.user-box .u-text h4').html(window.sessionStorage.getItem('username'))
			<%@ include file="../../static/color.js"%>
			<%@ include file="../../static/style.jsp"%>
			//初始化日期插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});	
			<%@ include file="../../static/myInfo.js"%>
			readonly();
		});
	</script>
</body>
</html>