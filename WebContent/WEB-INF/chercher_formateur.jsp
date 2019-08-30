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
                            <form class="form-horizontal" method="post" action="chercher-formateur">
                                <fieldset>
                                    <div class="form-group">
                                        <div class="col-md-8">
                                            <select class="form-control" name="nom_Formateur" id="nom_Formateur">
                                                <option value="">--Please choose an option--</option>
                                                    <c:forEach var="p" items="${formateursListe}">
                                                <option value='<c:out value="${p.id_Formateur}"/>'><c:out value="${p.nom}"/></option>
                                                    </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12 text-center">
                                            <button type="submit" class="btn btn-primary btn-lg">Rechercher</button>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="container-fluid">

                <!-- Page Heading -->
                <%--<div class="d-sm-flex align-items-center justify-content-between mb-4">--%>
                    <%--<h1 class="h3 mb-0 text-gray-800">Recherche formateur</h1>--%>
                <%--</div>--%>

                <%--<form class="form-horizontal" method="post" action="chercher-formateur">--%>
                    <%--<fieldset>--%>
                        <%--<div class="form-group">--%>
                            <%--<select class="form-control" name="nom_Formateur" id="nom_Formateur">--%>
                            <%--<option value="">--Please choose an option--</option>--%>
                            <%--<c:forEach var="p" items="${formateursListe}">--%>
                                <%--<option value='<c:out value="${p.id_Formateur}"/>'><c:out value="${p.nom}"/></option>--%>
                            <%--</c:forEach>--%>
                        <%--</select>--%>
                        <%--</div><div class="form-group">--%>
                        <%--<button type="submit" class="btn btn-primary btn-lg">Rechercher</button></div>--%>
                    <%--</fieldset>--%>
                <%--</form>--%>
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