let table = document.querySelector('#table'),
    generatorPDF = document.querySelector('#generatorPDF'),
    obj_infoTicket = '',
	obj_infoDescuento = ''


let infoTicket = (ticketNum) => {
	const xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {

			if (this.responseText != 0) {
				 obj_infoTicket = JSON.parse(this.responseText)
				console.log("obj_infoTicket:")
				console.log(obj_infoTicket)
				let cont = 0;
				obj_infoTicket.forEach( function(element, index) {
					if (cont == 1) {

						tableTd(0,parseInt(element.cant),"table--body table--tr tr--td text--center")
						tableTd(0,element.name,"table--body table--tr tr--td text--left")
						tableTd(0,element.p_unit,"table--body table--tr tr--td text--right")
						tableTd(0,(element.p_unit * element.cant).toFixed(2),"table--body table--tr tr--td text--right")
						cont=0
					}else{
						
						tableTd(0,parseInt(element.cant),"table--body table--tr text--center")
						tableTd(0,element.name,"table--body table--tr text--left")
						tableTd(0,element.p_unit,"table--body table--tr text--right")
						tableTd(0,(element.p_unit * element.cant).toFixed(2),"table--body table--tr text--right")
						cont++
					}
				})
				infoDescuento(ticketNum);
			} else {
				tableTd(0,"No se encontro el numero de ticket","table--body table--tr table--consulta text--center table--consulta")
			}
		}
	};
	xhttp.open("POST", "php/infoTicket.php", true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send(`estado=0&ticketNum=${ticketNum}`);
}

infoDescuento = (ticketNum) => {
	const xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			if (this.readyState != 0) {
				 obj_infoDescuento = JSON.parse(this.responseText)
				 console.log("obj_infoDescuento:")
				 console.log(obj_infoDescuento)
				if (form_select.value == 0) {
					//---------------------------------------------------------------
					 descuento = obj_infoDescuento.descuento;
					 igv = obj_infoDescuento.total * 0.18;
					 sub_total = obj_infoDescuento.total - igv;
					 total = sub_total + igv;
					//---------------------------------------------------------------
					let sdt = ["DESCUENTO","SUB TOTAL","IGV 18%","TOTAL"]
					let sdt_valor = [descuento,sub_total.toFixed(2),igv.toFixed(2),total.toFixed(2)];
					//table footer
					tableTd(1,"SON:","table--footer table--tr table--footer--factura text--left")
					sdt.forEach( function(element, index) {
						tableTd(0,element,"table--footer table--tr bold text--right")
						tableTd(0,sdt_valor[index],"table--footer table--tr table--body--reverse text--right")
					});
				} else {
					//---------------------------------------------------------------
					descuento = obj_infoDescuento.descuento;
					total = obj_infoDescuento.total;
					//---------------------------------------------------------------
					let sdt = ["DESCUENTO","TOTAL"]
					let sdt_valor = [descuento,total];
					//table footer
					tableTd(0,"","table--footer table--tr table--footer--factura text--left")
					sdt.forEach( function(element, index) {
						tableTd(0,element,"table--footer table--tr bold text--right")
						tableTd(0,sdt_valor[index],"table--footer table--tr table--body--reverse text--right")
					});
				}
				
				generatorPDF.disabled = false
				generatorPDF.style = 'cursor:pointer;background-color: var(--bgc--principal)'
			} else {
				alert('no se encontro nada')
			}
		}
	};
	xhttp.open("POST", "php/infoTicket.php", true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send(`estado=1&ticketNum=${ticketNum}`);
}

let tableTd = (estado, valor, attributeClass) => {
	let td = document.createElement("div")
	td.setAttribute("class",attributeClass)
	if (estado == 0) {
		td.append(valor);
	}else {
		let span = document.createElement("span")
		span.append(valor);
		let input = document.createElement("input")
		input.setAttribute("id","son")
		input.setAttribute("type","text")
		input.setAttribute("placeholder","MONTO Y 00/100 SOLES")
		td.appendChild(span)
		td.appendChild(input)
	}

	table.appendChild(td);
}
/*******************consula**base*datos*******************/
form_num_ticket.addEventListener("keyup",(e)=>{
	if (e.keyCode === 13) {
		e.preventDefault();
		if (form_num_ticket.value != '') {
			let table_body = document.querySelectorAll(".table--body")
			table_body.forEach(element => table.removeChild(element));
			let table_footer = document.querySelectorAll(".table--footer")
			table_footer.forEach(element => table.removeChild(element));
			infoTicket(form_num_ticket.value)
			document.querySelector("#reporte").innerHTML = '';
		} else {
			alert("Por favor insertar un numero de ticket")
		}
	}
	if (e.keyCode == 8 && form_num_ticket.value == '') {
		form_name.value	= ''
		form_comprobante.value 	= ''
		form_dni_ruc.value 	= ''
		form_direction.value 	= ''
	 	obj_infoTicket = ''
		obj_infoDescuento = ''
		generatorPDF.disabled = true
		generatorPDF.style = ''
		let table_body = document.querySelectorAll(".table--body")
		table_body.forEach(element => table.removeChild(element));
		let table_footer = document.querySelectorAll(".table--footer")
		table_footer.forEach(element => table.removeChild(element));
		document.querySelector("#reporte").innerHTML = '';
	}
})
/******generar reporte********/
let valueInput = () => {
	let obj = {
		id : form_num_ticket.value,
		name : form_name.value,
		doc : form_comprobante.value,
		dni_ruc : form_dni_ruc.value,
		direction : form_direction.value
	}
	return obj;
}
let valorConsulta = () => {
	if (typeof obj_infoTicket === 'object' &&
		typeof obj_infoDescuento === 'object' ) {
		let consulta = {
			valueInput : valueInput(),
			obj_infoTicket : obj_infoTicket,
			obj_infoDescuento : obj_infoDescuento,
		}

		return consulta;
	} else {
		console.log('no')
	}
}
let Factura = ($son) => {
	const xhttp = new XMLHttpRequest();
	xhttp.responseType = 'blob'
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
				let iframe = document.createElement("iframe")
				//document.querySelector("#reporte").innerHTML = this.responseText;
				let blob = new Blob([xhttp.response],{type: 'application/pdf'})

				let url = window.URL.createObjectURL(blob);
				iframe.setAttribute("src", url)
				document.querySelector("#reporte").innerHTML = '';
				document.querySelector("#reporte").appendChild(iframe)
		}
	};
	xhttp.open("POST", "../Reports/Factura.php", true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send(`obj=${JSON.stringify(valorConsulta())}&son=${$son}`)
}

let Boleta = () => {
	const xhttp = new XMLHttpRequest();
	xhttp.responseType = 'blob'
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
				let iframe = document.createElement("iframe")
				//document.querySelector("#reporte").innerHTML = this.responseText;
				let blob = new Blob([xhttp.response],{type: 'application/pdf'})

				let url = window.URL.createObjectURL(blob);
				iframe.setAttribute("src", url)
				document.querySelector("#reporte").innerHTML = '';
				document.querySelector("#reporte").appendChild(iframe)
		}
	};
	xhttp.open("POST", "../Reports/Boleto.php", true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send(`obj=${JSON.stringify(valorConsulta())}`)
}

let imprimirReporte = () => {
	if (form_select.value == 0) {
		if (document.querySelector("#son").value != '') {
			Factura(document.querySelector("#son").value);
		} else {
			alert("Debes llenar todo los campos")
		}
	} else if (form_select.value == 1) {
		Boleta();
	} 
}

generatorPDF.addEventListener("click",()=>{
	if (form_num_ticket.value != '' && 
		form_name.value != '' && 
		form_comprobante.value != '' && 
		form_dni_ruc.value != '' && 
		form_direction.value != '') {
		imprimirReporte()
	} else {
		alert("Debes llenar todo los campos")
	}
})
limpiar.addEventListener("click",()=>{
		form_num_ticket.value= ''
		form_name.value	= ''
		form_comprobante.value 	= ''
		form_dni_ruc.value 	= ''
		form_direction.value 	= ''
		form_select.value = 2
		disabledInput();
	 	obj_infoTicket = ''
		obj_infoDescuento = ''
})
//http://localhost/reporte_terminado/Reports/Factura.phpid : 