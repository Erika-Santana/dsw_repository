
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<header><h1>Formulário</h1></header>

<form action="exercicio_1.jsp" method="get">

	<label>Insira seu nome:</label><br>
	<input type="text" id="text_name" name="texto_nome" required="required"> <br>
	
	<label>Insira seu email:</label><br>
	<input type="email" id="text_email" name="texto_email" required="required"><br>
	
	<label>Insira seu ano de nascimento:</label><br>
	<input type="number" id="numero_nascimento" name="numero_nascimento" required="required"><br>
	
	<input type="submit" value="Enviar" class="button">
</form>

<%
	try{
		String nomeRequest = request.getParameter("texto_nome");
		String emailRequest = request.getParameter("texto_email");
		int anoRequest = Integer.valueOf(request.getParameter("numero_nascimento"));
	
		out.print("<h3>Bem vindo, " + nomeRequest + "! Seu email é <a href="+ emailRequest + ">"+ emailRequest + "</a> e você tem " + (2024 - anoRequest) + " anos.</h3>");

	}catch(NumberFormatException numberException ){
		numberException.printStackTrace();
	}
%>	

</body>
</html>