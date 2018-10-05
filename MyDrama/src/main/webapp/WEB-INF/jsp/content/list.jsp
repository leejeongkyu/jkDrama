<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html> 
<head> 
    <title>My Page</title> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link rel="stylesheet" href="/js/jquery_mobile/jquery.mobile-1.4.5.min.css" />
    <script src="/js/jquery/jquery-2.0.3.min.js" type="text/javascript"></script>
    <script src="/js/jquery_mobile/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>
        
    <script type="text/javascript">

        $(document).ready(function() {
//             alert('Hello');

			$.listType = function(type){
				
				var list_html = "";
				
				if(type == "1"){
					list_html = list_html + "<li><a href='javascript: $.listSub()'>셜록</a></li>";  
				}else if(type == "2"){
					list_html = list_html + "<li><a href='#'>황금빛내인생</a></li>";
				}else if(type == "3"){
					list_html = list_html + "<li><a href='#'>무한도전</a></li>";
				}else if(type == "4"){
					list_html = list_html + "<li><a href='#'>뽀로로</a></li>";
				}else if(type == "5"){
					list_html = list_html + "<li><a href='#'>기타</a></li>";
				}
				
				
				
				
// 				$("#listView").html(list_html);
				$('#data_list')[0].innerHTML = list_html;
// 				$('#data_list').listview();
				$('#data_list').listview("refresh");
			}
			
			$.listSub = function(){
				location.href = "/content/listSub.do";
			}
        });

    </script>
</head>
<body>
   
	<div data-role="page" id="list">

		<div data-role="header">
   			<a href="/main/main.do" class="ui-btn ui-btn-left ui-icon-home ui-btn-icon-left">Home</a>
			<h1>Page Title</h1>
		</div><!-- /header -->
	
		<div role="main" class="ui-content">
			 <div data-role="navbar">
	            <ul>
	                <li><a href="javascript: $.listType('1')">미드,영드</a></li>
	                <li><a href="javascript: $.listType('2')">한드</a></li>
	                <li><a href="javascript: $.listType('3')">예능</a></li>
	                <li><a href="javascript: $.listType('4')">애니</a></li>
	                <li><a href="javascript: $.listType('5')">기타</a></li>
	                <!-- <li><a href="javascript:">Six</a></li> --><!-- 6개가 넘어가면 행이 추가됨 -->
	            </ul>
	        </div>
			<ul data-role="listview" data-filter="true" data-filter-placeholder="Search fruits..." data-inset="true" id="data_list">
			    <li><a href="/detail.jsp?param=1">Apple</a></li>
			    <li><a href="#">Banana</a></li>
			    <li><a href="#">Cherry</a></li>
			    <li><a href="#">Cranberry</a></li>
			    <li><a href="#">Grape</a></li>
			    <li><a href="#">Orange</a></li>
			</ul>
		</div><!-- /content -->
	
		<div data-role="footer">
			<h4>Page Footer</h4>
		</div><!-- /footer -->
	</div><!-- /page -->
	
</body>
</html>

