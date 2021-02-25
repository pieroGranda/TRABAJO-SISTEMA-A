<?php	require_once '../Config/Config.php';
		require_once '../Core/Report.php';
		require '../Model/insertFB.php';
		/*** obtener datos de post***/
		if (isset($_POST['obj'])) {
			$obj = json_decode($_POST['obj']);
			$valueInput = $obj->valueInput;
			$obj_infoTicket = $obj->obj_infoTicket;
			$obj_infoDescuento = $obj->obj_infoDescuento;
		} else {
			echo 0;
		}
		$doc = $valueInput->doc;
		$ticket = $valueInput->id;
		$cliente = $valueInput->name;
		$dni = $valueInput->dni_ruc;
		$monto = $obj_infoDescuento->total;
		$fecha = $obj_infoDescuento->date;
		/***  Subir datos la base de datos - tabla Factura ***/

		$sql = "INSERT INTO `Boletas`(`N DOC`, `N TICKET`, `CLIENTE`, `DNI`, `MONTO`, `FECHA`) VALUES (:DOC, :TICKET, :CLIENTE, :DNI, :MONTO, :FECHA)";
		$valor = array(':DOC'=>$doc, ':TICKET'=>$ticket, ':CLIENTE'=>$cliente, ':DNI'=>$dni, ':MONTO'=>$monto, ':FECHA'=>$fecha);
		$insertFB = new insertFB();
		if ($insertFB->insertFB($sql,$valor) > 0) {
	   		require_once '../Model/Boleto.php';
		} else {
			echo "2";
		}


