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
						<h1 class="h3 mb-0 text-gray-800">Résultat pour --nom
							formateur--</h1>
					</div>
				</div>
				<!-- /.container-fluid -->

				<div class="container">
					<a href="chercher-formateur" class="nav-link">Retour a la recherche</a>
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