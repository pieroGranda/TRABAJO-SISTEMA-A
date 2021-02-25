<?php require_once '../Core/Report.php'; 
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
$valueInput = $obj->valueInput;
$obj_infoTicket = $obj->obj_infoTicket;
$obj_infoDescuento = $obj->obj_infoDescuento;
/*** total ***/
$pdf->AddPage();
HeaderFactura($pdf,"NUMERO TICKET :", $valueInput->id,0);
$pdf->cell(20);
HeaderFactura($pdf,"COMPROBANTE :", $valueInput->doc,1);
$pdf->ln(5);
HeaderFactura($pdf,"CLIENTE :", utf8_decode($valueInput->name),0);
$pdf->cell(20);
HeaderFactura($pdf,"DNI :", $valueInput->dni_ruc,1);
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
		$pdf->Cell($width[2],6,number_format($value->p_unit,'2','.',','),'BR',0,$align[2]);
		$pdf->Cell($width[3],6,number_format($value->p_unit * $value->cant,'2','.',','),'RB',1,$align[3]);
}
$pdf->Cell(130,6);
$pdf->SetFont('Arial','B',8);
$pdf->Cell($width[2],6,"DESCUENTO",'',0,$align[2]);
$pdf->SetFont('Arial','',8);
$pdf->Cell($width[3],6,number_format($obj_infoDescuento->descuento,'2','.',','),'LBR',1,$align[3]);
$pdf->Cell(130,6);
$pdf->SetFont('Arial','B',8);
$pdf->Cell($width[2],6,"TOTAL",'',0,$align[2]);
$pdf->SetFont('Arial','',8);
$pdf->Cell($width[3],6,number_format($obj_infoDescuento->total,'2','.',','),'LBR',1,$align[3]);
$pdf->Cell(130,6);
/*** Cerrar reporte ***/
$pdf->Output();
?>