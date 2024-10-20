<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">Request de Site</title>
</head>
<body>
	<div class="search-container">
		<input type="text" id="text-search" name="text-search" value="Digite sua pesquisa..">
		<h4>Selecione o Buscador</h1>		
		<form action="search.jsp" method="post">
			<div class="opcoes-container">
			<label>Google</label>
			<input type="radio" id="google-radio" name="google-radio">
			<label>DuckDuckDuck</label>
			<input type="radio" id="duck-radio" name="duck-radio">
			<label>Firefox</label>
			<input type="radio" id="firefox-radio" name="firefox-radio">
			<label>Bing</label>
			<input type="radio" id="bing-radio" name="bing-radio">
			</div>
			<br>
			<input type="submit" value="Pesquisar">
		</form>
	</div>
</body>
</html>