<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>COMPROBANTES</title>
	<link rel="stylesheet" href="css/boleto_factura.css">
</head>
<body>
	<div class="conteiner">
		<form class="form--report" id="form--report">
		 		<!-----------------fila--one----------------->
				<div class="form--report--inputs">
					<h4>COMPROBANTE</h4>
					<select name="" id="form--select">
						<option value="2">SELECCIONAR</option>
						<option value="0">FACTURA</option>
						<option value="1">BOLETA</option>
					</select>
				</div>
				<div class="form--report--inputs form--report--inputs--right">
					<h4>INGRESE NUMERO TICKET</h4>
					<input type="text" id="form--num--ticket" placeholder="Numero ticket">
				</div>
				<!-----------------item--two----------------->
				<div class="form--report--inputs">
					<h4 id="name">CLIENTE</h4>
					<input type="text" id="form--name--client" placeholder="Nombre cliente">
				</div>
					<div class="form--report--inputs form--report--inputs--right">
					<h4>COMPROBANTE</h4>
					<input type="text" id="form--num--comprobante" placeholder="Numero comprobante">
				</div>
		 		<!-----------------item--tree----------------->
				<div class="form--report--inputs form--report--inputs--right">
					<h4 id="dni--ruc">DNI</h4>
					<input type="text" id="form--num--dni--ruc" placeholder="DNI">
				</div>
				<div class="form--report--inputs form--report--inputs--right">
					<h4>DIRECCION</h4>
					<input type="text" id="form--num--direction" placeholder="Dirección">
				</div>
		</form>
		<div class="table" id="table"> 
	 		<div class="table--tr tr--th">CANT</div>
	 		<div class="table--tr tr--th">PRODUCTO</div>
	 		<div class="table--tr tr--th">PRECIO</div>
	 		<div class="table--tr tr--th">TOTAL</div>
	 		<!--body-->
	 	</div>
		<div class="imprimir">
			<input type="button" id="limpiar" value="NUEVO" disabled="true">
			<input type="submit" id="generatorPDF" value="IMPRIMIR" disabled="true">
		</div>
		<div class="reporte" id="reporte"></div>
	</div>
	<script src="js/main.js"></script>
	<script src="js/table.js"></script>
</body>
</html>