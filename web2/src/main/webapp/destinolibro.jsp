<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FORMULARIOLIBRO</title>
</head>
<body>
	<%
	String ISBN = request.getParameter("ISBN");
	String titulo = request.getParameter("titulo");
	String autor = request.getParameter("autor");
	int paginas = Integer.parseInt(request.getParameter("paginas"));
	String disponibleTexto = request.getParameter("disponible");
	
	
	int genero=Integer.parseInt(request.getParameter("genero"));
	int idioma=Integer.parseInt(request.getParameter("idioma"));
	
	boolean disponible= Boolean.parseBoolean(disponibleTexto);
	
	
	%>
	<p>
	El ISBN es: <%= ISBN%>	</p>
	<p><% 
	out.println("El titulo es:" +titulo);%></p>
	<p><%
	out.println("El numero de paginas es: "+paginas);%></p>
	<p><%
	out.println("El autor es: "+autor);%></p>
	
	
	
	
	<p>
	<% 
	if(idioma==1) {
		out.print("el idioma es castellano");
	} else if (idioma==2) {
		out.println("el idioma es ingles");
	} else if (idioma==3) {
		out.println("el idioma es frances");
	}else {
		out.println("el nivel es chino");
		
		
	}
	%>
	</p>
	

	
	<p><% 
	if(genero==1) {
		out.print("el genero es ficcion");
	} else if (genero==2) {
		out.println("el genero es autoayuda");
	} else {
		out.println("el genero es novela historica");
	}
		
		
	
	%></p>

	
			
<p>
		<%if (disponible) out.println("<b>esta disponible</b>"); %>
</p>



</body>
</html>