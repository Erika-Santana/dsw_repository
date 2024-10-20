<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
 	        table {
            width: 20%;
          //border-collapse: collapse;
            margin: 10px auto;
            font-family: Arial, sans-serif;
        }
        
    
        
    </style>
</head>
<body>
	<form action="exercicio_4.jsp">
		<h1>Tabuada</h1><br>
		<label>Digite o número para saber a tabuada:</label><br>
		<input type="number" id="number" name="number"><br>
		<input type="submit" id="button" name="button"><br>
	</form>
	
	 <table border="3">
	 	<thead>
		 	<tr>
		 		<th rowspan="2">Multiplicação</th>
		 		<th rowspan="2">Resultado</th>
		 	</tr>
	 	</thead>
	 	<tbody>
	 	<%
			try{
				int valorColocado = Integer.valueOf(request.getParameter("number"));
				for(int i = 1; i <= 10; i++){

					//out.print("<tr>");
					//out.print("<td>");
					//out.print(valorColocado + " X " + i);
					//out.print("</td>");
					//out.print("<td>");
					//out.print(valorColocado * i);
					//out.print("</td>");
					
					//out.print("</tr>");
					
				//}
			//}
			//catch(NumberFormatException number){
			//	number.printStackTrace();
			//}
					
		%>
		
		<tr>
			<td><%= valorColocado %> x <%= i %></td>
            <td><%= valorColocado * i %></td>
		</tr>
	
		<%
				}
			}
			catch(NumberFormatException number){
				number.printStackTrace();
			}
			
				
		%>
		
	 	</tbody>	
	</table>
</body>
</html>