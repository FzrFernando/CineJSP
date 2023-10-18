<%@page import="com.jacaranda.repository.CineRepository"%>
<%@page import="com.jacaranda.model.Cinema"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Cinema</title>
</head>
<body>
<%
// Intento ver si me ha puesto los datos para añadir un nuevo cine
	Cinema c;
try{
		c = CineRepository.getCinema(request.getParameter("cine"));
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
        <input id="cine" name="cine" type="text" class="form-control" readonly="readonly" value="<%= c.getCinema() %>">
      </div>
    </div>
  </div>
  <div class="form-group row">
    <label for="ciudad" class="col-4 col-form-label">Ciudad</label> 
    <div class="col-8">
      <input id="ciudad" name="ciudad" type="text" class="form-control" value="<%= c.getCityCinema()%>">
    </div>
  </div>
  <div class="form-group row">
    <label for="direccion" class="col-4 col-form-label">Dirección</label> 
    <div class="col-8">
      <input id="direccion" name="direccion" type="text" class="form-control" value="<%= c.getAddressCinema()%>">
    </div>
  </div> 
  <div class="form-group row">
    <div class="offset-4 col-8">
      <button name="submit" type="submit" class="btn btn-primary">Submit</button>
    </div>
  </div>
</form>

	<%
	CineRepository.annadirCine(c);
	} catch (Exception e){
		// No existe el cine seleccionado
	}

%>

</body>
</html>