<%@page import="java.util.Collection" %>
<%@page import="entity.Produto" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrinho</title>
</head>
<body>
	<h1>Carrinho</h1>
	<%
		@SuppressWarnings("unchecked")
		List<Produto> produtos = (List<Produto>) request.getAttribute("produtos");
	%>
	
	<table border="1" width="100%">
		<tr>
			<td align="center"><strong>Produto</strong></td>
			<td align="center"><strong>Valor</strong></td>
		</tr>
		<% for(Produto p: produtos) { %>
			<tr>
				<td align="center"><%=p.getNome() %></td>
				<td align="center"><%=p.getValor() %></td>
			</tr>
		<% } %>
	</table>
</body>
</html>