<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>COMPROBANTES</title>
</head>
<body><H1>REPORTE Y GESTION</H1>
	<form id="form" method="POST">
		 <input type="date" name="fecha_inicial" required="true">
		 <input type="time" name="time_inicial" required="true" value="00:00">
		 <br><br>
		 <input type="date" name="fecha_final" required="true">
		 <input type="time" name="time_final" required="true" value="00:00"><br><br>
		 <select id="select" required="true">
			<option value="">SELECCIONAR</option>
		 	<option value="0">FACTURA</option>
		 	<option value="1">BOLETA</option>
		 	<option value="2">VENTAS POR USUARIO</option>
		 </select>
		 <div id="venta" style="display: inline-block;"></div>
		 <input type="submit" value="VER REPORTE">
	</form>
	<script>
		let form = document.querySelector('#form')
		let venta = document.querySelector('#venta')
		let select = document.querySelector('#select')
		select.value = ''
		let cambiarAction = () => {
			if (select.value != '' && select.value == 0) {
				form.setAttribute("action", "../Reports/RFG.php")
				venta.innerHTML = ''
			} else if (select.value != '' && select.value == 1) {
				form.setAttribute("action", "../Reports/RBG.php")
				venta.innerHTML = ''
			} else if (select.value != '' && select.value == 2) {
				vendedores()
			}else if (select.value == '') {
				venta.innerHTML = ''
			}
		}

		let vendedores = () => {
			const xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {

					if (this.responseText != 0) {
						selectVentas = '<select name="select_ventas" id="select" required="true">'

						JSON.parse(this.responseText).forEach( function(element, index) {
							selectVentas += `<option value="${element.id}_${element.username}">${element.username}</option>`
						});
						selectVentas += '</select>'

						venta.innerHTML = selectVentas
						form.setAttribute("action", "../Reports/Ventas.php")
						
					} else {
						alert('Error al cargar vendedores')
					}
				}
			};
			xhttp.open("POST", "../Model/read_vendedores.php", true);
			xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xhttp.send(`estado=0`);
		}
		select.addEventListener("change",cambiarAction)
	</script>
</body>
</html>