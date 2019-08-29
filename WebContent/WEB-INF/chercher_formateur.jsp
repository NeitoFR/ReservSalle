<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="fr">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Réservation des salles</title>

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
	/*         float: right; */
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

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Recherche formateur</h1>
					</div>
				</div>
				<!-- /.container-fluid -->

				<div class="container">
					<div class="col-md-12">
						<form class="form-horizontal" method="post"
							action="chercher-formateur">
							<div class="form-group">
								<div class="col-md-8">
									<select name="selectedFormateur" id="selectedFormateur"
										class="form-control">
										<option value="0">--- Liste des formateurs ---</option>
										<c:forEach items="${liste_Formateurs}" var="formateur">
											<option value="${formateur.id_Formateur}">${formateur.nom}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-12 text-center">
									<button id="submit" class="btn btn-primary btn-lg">Submit</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- End of Main Content -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>


	<%@include file="../footer.jsp"%>
	<script>
		/* $(document).ready(function() {
			console.log("jQuery works");
			$("#formateurSelect").on('change',function() {
				console.log(this.value);
			})
		}) */
	</script>
</body>

</html>