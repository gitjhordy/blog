<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="modelo.consultas"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<Style>

table .contenido
{
  
  position:relative;
  width: 98%;
 
   height: 150px;
   
}

</Style>
</head>
<body>
<%

int id =Integer.parseInt(request.getParameter("link"));
consultas obj = new consultas(); 
Statement st=obj.getCon().createStatement();
ResultSet resultado=st.executeQuery("select *from blog where id="+id);     

String titulo,contenido;

if(resultado.next())
{

%>

     
<form action="../editar_art" method="post" >
<table>

<tr>
<td>Fecha :</td>
<td><input type="text" name="fecha" value= <%=resultado.getString("fecha")%>></td>
</tr>

<tr>
<td>Titulo :</td>
<td><input type="text" name="titulo" value=  ></td>
</tr>

<tr>
<td>Contenido :</td>
<td><input type="text" name="contenido" class="contenido" ></td>
</tr>

<tr>
<td><input type="hidden" name="id" value=<%=id%> ></td>
<td><input type="submit" value="Registrar"></td>
</tr>  
<%}%>   
</table>
 </form>    
     
</body>
</html>