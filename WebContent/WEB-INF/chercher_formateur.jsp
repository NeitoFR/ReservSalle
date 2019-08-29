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
									<button id="submit"	 class="btn btn-primary btn-lg">Submit</button>
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