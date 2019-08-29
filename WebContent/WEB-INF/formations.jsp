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

<!-- Custom fonts for this template-->
<link href="resources/static/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template-->
<link href="resources/static/css/sb-admin-2.min.css" rel="stylesheet">
<style type="text/css">
.center_div{
    margin: 0 auto;
    min-width: 80% /* value of your choice which suits your alignment */
}
</style>

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
											<h6 class="m-0 font-weight-bold text-primary">Ajouter
												une formation</h6>
										</div>
										<div class="card-body center_div">
											<form class="form-horizontal" method="post"
												action="formations">
												<fieldset>
													<div class="form-group">
														<span class="col-md-1 col-md-offset-2 text-center"><i
															class="fa fa-user bigicon"></i></span>
														<div class="col-md-12">
															<input id="nom_Formation" name="nom_Formation"
																type="text" placeholder="Nom de la formation"
																class="form-control">
														</div>
													</div>
													<div class="form-group">
														<span class="col-md-1 col-md-offset-2 text-center"><i
															class="fa fa-calendar-alt bigicon"></i></span>
														<div class="col-md-12">
															<input id="date_Debut" name="date_Debut" type="date"
																placeholder="Date de début" class="form-control">
														</div>
													</div>

													<div class="form-group">
														<span class="col-md-1 col-md-offset-2 text-center"><i
															class="fa fa-number bigicon"></i></span>
														<div class="col-md-12">
															<input id="nb_Demi_Journee" name="nb_Demi_Journee"
																type="number"
																placeholder="Nombre de demie journée"
																class="form-control">
														</div>
													</div>

													<div class="form-group">
														<span class="col-md-1 col-md-offset-2 text-center"><i
															class="fa fa-number bigicon"></i></span>
														<div class="col-md-12">
															<input id="apres_Midi" name="nb_Demi_Journee"
																type="checkbox"
																placeholder="Nombre de demie journée"
																class="form-control">
														</div>
													</div>

													<div class="form-group">
														<span class="col-md-1 col-md-offset-2 text-center"><i
															class="fa fa-door-open bigicon"></i></span>
														<div class="col-md-12">
															<select name="salles_Liste" id="salles_Liste"
																class="form-control">
																<option value="0">--- Liste des salles ---</option>
																<c:forEach items="${sallesListe}" var="salle">
																	<option value="${salle.id_Salle}">${salle.nom_Salle}</option>
																</c:forEach>
															</select>
														</div>
													</div>

													<div class="form-group">
														<span class="col-md-1 col-md-offset-2 text-center"><i
															class="fa fa-users bigicon"></i></span>
														<div class="col-md-12">
															<select name="formateurs_Liste" id="formateurs_Liste"
																class="form-control">
																<option value="0">--- Liste des formateurs ---</option>
																<c:forEach items="${formateursListe}" var="formateur">
																	<option value="${formateur.id_Formateur}">${formateur.nom}</option>
																</c:forEach>
															</select>
														</div>
													</div>

													<div class="form-group">
														<span class="col-md-1 col-md-offset-2 text-center"><i
															class="fa fa-users bigicon"></i></span>
														<div class="col-md-12">
															<select name="classesListe" id="classesListe"
																class="form-control">
																<option value="0">--- Liste des classes ---</option>
																<c:forEach items="${classesListe}" var="classe">
																	<option value="${classe.id_Classe}">${classe.nom_Classe}</option>
																</c:forEach>
															</select>
														</div>
													</div>

													<div class="form-group">
														<div class="col-md-12 text-center">
															<button type="submit" class="btn btn-primary btn-lg">Submit</button>
														</div>
													</div>
												</fieldset>
											</form>
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
  <script src="resources/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
	<!-- Custom scripts for all pages-->
	<script src="resources/static/js/sb-admin-2.min.js"></script>
</body>

</html>