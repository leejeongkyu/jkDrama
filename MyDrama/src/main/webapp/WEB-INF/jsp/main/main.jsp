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

			$.goList = function(){
				location.href="/content/list.do";
			}
        });

    </script>
</head>

<body>
    <div data-role="page">
	    <div data-role="header">
   			<a href="/main/main.do" class="ui-btn ui-btn-left ui-icon-home ui-btn-icon-left">Home</a>
			<h1>Page Title</h1>
		</div><!-- /header -->
		
	    <div role="main" class="ui-content">
	        환영합니다. 많이 즐겨주세요. 
			<ul data-role="listview" data-inset="true">
			    <li><a href="javascript: $.goList( );" data-transition="slide">들어가기</a></li>
			</ul>
		</div><!-- /content -->
	        
        
	    
	    <div data-role="footer">
			<h4>Page Footer</h4>
	    </div><!-- /footer -->
    </div><!-- /page -->
    </body>
</html>