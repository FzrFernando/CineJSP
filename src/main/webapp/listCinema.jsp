
<%@page import="com.jacaranda.model.Cinema"%>
<%@page import="com.jacaranda.repository.CineRepository"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Cinema</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<% 
	ArrayList<Cinema> result = null;
	try {
		result = (ArrayList<Cinema>) CineRepository.getCinemas();
	} catch (Exception e){
		e.getMessage();
	}
%>

<table class="table">
  <thead>
    <tr>
      <th scope="col">Cine</th>
      <th scope="col">Dirección</th>
      <th scope="col">Ciudad</th>
      <th>Editar</th>
      <th>Borrar</th>
    </tr>
  </thead>
  <tbody>
  		<%for (Cinema c: result) {%>
	    <tr>
	      <td><%=c.getCinema() %></td>
	      <td><%=c.getAddressCinema() %></td>
	      <td><%=c.getCityCinema() %></td>
	      <td><form action="editCinema">
	      		<input id="cine" name="cine" type="text" value="<%=c.getCinema()%>" hidden>
	      		<div class="form-group row">
	      			<div class="offset-4 col-8">
	      				<button name="submit" type="submit" class="btn btn-primary"></button>
	      			</div>
	      		</div>
	      	</form>
	      </td>
	      <td><form action="delCinema">
	      		<input id="cine" name="cine" type="text" value="<%=c.getCinema()%>" hidden>
	      		<div class="form-group row">
	      			<div class="offset-4 col-8">
	      				<button name="submit" type="submit" class="btn btn-primary"></button>
	      			</div>
	      		</div>
	      	</form>
	      </td>
	    </tr>
  		<%}%>
  </tbody>
</table>
</body>
</html>