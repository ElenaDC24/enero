<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FORMULARIO</title>
</head>
<body>
	<%
	String nombre = request.getParameter("nombre");
	String apellidos = request.getParameter("apellidos");
	String fechaTexto = request.getParameter("fecha");
	String lenguaje = request.getParameter("lenguaje");
	String nuevoTexto = request.getParameter("nuevo");
	String[] lista = request.getParameterValues("dispositivos");
	
	boolean nuevo= Boolean.parseBoolean(nuevoTexto);
	
	int nivel=Integer.parseInt(request.getParameter("nivel"));
	Calendar calendario = Calendar.getInstance();

	//convierto un texto de cadena en una fecha Date
	//con un formateador
	DateFormat formateador = new SimpleDateFormat("yyyy-MM-dd");
	Date fecha = formateador.parse(fechaTexto);
	calendario.setTime(fecha);
	//out.println("<br/>");
	
		
	
	out.println(nombre);
	out.println(apellidos);
	out.println(calendario.getTime());%>
	
	
	
	<p><% 
	if(nivel==1) {
		out.print("el nivel es basico");
	} else if (nivel==2) {
		out.println("el nivel es intermedio");
	}else {
		out.println("el nivel es experto");
		
		
	}
	%>

	<p>
		el lenguaje favorito es:
		<%=lenguaje%>
	</p>

	<p>
		el año es:
		<%=calendario.get(Calendar.YEAR)%>
	</p>

	<p>
		el mes es:
		<%=calendario.get(Calendar.MONTH)%>
	</p>

	<p>
		el dia es:
		<%=calendario.get(Calendar.DATE)%>
	</p>
<p>
		<%if (nuevo) out.println("<b>es nuevo</b>"); %>
</p>
<p>
<%out.println("<ul>");
for(int i=0;i<lista.length;i++) {
out.println("<li>"+lista[i]+"</li>");	
}
out.println("</ul>"); %></p>

</body>
</html>