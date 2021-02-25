/*******************VARIABLES***DOM*******************/
let form_report = document.querySelector("#form--report"),
	form_select = document.querySelector("#form--select"),
	form_num_ticket = document.querySelector("#form--num--ticket"),
	form_name = document.querySelector("#form--name--client"),
	form_comprobante = document.querySelector("#form--num--comprobante"),
	form_dni_ruc = document.querySelector("#form--num--dni--ruc"),
	form_direction = document.querySelector("#form--num--direction"),
	limpiar = document.querySelector("#limpiar")
/*******************DESACTIVAR**INPUT*******************/
let disabledInput = ()=> {
	if (form_select.value == 0 || form_select.value == 1) {
		form_num_ticket.disabled = false
		form_name.disabled = false
		form_comprobante.disabled = false
		form_dni_ruc.disabled = false
		form_direction.disabled = false
		form_num_ticket.focus()
		form_num_ticket.value = ''
		document.querySelector("#limpiar").disabled = false
		document.querySelector("#limpiar").style = 'cursor:pointer;background-color: var(--bgc--principal)'
	}else {
		form_num_ticket.disabled = true
		form_name.disabled = true
		form_comprobante.disabled = true
		form_dni_ruc.disabled = true
		form_direction.disabled = true
		limpiar.disabled = false
		limpiar.style = ''
	}
	let table_body = document.querySelectorAll(".table--body")
	table_body.forEach(element => table.removeChild(element));

	let table_footer = document.querySelectorAll(".table--footer")
	table_footer.forEach(element => table.removeChild(element));
	document.querySelector("#reporte").innerHTML = '';
	generatorPDF.disabled = true
	generatorPDF.style = ''
}

/*******************cambiar**boleto**factua*******************/
form_select.addEventListener("change", () => {
	if (form_select.value == 0) {		
		form_name.setAttribute("placeholder", "Nombre empresa")
		document.querySelector("#name").innerHTML = "EMPRESA";
		document.querySelector("#dni--ruc").innerHTML = "RUC";
		form_dni_ruc.setAttribute("placeholder", "RUC")
	} else {

		form_name.setAttribute("placeholder", "Nombre cliente")
		document.querySelector("#name").innerHTML = "CLIENTE";
		document.querySelector("#dni--ruc").innerHTML = "DNI";
		form_dni_ruc.setAttribute("placeholder", "DNI")
	}
	disabledInput();
})

/*******************validar**number*******************/
form_num_ticket.addEventListener("keypress",(e)=>{
	if (isNaN( String.fromCharCode(e.keyCode))) {
		e.preventDefault()
	}
})

form_select.value = 2;
disabledInput();