<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="fr">

<%@include file="../header.jsp"%>

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
						<h1 class="h3 mb-0 text-gray-800">Résultat pour
							${selectedFormateur.nom}</h1>
					</div>
				</div>
				<!-- /.container-fluid -->

				<div class="container">
					<a href="chercher-formateur" class="nav-link">Retour a la
						recherche</a>

					<div id="wrapper">
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
																		<c:forEach items="${resultFormations}" var="formation">
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



					<!-- Page level custom scripts -->
					<script src="resources/static/js/demo/datatables-demo.js"></script>

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
</body>

</html>