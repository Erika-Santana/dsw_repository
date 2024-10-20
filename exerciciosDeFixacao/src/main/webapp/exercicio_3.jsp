<%@page import="java.io.IOException"%>
<%@page import="java.text.Normalizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Palindromo</title>
</head>
<body>

	<form action="exercicio_3.jsp" method="GET">
			<h1>Palíndromo</h1>
		<label>Digite uma palavra para saber se é palíndromo:</label>
		<input type="text" id="texto_digitado" name="texto_digitado" required="required">
		<input type="submit" name="button" value="Enviar">
	</form>


<%

	try{
		String palavra = request.getParameter("texto_digitado");
		
		if(palavra != null && !palavra.isEmpty()){
			String novaPalavra = Normalizer.normalize(palavra, Normalizer.Form.NFD); 
			int len = novaPalavra.length();
			Boolean palindromo = true;
			
			for(int i = 0; i <= novaPalavra.length()- 1;i++){
			
				if(novaPalavra.charAt(i) != novaPalavra.charAt((len - i - 1))){
					
					i = novaPalavra.length();
					out.print("<h3> A palavra não é um palíndromo!!");
					palindromo = false;
					
				}
				
			}
			
			if(palindromo == true){
				out.print("<h3> É um palíndromo!!");
			}
		}
		
	}catch(IOException excecao){
		excecao.printStackTrace();
	}
	
%>
	

</body>
</html>