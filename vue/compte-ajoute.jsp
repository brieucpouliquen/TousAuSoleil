<%@ page import="modele.Compte" %>
<% Compte log = Compte.getCompte((String) session.getAttribute("log")); %>
<%
	int s = (int) request.getAttribute("statut");
	String msg="";
	if(s<1) {
		if(s==0) {
			msg="Nous sommes d&eacute;sol&eacute;, votre compte n'a pas pu &ecirc;tre cr&eacute;&eacute;.";
		}
		else {
			msg="Cet identifiant est d&eacute;ja utilis&eacute;, veuillez r&eacute;essayer<br/><a href='index.html'>Retour</a>";
		}
	}
%>
<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <title>Tous au soleil | Cr&eacute;ation de compte</title>
</head>
<body>
	<header>
		<h1>Cr&eacute;ation de compte</h1>
	</header>
	<section>
		<% if(s>0) { %>
			<p>F&eacute;licitations M./Mme. <%=log.getNom() %>, votre compte a bien &eacute;t&eacute; cr&eacute;&eacute;.
			<br/><a href="accueil">Aller &agrave; l'accueil</a></p>
		<% } else { %>
			<p><%=msg %></p>
		<% } %>
	</section>
	<footer>
		<p><a href="deconnexion">Se d&eacute;connecter</a></p>
	</footer>
</body>
</html>