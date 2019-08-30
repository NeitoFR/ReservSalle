<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">

<%@include file="../header.jsp" %>

<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper">
    <%@include file="../sidebar.jsp" %>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">
            <!-- Begin Page Content -->
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="well well-sm">
                                <fieldset>
                                    <div class="form-group">
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
                                                        <c:forEach items="${formation_Formateur}" var="formation">
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
                                </fieldset>
                        </div>
                    </div>
                </div>

                <div class="container-fluid">
                </div>
                <!-- /.container-fluid -->

                <div class="container">
                </div>
            </div>
            <!-- End of Main Content -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>


    <%@include file="../footer.jsp" %>
</body>

</html>