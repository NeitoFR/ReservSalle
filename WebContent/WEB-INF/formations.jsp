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

.important {
	color: red;
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
										<c:if test="${querySuccess}">
											<div class="alert alert-success alert-dismissible fade show" role="alert">
												<strong>Enregistrement réussi !</strong> Voulez-vous être redirigé vers le <a href="calendrier" >calendrier</a>. 
												<button type="button" class="close" data-dismiss="alert" aria-label="Close">
												  <span aria-hidden="true">&times;</span>
												</button>
											</div>
										</c:if>
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
															<span class="important" id="erreurNomFormation"></span>
														</div>
													</div>
													<div class="form-group">
														<span class="col-md-1 col-md-offset-2 text-center"><i
															class="fa fa-calendar-alt bigicon"></i></span>
														<div class="col-md-12">
															<input id="date_Debut" name="date_Debut" type="date"
																placeholder="Date de début" class="form-control">
															<span class="important" id="erreurDateDebut"></span>
														</div>
													</div>

													<div class="form-group">
														<span class="col-md-1 col-md-offset-2 text-center"><i
															class="fa fa-number bigicon"></i></span>
														<div class="col-md-12">
															<input id="nb_Demi_Journee" name="nb_Demi_Journee"
																type="number" min="1"
																placeholder="Nombre de demie journée"
																class="form-control">
															<span class="important" id="erreurDemiJournee"></span>
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
															<span class="important" id="erreurSalles"></span>
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
															<span class="important" id="erreurFormateurs"></span>
														</div>
													</div>

													<div class="form-group">
														<span class="col-md-1 col-md-offset-2 text-center"><i
															class="fa fa-users bigicon"></i></span>
														<div class="col-md-12">
															<select name="classes_Liste" id="classes_Liste"
																class="form-control">
																<option value="0">--- Liste des classes ---</option>
																<c:forEach items="${classesListe}" var="classe">
																	<option value="${classe.id_Classe}">${classe.nom_Classe}</option>
																</c:forEach>
															</select>
															<span class="important" id="erreurClasses"></span>
														</div>
													</div>
								                    
								                    <div class="form-group">
			                                            <div class="custom-control custom-checkbox small col-md-8">
			                                                <input type="checkbox" class="custom-control-input"
			                                                    id="apres_Midi" name="apres_Midi" value="1"> <label
			                                                    class="custom-control-label" for="apres_Midi">Commence
			                                                    l'après midi ?</label>
			                                                <input id='apres_Midi_Hidden' type='hidden' value='0' name='apres_Midi'>
			                                            </div>
			                                        </div>

													<div class="form-group">
														<div class="col-md-12 text-center">
															<button id="enregistrementFormation" name="enregistrementFormation" type="submit" class="btn btn-primary btn-lg">Enregistrement</button>
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
	<script src="resources/static/js/formations.js"></script>
	
</body>

</html>