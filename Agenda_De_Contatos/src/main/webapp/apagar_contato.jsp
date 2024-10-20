<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="contatos" class="br.edu.ifsp.dws_1.ContatosBean" scope="application"></jsp:useBean>

<%
	var id = Long.valueOf(request.getParameter("id"));
	boolean sucesso = false;
	
	var contato = contatos.buscaPorId(id);
	if(contato != null){
		contatos.remove(contato);
		sucesso = true;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% if(sucesso) { %>

<h1>Contato apagado com sucesso!</h1>

<%}else{ %>
<h1>Erro ao apagar contato!</h1>

<%} %>

	<a href="index.jsp">Voltar</a>


</body>
</html>