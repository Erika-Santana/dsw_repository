<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pesquisaDoUsuario = request.getParameter("text-search");
	String urlAserDirecionada = "";
	if(pesquisaDoUsuario != null && !pesquisaDoUsuario.trim().isEmpty()){
		String metodoDeBusca = request.getParameter("engine");
		if(metodoDeBusca.equals("google")){
			urlAserDirecionada =  "https://www.google.com/search?q=";	
		}else if(metodoDeBusca.equals("duckduckgo")){
			urlAserDirecionada = "https://www.duckduckgo.com/search?q=";
		}else if(metodoDeBusca.equals("firefox")){
			urlAserDirecionada = "https://www.firefox.com/search?q=";
		}else if(metodoDeBusca.equals("bing")){
			//urlAserDirecionada = "https://www.bing"
		}
			
	}
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
</head>
<body>
	
</body>
</html>