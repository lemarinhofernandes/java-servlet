<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<c:url value="/alteraEmpresa" var="linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="${linkServletNovaEmpresa}" method="post">
	
		Nome: <input type="text" name="nome" value="${empresa.nome }"/>
		Data: <input type="text" name="data" value="<f:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"/>
		Id: <input type="hidden" name="id" value="${empresa.id }" />
		<input type="submit"/>
	
	</form>
	
</body>
</html>