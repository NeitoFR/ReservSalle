<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<script src="resources/static/vendor/jquery/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="resources/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="resources/static/js/sb-admin-2.min.js"
		type="text/javascript"></script>
	<script src="resources/static/fullCalendar/js/jquery-ui.custom.min.js"
		type="text/javascript"></script>
	<script src="resources/static/fullCalendar/js/fullCalendar.js"
		type="text/javascript"></script>
	<script type="text/javascript">

$(document)
.ready(
function() {
	function ajoutDateDebutFormation(date, isDemiJournee){
		var annee = date.split("-")[0];
		var mois = date.split("-")[1] - 1;
		var jour = date.split("-")[2].substring(0,2);
		var hour = isDemiJournee == "true" ? 12 : 0;
		console.log("isDemiJournee", isDemiJournee)
		console.log("hour", hour)
		
		return new Date(annee, mois, jour, hour);
	}
	var i = 0
	function ajoutDemiJournee(date, nbDemiJournee, isDemiJournee){
		var annee = date.split("-")[0];
		var mois = date.split("-")[1] - 1;
		var jour = date.split("-")[2].substring(0,2);
		var hour = (nbDemiJournee * 12) - 1;
		var minute = 59;
		
		return new Date(annee, mois, jour, hour, minute)
	}
	
	var calendrierListe = [
	        <c:forEach items="${calendrierListe}" var="calendrier">
		        {
		        	title: "${calendrier.nom_Formation} - ${calendrier.formateur.nom}",
					start : ajoutDateDebutFormation("${calendrier.date_Debut}", "${calendrier.is_ApresMidi}"),
		        	end: ajoutDemiJournee("${calendrier.date_Debut}", "${calendrier.nb_DemiJournees}", "${calendrier.is_ApresMidi}"),
		    		allDay: false,
		        	className: 'important'
		        },
	        </c:forEach>
	   ];
	
	console.log(calendrierListe)
	
	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();

	/* initialize the external events-----------------------------------------------------------------*/

	$('#external-events div.external-event')
	.each(
			function() {

				// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
				// it doesn't need to have a start or end
				var eventObject = {
						title : $.trim($(
								this)
								.text())
								// use the element's text as the event title
				};

				// store the Event Object in the DOM element so we can get to it later
				$(this).data(
						'eventObject',
						eventObject);

				// make the event draggable using jQuery UI
				$(this).draggable({
					zIndex : 999,
					revert : true, // will cause the event to go back to its
					revertDuration : 0
					//  original position after the drag
				});

			});

	/* initialize the calendar-----------------------------------------------------------------*/

	var calendar = $('#calendar')
	.fullCalendar(
			{
				header : {
					left : 'title',
					center : 'agendaDay,agendaWeek,month',
					right : 'prev,next today'
				},
// 				editable : true,
				firstDay : 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
// 				selectable : true,
				defaultView : 'month',

				axisFormat : 'h:mm',
				columnFormat : {
					month : 'ddd', // Mon
					week : 'ddd d', // Mon 7
					day : 'dddd M/d', // Monday 9/7
					agendaDay : 'dddd d'
				},
				titleFormat : {
					month : 'MMMM yyyy', // September 2009
					week : "MMMM yyyy", // September 2009
					day : 'MMMM yyyy' // Tuesday, Sep 8, 2009
				},
// 				selectHelper : true,
// 				select : function(
// 						start, end,
// 						allDay) {
// 					var title = prompt('Event Title:');
// 					if (title) {
// 						calendar
// 						.fullCalendar(
// 								'renderEvent',
// 								{
// 									title : title,
// 									start : start,
// 									end : end,
// 									allDay : allDay
// 								},
// 								true // make the event "stick"
// 						);
// 					}
// 					calendar
// 					.fullCalendar('unselect');
// 				},
// 				droppable : true, // this allows things to be dropped onto the calendar !!!
// 				drop : function(date,
// 						allDay) { // this function is called when something is dropped

// 					// retrieve the dropped element's stored Event Object
// 					var originalEventObject = $(
// 							this)
// 							.data(
// 							'eventObject');

// 					// we need to copy it, so that multiple events don't have a reference to the same object
// 					var copiedEventObject = $
// 					.extend({},
// 							originalEventObject);

// 					// assign it the date that was reported
// 					copiedEventObject.start = date;
// 					copiedEventObject.allDay = allDay;

// 					// render the event on the calendar
// 					// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
// 					$('#calendar')
// 					.fullCalendar(
// 							'renderEvent',
// 							copiedEventObject,
// 							true);

// 					// is the "remove after drop" checkbox checked?
// 					if ($(
// 					'#drop-remove')
// 					.is(
// 					':checked')) {
// 						// if so, remove the element from the "Draggable Events" list
// 						$(this)
// 						.remove();
// 					}

// 				},
				events : calendrierListe,
			});

});
	</script>
</body>
</html>