<%@ page pageEncoding="UTF-8" %>
<!-- Bibliothèque JSTL core : tests conditionnels et boucles -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Bibliothèque JSTL fmt : formatage des données -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Bibliothèque JSTL SQL : accès aux bases de données -->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!-- Bibliothèque JSTL xml -->
 <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<!-- Bibliothèque JSTL fn : traitement des strings -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Test</title>
</head>
<body>
<p>Ceci est une page générée depuis une JSP.</p>
<p>
    <%
        String test = (String) request.getAttribute("test");
        out.println( test );
    %>
</p>
</body>
</html>