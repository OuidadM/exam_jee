<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Gestion de Bibliothèque</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <div class="d-flex flex-wrap">
      <a href="biblio?demande=listeDocument" class="btn btn-light m-2">Lister Documents Disponibles</a>
      <a href="biblio" class="btn btn-light m-2">Lister Emprunts en Cours</a>
      <a href="biblio" class="btn btn-light m-2">Retourner un Document</a>
      <a href="biblio" class="btn btn-light m-2">Emprunter un Document</a>
      <a href="biblio" class="btn btn-light m-2">Enregistrer Utilisateur</a>
      <a href="biblio" class="btn btn-light m-2">Ajouter un Livre ou un Magazine</a>
    </div>
  </div>
</nav>

<div class="container text-center mt-5">
  <h1>Bienvenue dans la gestion de la bibliothèque</h1>
  <p>Utilisez les boutons ci-dessus pour naviguer.</p>
</div>

<script src="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
