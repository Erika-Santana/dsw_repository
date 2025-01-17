<%@page import="br.edu.ifsp.dws_1.Contato"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<jsp:useBean id="contatos" class="br.edu.ifsp.dws_1.ContatosBean" scope="application"></jsp:useBean>
<%

	String nome  = request.getParameter("nome");
	String telefone  = request.getParameter("telefone");
	String email  = request.getParameter("email");
	boolean inserido = false;
	
	if(nome != null){
		Contato contato = new Contato(nome, telefone, email);
		contatos.insere(contato);
		inserido = true;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Novo Contato</title>
</head>
<body>
<% if(!inserido) {%>

	<form action="novo_contato.jsp">
		<label for="nome">Nome:</label>
		<input type="text" id="nome" name="text_name" required="required"><br><br>
		
		<label for="telefone">Telefone:</label>
		<input type="text" id="telefone" name="text_telefone" required="required"><br><br>
		
		<label for="email">Email</label>
		<input type="email" id="email" name="text_email" required="required"><br><br>
		
		<input type="button" id="botao" name="botao_enviar">
	</form>
	
<%} else{ %>
	<h1>Contato inserido com sucesso.</h1>
	<a href="index.jsp">Back</a>	
<%} %>
</body>
</html>