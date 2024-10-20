
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="exercicio_2.jsp" method="post">
		<label>Insira o primeiro valor:</label><br>
		<input type="number" id="number_1" name="primeiroValor"><br>
		<label>Insira o segundo valor:</label><br>
		<input type="number" id="number_2" name="segundoValor"><br>
		<label>Selecione a operação: </label><br>
		 <select name="operation">
		    <option value="+">+</option>
		    <option value="-">-</option>
		    <option value="*">*</option>
		    <option value="/">/</option>
		  </select>
		<input type="submit" value="Enviar" class="button">
	</form>

	<%
		try{
			double primeiroValor = Double.valueOf(request.getParameter("primeiroValor"));
			double segundoValor = Double.valueOf(request.getParameter("segundoValor"));
			double resultado = 0.0;
			char simboloAritmetico = request.getParameter("operation").charAt(0);
			
			switch(simboloAritmetico){
			
				case '+':
					resultado = primeiroValor + segundoValor;
				
					break;
				case '-':
					resultado = primeiroValor - segundoValor;
					break;
				case '*':
					resultado = primeiroValor * segundoValor;
					break;
				case '/':
					if(segundoValor != 0){
						resultado = primeiroValor / segundoValor;
					}else{
						out.print("<h3> Não é possível realizar divisão por zero! </h3>");
					}
					
					break;
				default:
					break;
				
			}
			
			out.print("<h3> O resultado é igual a: " + resultado + "</h3>");
			resultado = 0.0;
		}catch(NumberFormatException numberFormat){
			numberFormat.printStackTrace();
		}
		
	%>
	
</body>
</html>