<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<title>FORMULARIO SUMA</title>
</head>
<body>
 <%

	int numero1 = Integer.parseInt(request.getParameter("numero1"));
	int numero2 = Integer.parseInt(request.getParameter("numero2"));
	
	int Suma=numero1 + numero2;
	out.println("la suma de los numeros es "+Suma);
%>

</body>
</html>