<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.alura.servlet.gerenciador.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
<body>
	Lista de empresas: <br />
	
	<ul>
		<c:forEach items="${ empresas }" var="empresa">
		
			<li>${empresa.nome} - <f:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/></li>
		</c:forEach>
	</ul>
	
	<br/>
	<br/>
	<c:if test="${not empty empresa}">
			Empresa ${ empresa } cadastrada com sucesso!
		</c:if>
		
		<c:if test="${empty empresa}">
			Empresa não cadastrada!
		</c:if>

</body>
</html>