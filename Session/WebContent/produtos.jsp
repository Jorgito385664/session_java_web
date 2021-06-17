<%@page import="java.util.Collection" %>
<%@page import="entity.Produto" %>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produtos</title>
</head>
<body>
	<h1>Lista de Produtos</h1>
	<%
	
		@SuppressWarnings("unchecked")
		Collection<Produto> produtos = (Collection<Produto>) request.getAttribute("produtos");
		
	%>
	
	<table border="1" width="100%">
		<tr>
			<td align="center"><strong>Produto</strong></td>
			<td align="center"><strong>Valor</strong></td>
			<td align="center"></td>
		</tr>
		<% for (Produto p : produtos) { %>
			<tr>
				<td align="center"><%=p.getNome() %></td>
				<td align="center"><%=p.getValor() %></td>
				<td align="center"><a href="Adicionar?id=<%=p.getId() %>">Adicionar</a></td>
			</tr>
		<% } %>
	</table>
</body>
</html>