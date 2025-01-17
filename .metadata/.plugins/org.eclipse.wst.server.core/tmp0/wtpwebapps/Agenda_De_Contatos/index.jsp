<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="contatos" class="br.edu.ifsp.dws_1.ContatosBean"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contatos</title>
</head>
<body>
	<h1>Lista de Contatos</h1>
	<table>
		<thead>
			<tr>
				<th>Nome</th>
				<th>Telefone</th>
				<th>Email</th>
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
			<%for(var contato: contatos.buscaTodos()){ %>
			<tr>
				<td><%= contato.getName() %></td>
				<td><%= contato.getPhone()%></td>
				<td><%= contato.getEmail()%></td>
				<td><a href="apagar_contato.jsp?id=<%= contato.getId()%>">Apagar</a></td>
			</tr>			
			<%} %>
		</tbody>		
	</table>
</body>
</html>