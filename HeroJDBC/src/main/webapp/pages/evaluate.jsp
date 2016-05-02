<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Taken</title>
<link rel="stylesheet" type="text/css" href="../css/default.css" />
<link rel="stylesheet" type="text/css" href="../css/demo.css" />
<link href="../css/css.css" rel="stylesheet" type="text/css">
<link href="../css/progression.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../css/start-demo.css" />
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css'>
<style>

<div class="htmleaf-container">
		<header class="htmleaf-header">
			<h1>CONTACT FORM<span></span></h1>
			<div class="htmleaf-links">

			</div>
#demo5 {
	position: fixed;
	bottom: 10PX;
	right: -10%;
	width: 10px;
}

#myform {
	width: 500px;
	margin: 0 auto;
}

label {
	display: block;
	width: 180%;

}

input, textarea {
	width: 100%;
}
</style>
</head>
<body>

<header class="htmleaf-header">
			<h1>Evaluate<span></span></h1>
</header>


	<h3></h3>
	<form id="myform">
		<!-- 						<p> -->
		<!-- 							<label for="">Click on a field</label> -->
		<!-- 							<input  data-progression type="text" data-helper="Help users through forms by prividing helpful hinters" name="name" value="" placeholder=""> -->
		<!-- 						</p> -->



<!-- 		<div> -->
<!-- 			<label for="">commentary:</label>  -->
<!-- 				<input -->
<!-- 					data-progression type="text" -->
<!-- 					data-helper="Tracks users progress when filling in forms" -->
<!-- 					name="commentary" value="" placeholder=""> -->
<!-- 		</div> -->

		<div id="demo5" class="demo" style="display:block; margin:10px; padding:10px; ">

			<span id="rate" class="ratyli" data-rate="" data-ratemax="5"></span>
		
		</div>
		<div>
			<input id="ok" type="submit" class="button" name="" value="OK !"
				placeholder="" >
		</div>

	</form>

	<!-- /container -->
	<script type="text/javascript"></script>
	<script>
		window.jQuery=document.write('<script src="../js/jquery-2.1.1.min.js"><\/script>')
	</script>
	<script src="../js/jquery.ratyli.js"></script>
	<script src="../js/demo.js"></script>

	<script type="text/javascript">
	$("#rate").click(function(){
		var rate = $("#rate").attr('data-rate');
		console.log(rate);
	})
	</script>

</body>
</html>