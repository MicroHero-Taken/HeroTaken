<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<meta http-equiv="refresh" content="6;url=${pageContext.request.contextPath}/pages/missionDisplay.jsp">
		<title>Taken</title>
		<link rel="stylesheet" type="text/css" href="css/defaults.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>
	<body>
		<div class="container">	
			<div class="os-phrases" id="os-phrases">
				
				<h2>Mission</h2>
				
				
				<h2>Start</h2>
			
				
			
			</div>
		</div><!-- /container -->
		<script src="http://libs.useso.com/js/jquery/1.9.1/jquery.min.js"></script>
		<script src="js/jquery.lettering.js"></script>
		<script>
			$(document).ready(function() {
				$("#os-phrases > h2").lettering('words').children("span").lettering().children("span").lettering(); 
			})
		</script>
	</body>
</html>