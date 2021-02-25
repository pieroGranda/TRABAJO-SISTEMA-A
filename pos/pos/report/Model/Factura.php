<?php 
	function HeaderFactura($pdf,$title,$value,$ln)
	{
		$pdf->SetFont('Arial','B',8);
		$pdf->Cell(45,5,$title,"LTB",0,'L');
		$pdf->SetFont('Arial','',8);
		$pdf->Cell(40,5,$value,"RTB",$ln,'C');
	}
	function FooterFactura($pdf,$title,$value,$ln)
	{
		$pdf->SetFont('Arial','B',8);
		$pdf->Cell(45,5,$title,"LTB",0,'L');
		$pdf->SetFont('Arial','',8);
		$pdf->Cell(40,5,$value,"RTB",$ln,'C');
	}
	/*** Cerrar reporte ***/
	//$pdf->Output();
	$pdf = new FPDF();
	$Reporte = new Reporte();
	$obj = json_decode($_POST['obj']);
	$son = $_POST['son'];
	$valueInput = $obj->valueInput;
	$obj_infoTicket = $obj->obj_infoTicket;
	$obj_infoDescuento = $obj->obj_infoDescuento;
	/*** total ***/
	$descuento = number_format($obj_infoDescuento->descuento * 0.18,'2','.',',');
	$igv = number_format($obj_infoDescuento->total * 0.18,'2','.',',');
	$sub_total = number_format($obj_infoDescuento->total - $igv,'2','.',',');
	$total = number_format($sub_total + $igv,'2','.',',');
	$pdf->AddPage();
	HeaderFactura($pdf,"NUMERO TICKET :", $valueInput->id,0);
	$pdf->cell(20);
	HeaderFactura($pdf,"COMPROBANTE :", $valueInput->doc,1);
	$pdf->ln(5);
	HeaderFactura($pdf,"EMPRESA :", utf8_decode($valueInput->name),0);
	$pdf->cell(20);
	HeaderFactura($pdf,"RUC :", $valueInput->dni_ruc,1);
	$pdf->ln(5);
	HeaderFactura($pdf,"DIRECCION :", utf8_decode($valueInput->direction),0);
	$pdf->cell(20);
	HeaderFactura($pdf,"FECHA Y HORA :", $obj_infoDescuento->date,1);
	$pdf->ln(5);

	$cell = array("CANT","PRODUCTO","PRECIO","TOTAL");
	$width = array(30,100,30,30);
	$height = 5;
	$align = array("C","L","R","R");

	$Reporte->th($pdf,$cell,$width,$height);
	/*** mostrar tabla de productos ***/
	$pdf->SetFont('Arial','',8);
	foreach ($obj_infoTicket as $key => $value) {
			$pdf->Cell($width[0],6,$value->cant,'LBR',0,$align[0]);
			$pdf->Cell($width[1],6,utf8_decode($value->name),'BR',0,$align[1]);
			$pdf->Cell($width[2],6,$value->p_unit,'BR',0,$align[2]);
			$pdf->Cell($width[3],6,number_format($value->p_unit * $value->cant,'2','.',','),'BR',1,$align[3]);
	}

	$pdf->SetFont('Arial','B',8);
	$pdf->Cell(20,6,"",'',0,"L");
	$pdf->Cell(10,6,"SON :",'',0,"L");
	$pdf->SetFont('Arial','',8);
	$pdf->Cell(100,6,$son,0,0,"L");

	$pdf->SetFont('Arial','B',8);
	$pdf->Cell($width[2],6,"DESCUENTO",'',0,$align[2]);
	$pdf->SetFont('Arial','',8);
	$pdf->Cell($width[3],6,$descuento,'LBR',1,$align[3]);
	$pdf->Cell(130,6);
	$pdf->SetFont('Arial','B',8);
	$pdf->Cell($width[2],6,"SUB TOTAL",'',0,$align[2]);
	$pdf->SetFont('Arial','',8);
	$pdf->Cell($width[3],6,$sub_total,'LBR',1,$align[3]);
	$pdf->Cell(130,6);
	$pdf->SetFont('Arial','B',8);
	$pdf->Cell($width[2],6,"IGV 18%",'',0,$align[2]);
	$pdf->SetFont('Arial','',8);
	$pdf->Cell($width[3],6,$igv,'LBR',1,$align[3]);
	$pdf->Cell(130,6);
	$pdf->SetFont('Arial','B',8);
	$pdf->Cell($width[2],6,"TOTAL",'',0,$align[2]);
	$pdf->SetFont('Arial','',8);
	$pdf->Cell($width[3],6,$total,'LBR',1,$align[3]);
	/*** Cerrar reporte ***/
	$pdf->Output();
?>