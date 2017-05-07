(function($){
	$.extend($.fn.validatebox.defaults.rules, {
    numbersOnly: { 
    	validator: function(value){
    		return !isNaN(value);
    	},
    	message: '您输入的字符中包含非数字字符，请重新输入！'
    },
    yearsOnly: { 
    	validator: function(value){
    		var reg = new RegExp(/^\d{4}?$/);
    		return reg.test(value);
    	},
    	message: '请输入年份！'
    },
    integersOnly: { 
    	validator: function(value){
    		var reg = new RegExp(/^[1-9]+\d*?$/);
    		return reg.test(value);
    	},
    	message: '请输入整数！'
    },
    
    floatCheck: { 
    	validator: function(value){
    		//var reg = new RegExp(/^[0-9]+(.[0-9]{1,2})?$/);
    		var reg = new RegExp(/^\d{1,8}(\.\d{1,2})?$/);
    		
    		return reg.test(value);
    	},
    	message: '请输入最多8位整数2位小数的数字！'
    },
    
    /**
     * 汉字的长度限制检查
     */
    characterLength: { 
    	validator: function(value, param){
    		return value.length<=param[0];
    	},
    	message: '您输入的内容长度超过了限制，请确保您的输入在{0}个汉字以内）!'
    },
    
    charLength: { 
  		validator: function(value, param){
  			return value.length<=param[0];
  		},
  		message: '您输入的内容长度超过了限制，请确保您的输入在{0}个字符以内!'
  	},
  	
  	exceptChinese:{
  		validator : function(value){
  			var reg = new RegExp(/[\u4e00-\u9fa5]/);
  			return !reg.test(value);
  		},
  		message: '您输入的内容包含汉字，请重新输入！'
  	},
  	
  	date: { 
  		validator: function(value){
  			//var reg = new RegExp(/(([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8]))))|((([0-9]{2})(0[48]|[2468][048]|[13579][26])|((0[48]|[2468][048]|[3579][26])00))-02-29)/);
  			var reg = new RegExp(/^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$/);
  			return reg.test(value);
  		},
  		message: '您输入的日期格式有误，正确的格式是：YYYY-MM-DD。示例：2014-08-01'
  	},
  	
  	dateCompareNow: { //与当前时间作比较
  		validator: function(value){
  			if(value!=null && value!=""){
  				var date = new Date();
  				var year = date.getFullYear();
  				var month = date.getMonth()+1;
  				var day = date.getDate();
  				var hour = date.getHours();
  				var minute = date.getMinutes();
  				var second = date.getSeconds();
  				if(month<10){
  					month = "0"+month;
  				}
  				if(day<10){
  					day = "0"+day;
  				}
  				if(hour<10){
  					hour = "0"+hour;
  				}
  				if(minute<10){
  					minute = "0"+minute;
  				}
  				if(second<10){
  					second = "0"+second;
  				}
  				var curTime = year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
  				if(curTime>value){
  					return false;
  				}else{
  					return true;
  				}
  			}else{
				return true;
			}
  		},
  		message: '时间不能小于当前时间！'
	},
	
	dateGreaterNow: { //与当前时间作比较
  		validator: function(value){
  			if(value!=null && value!=""){
  				var date = new Date();
  				var year = date.getFullYear();
  				var month = date.getMonth()+1;
  				var day = date.getDate();
  				var hour = date.getHours();
  				var minute = date.getMinutes();
  				var second = date.getSeconds();
  				if(month<10){
  					month = "0"+month;
  				}
  				if(day<10){
  					day = "0"+day;
  				}
  				if(hour<10){
  					hour = "0"+hour;
  				}
  				if(minute<10){
  					minute = "0"+minute;
  				}
  				if(second<10){
  					second = "0"+second;
  				}
  				var curTime = year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
  				if(curTime<value){
  					return false;
  				}else{
  					return true;
  				}
  			}else{
				return true;
			}
  		},
  		message: '时间不能大于当前时间！'
	},
  	
	dateCompare: { 
  		validator: function(value,param){
  			//param为开始时间控件的id
  			var startDate = $("#"+param).datebox('getText');
  			if(startDate!=null && startDate!="" && value!=null && value!=""){
  				if(startDate>value){
  					return false;
  				}else{
  					return true;
  				}
  			}else{
				return true;
			}
  		},
  		message: '结束时间不能小于开始时间！'
	},
	
	floatCompare: { 
  		validator: function(value,param){
  			var smallFloat = $("#"+param).textbox('getText');
  			var reg = new RegExp(/^[0-9]+(.[0-9]{1,2})?$/);
  			if(!reg.test(value)){
  				return false;
  			}
  			if(smallFloat!=null && smallFloat!="" && value!=null && value!=""){
  				if(parseFloat(smallFloat)>parseFloat(value)){
  					return false;
  				}else{
  					return true;
  				}
  			}else{
				return true;
			}
  		},
  		message: '数字填写有误！'
	},
	
	
	datetimeCompare: { 
  		validator: function(value,param){
  			//param为开始时间控件的id
  			var startDatetime = $("#"+param).datetimebox('getText');
  			if(startDatetime!=null && startDatetime!="" && value!=null && value!=""){
  				if(startDatetime>=value){
  					return false;
  				}else{
  					return true;
  				}
  			}else{
				return true;
			}
  		},
  		message: '结束时间需大于开始时间！'
	},
	
  	numberCompare: { 
  		validator: function(value,param){
  			//param为开始数字控件的id
  			var startNum = $("#"+param).numberbox('getValue');
  			if(startNum!=null && startNum!="" && value!=null && value!=""){
  				if( parseFloat(startNum)>parseFloat(value)){
  					return false;
  				}else{
  					return true;
  				}
  			}else{
  				return true;
  			}
  		},
  		message: '结束值不能小于开始值！'
  	},
  	
  	fileNameCheck:{
  		validator:function(value,param){
  			if(value == param[0]){
  				return true;
  			}
  			var foo;
  			$.ajax({
  				url:getContextPath()+'/law/file_validName.action?name='+value,
  				async:false,
  				dataType:'json',
  				method:'post',
  				success:function(r){
  					foo = r;
  				}
  			});
  			return foo;
  		},
  		message: '名称已存在'
  	},
  	
	code: {// 验证编码
        validator: function (value,param) {
        	if (value.length >= param[0]){
        		return false;
        	}
            return /^[A-Za-z0-9_!@#$%^&*()\-]+$/i.test(value);  
        },  
        message: '输入内容不正确或长度超过{0}位'  
    },
  	telephone:{//验证联系方式 固话或手机均可通过
        validator: function (value) {  
            var reg = /^1[3|4|5|8|9]\d{9}$/;  
            var reg_phone = /^((\(\d{2,3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$/i;
            if(reg.test(value) || reg_phone.test(value)){
            	return true;
            }
            return false;
        },
        message: "请输入正确的固话或手机号码"  
    }
	});
})(jQuery);

/**
 * 初始化日期   去中间的时区符号 
 * @param val
 * @param row
 * @returns {String}
 */
function myformatter(val, row){
	
	if(val!=null && val!=""){
		
		var newDate = val.substr(0,10);
		var part2 = val.substr(11,val.length-1);
		return newDate+" "+part2;
	}
	
	/*var browser = myBrowser();
	var H;
	if(val){
		var date = new Date(val);
		var y = date.getFullYear();
		var m = date.getMonth()+1;
		var d = date.getDate();
		if(browser == "Chrome"){
			H = date.getHours()-8;
		}else{
			H = date.getHours();
		}
		var M = date.getMinutes();
		var s = date.getSeconds();
		return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d)+' '+(H<10?('0'+H):H)+':'+(M<10?('0'+M):M)+':'+(s<10?('0'+s):s);
	}*/
}

function formatDatetimeBox(val){
	var browser = myBrowser();
	var date = new Date(val);
	var y = date.getFullYear();
	var m = date.getMonth()+1;
	var d = date.getDate();
	if(browser == "Chrome"){
	//	H = date.getHours()-8;
	}else{
// 		H = date.getHours();
	}
	var H = date.getHours();
	var M = date.getMinutes();
	var s = date.getSeconds();
	return m+"/"+d+"/"+y+" "+H+":"+M+":"+s;
}

function myparser(s){
	if (!s) 
		return new Date();
	var ss = (s.split('-'));
	var y = parseInt(ss[0],10);
	var m = parseInt(ss[1],10);
	var d = parseInt(ss[2],10);
	if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
		return new Date(y,m-1,d);
	} else {
		return new Date();
	}
}


//表格日期格式化 easyUI
function formatterdate(val, row) {
	if(val!=null && val!=""){
		var newDate = val.substr(0,10);
		return newDate;
	}
}

/***jquery扩展函数  form转json **/
$.fn.serializeObject = function() {
	var o = {};
	var a = this.serializeArray();
	$.each(a, function() {
		if (o[this.name]) {
			if (!o[this.name].push) {
				o[this.name] = [ o[this.name] ];
			}
			o[this.name].push(this.value || '');
		} else {
			o[this.name] = this.value || '';
		}
	});
	return o;
};
function getContextPath() {
    var pathName = document.location.pathname;
    var index = pathName.substr(1).indexOf("/");
    var result = pathName.substr(0,index+1);
    return result;
}

function myBrowser(){
    var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
    var isOpera = userAgent.indexOf("Opera") > -1;
    if (isOpera) {
        return "Opera";
    } //判断是否Opera浏览器
    if (userAgent.indexOf("Firefox") > -1) {
        return "FF";
    } //判断是否Firefox浏览器
    if (userAgent.indexOf("Chrome") > -1){
	  return "Chrome";
	}
    if (userAgent.indexOf("Safari") > -1) {
        return "Safari";
    } //判断是否Safari浏览器
    if (userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera) {
        return "IE";
    } //判断是否IE浏览器
}
