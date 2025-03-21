<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Gestion des Documents</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-dark bg-dark p-3">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1 text-white">Gestion des Documents</span>
  </div>
</nav>

<div class="container mt-4">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header bg-secondary text-white">
          Liste des Documents
        </div>
        <div class="card-body">
          <table class="table table-striped table-hover">
            <thead class="table-dark">
            <tr>
              <th>ID</th>
              <th>Titre</th>
              <th>Date de Création</th>
              <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="document" items="${documents}">
              <tr>
                <td>${document.id}</td>
                <td>${document.title}</td>
                <td>${document.dateCreat}</td>
                <td>
                  <a href="documents?editId=${document.id}" class="btn btn-warning btn-sm mb-2">Éditer</a>
                  <a href="#" onclick="confirmDelete('${document.id}')" class="btn btn-danger btn-sm">Supprimer</a>
                  <script>
                    function confirmDelete(docId) {
                      if (confirm("Voulez-vous vraiment supprimer ce document ?")) {
                        window.location.href = 'documents?deleteId=' + docId;
                      }
                    }
                  </script>
                </td>
              </tr>
            </c:forEach>
            </tbody>
          </table>
          <c:if test="${empty documents}">
            <p class="text-center text-muted">Aucun document trouvé.</p>
          </c:if>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
