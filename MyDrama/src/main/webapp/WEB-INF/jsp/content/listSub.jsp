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

			$.detailView = function(type){
				location.href="/content/detail.do";
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
			    <li><a href="javascript: $.detailView('1');">셜록1</a></li>
			    <li><a href="#">셜록2</a></li>
			</ul>
		</div><!-- /content -->
	
		<div data-role="footer">
			<h4>Page Footer</h4>
		</div><!-- /footer -->
	</div><!-- /page -->
	
</body>
</html>

