<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Créer une formation</title>
<!-- Custom fonts for this template -->
<link href="resources/static/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="resources/static/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="resources/static/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
</head>
<body id="page-top">
	<div id="wrapper">
		<%@include file="../sidebar.jsp"%>
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<div class="container-fluid">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="well well-sm mt-5 mb-5">
									<div class="card shadow mb-4">
										<div class="card-header py-3">
											<h6 class="m-0 font-weight-bold text-primary">Recherche
												sur les formateurs</h6>
										</div>
										<div class="card-body">
											<div class="table-responsive">
												<table class="table table-bordered" id="dataTable"
													width="100%" cellspacing="0">
													<thead>
														<tr>
															<th>Nom du formateur</th>
															<th>Nom de formation</th>
															<th>Nom de la classe</th>
															<th>Nom de la salle</th>
															<th>Nb demi-journées</th>
															<th>Date de début</th>
															<th>Commence l'après-midi</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach items="${fomationsListe}" var="formation">
															<tr>
																<td>${formation.formateur.nom}</td>
																<td>${formation.nom_Formation}</td>
																<td>${formation.classe.nom_Classe}</td>
																<td>${formation.salle.nom_Salle}</td>
																<td>${formation.nb_DemiJournees}</td>
																<td>${formation.date_Debut}</td>
																<td>${formation.is_ApresMidi ? "Oui" : "Non"}</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<!-- Bootstrap core JavaScript-->
	<script src="resources/static/vendor/jquery/jquery.min.js"></script>
	<script
		src="resources/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!--   <!-- Core plugin JavaScript-->

	<script
		src="resources/static/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!--   <!-- Custom scripts for all pages-->
	<script src="resources/static/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="resources/static/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="resources/static/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
		  $('#dataTable').DataTable();
		});
	</script>
</body>

</html>