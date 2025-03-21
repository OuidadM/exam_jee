<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Gestion des Emprunts</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-dark bg-dark p-3">
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1 text-white">Gestion des Emprunts</span>
  </div>
</nav>

<div class="container mt-4">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header bg-secondary text-white">
          Liste des Emprunts
        </div>
        <div class="card-body">
          <table class="table table-striped table-hover">
            <thead class="table-dark">
            <tr>
              <th>ID</th>
              <th>Utilisateur</th>
              <th>Document</th>
              <th>Date d'emprunt</th>
              <th>Date de retour</th>
              <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="borrow" items="${borrows}">
              <tr>
                <td>${borrow.id}</td>
                <td>
                  <a href="users?userId=${borrow.user.id}">
                      ${borrow.user.nom} ${borrow.user.prenom}
                  </a>
                </td>
                <td>
                  <a href="documents?docId=${borrow.document.id}">
                      ${borrow.document.title}
                  </a>
                </td>
                <td>${borrow.dateBorrow}</td>
                <td>${borrow.dateRetour}</td>
                <td>
                  <a href="borrows?editId=${borrow.id}" class="btn btn-warning btn-sm mb-2">Éditer</a>
                  <a href="#" onclick="confirmDelete('${borrow.id}')" class="btn btn-danger btn-sm">Supprimer</a>
                  <script>
                    function confirmDelete(borrowId) {
                      if (confirm("Voulez-vous vraiment supprimer cet emprunt ?")) {
                        window.location.href = 'borrows?deleteId=' + borrowId;
                      }
                    }
                  </script>
                </td>
              </tr>
            </c:forEach>
            </tbody>
          </table>
          <c:if test="${empty borrows}">
            <p class="text-center text-muted">Aucun emprunt trouvé.</p>
          </c:if>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>
