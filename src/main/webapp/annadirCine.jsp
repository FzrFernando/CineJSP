<%@page import="com.jacaranda.repository.CineRepository"%>
<%@page import="com.jacaranda.model.Cinema"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Añadir Cine</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%
// Intento ver si me ha puesto los datos para añadir un nuevo cine
	try{
		Cinema c = new Cinema(request.getParameter("cine"), request.getParameter("ciudad"), request.getParameter("direccion"));
		CineRepository.annadirCine(c);
%>
	<div>Cine añadido de forma adecuada</div>
	<%
	
	} catch (Exception e){
		// dos posibilidades, que no me haya pasado nada o que haya fallado al añadir
	}
%>

	<form>
  <div class="form-group row">
    <label for="cine" class="col-4 col-form-label">Cine</label> 
    <div class="col-8">
      <div class="input-group">
        <div class="input-group-prepend">
          <div class="input-group-text">
            <i class="fa fa-address-card"></i>
          </div>
        </div> 
        <input id="cine" name="cine" type="text" class="form-control">
      </div>
    </div>
  </div>
  <div class="form-group row">
    <label for="ciudad" class="col-4 col-form-label">Ciudad</label> 
    <div class="col-8">
      <input id="ciudad" name="ciudad" type="text" class="form-control">
    </div>
  </div>
  <div class="form-group row">
    <label for="direccion" class="col-4 col-form-label">Dirección</label> 
    <div class="col-8">
      <input id="direccion" name="direccion" type="text" class="form-control">
    </div>
  </div> 
  <div class="form-group row">
    <div class="offset-4 col-8">
      <button name="submit" type="submit" class="btn btn-primary">Submit</button>
    </div>
  </div>
</form>
</body>
</html>