<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Calendrier</title>
	<link href='resources/static/fullCalendar/css/fullcalendar.css'
		rel='stylesheet' />
	<link href='resources/static/fullCalendar/css/fullcalendar.print.css'
		rel='stylesheet' media='print' />
	<!-- Custom fonts for this template-->
	<link href="resources/static/vendor/fontawesome-free/css/all.min.css"
		rel="stylesheet" type="text/css">
	
	<!-- Custom styles for this template-->
	<link href="resources/static/css/sb-admin-2.min.css" rel="stylesheet">
	<style>
	#external-events {
		float: left;
		width: 150px;
		padding: 0 10px;
		text-align: left;
	}
	
	#external-events h4 {
		font-size: 16px;
		margin-top: 0;
		padding-top: 1em;
	}
	
	.external-event { /* try to mimick the look of a real event */
		margin: 10px 0;
		padding: 2px 4px;
		background: #3366CC;
		color: #fff;
		font-size: .85em;
		cursor: pointer;
	}
	
	#external-events p {
		margin: 1.5em 0;
		font-size: 11px;
		color: #666;
	}
	
	#external-events p input {
		margin: 0;
		vertical-align: middle;
	}
	
	#calendar {
		/* 		float: right; */
		margin: 0 auto;
		width: 900px;
		background-color: #FFFFFF;
		border-radius: 6px;
		box-shadow: 0 1px 2px #C3C3C3;
	}
	</style>
</head>
<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<%@include file="../sidebar.jsp"%>
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Begin Page Content -->
				<div class="container-fluid">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="well well-sm mt-5 mb-5">
									<div id='calendar'></div>

									<div style='clear: both'></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="resources/static/vendor/jquery/jquery.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="resources/static/js/sb-admin-2.min.js"></script>
	<script src='resources/static/fullCalendar/js/jquery-ui.custom.min.js'
		type="text/javascript"></script>
	<script src='resources/static/fullCalendar/js/fullcalendar.js'
		type="text/javascript"></script>
	<script src='resources/static/fullCalendar/js/fullCalendarCustomize.js'
		type="text/javascript"></script>
</body>
</html>