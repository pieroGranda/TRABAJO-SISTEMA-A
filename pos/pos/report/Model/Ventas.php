<?php
class Ventas extends Connection
{
	public $conn;
	public $capital;
	public $ganancia;
	public $total;
	function __construct()
	{
		$this->conn = parent::connection();
	}

	public function datosVenta($sql,$valor)
	{	
		$prepare =$this->conn->prepare($sql);
		$prepare->execute($valor);
		return $prepare;
	}
	public function cant_ventas($sql,$valor)
	{
		return $this->datosVenta($sql,$valor)->rowCount();
	}

}
/*** Variables ***/
$id = explode("_",$_POST['select_ventas'])[0];
$fecha_inicial = $_POST['fecha_inicial']." ".$_POST['time_inicial'];
$fecha_final = $_POST['fecha_final']." ".$_POST['time_final'];
$vendedor = explode("_",$_POST['select_ventas'])[1];
/*** Reporte de RBG ***/
$Ventas= new Ventas();
$Reporte = new Reporte();
/***  Variables de datos del reporte RBG***/
$title = "REPORTE VENTAS POR USUARIO";
/*** Header del reporte RBG ***/

$Reporte->headerReport($title, $pdf);
$pdf->SetFont('Arial','B',8);
$pdf->Cell(17,5,'VENDEDOR');
$pdf->SetFont('Arial','',8);
$pdf->Cell(5,5,':',0,0,'C');
$pdf->Cell(120,5,$vendedor,0,1,'L');
$sql = "SELECT  `one`.`quantity` ,`one`.`cost` ,`one`.`real_unit_price`,`two`.`total_discount` `descuento`
				FROM `tec_sale_items` `one`
				INNER JOIN `tec_sales` `two`
				ON `one`.`sale_id`=`two`.`id` 
				WHERE `two`.`customer_id`=:id && `date` BETWEEN :fecha_inicial AND :fecha_final";

$sql2 = "SELECT * FROM `tec_sales` WHERE `customer_id`=:id && `date` BETWEEN :fecha_inicial AND :fecha_final";
$valor = array(':id'=>$id,':fecha_inicial'=>$fecha_inicial,':fecha_final'=>$fecha_final);
$datosVenta = $Ventas->datosVenta($sql,$valor)->fetchAll(PDO::FETCH_OBJ);
$cant_ventas = $Ventas->cant_ventas($sql2,$valor);
$total=0;
$recaudado=0;
$cont=0;
foreach ($datosVenta as $key => $value) {
	if ($cont == 0) {
		$total = $total + $value->real_unit_price * $value->quantity;
		$cont++;
	} else {
		$total = $total + $value->real_unit_price * $value->quantity - $value->descuento;
	}
	
	$recaudado = number_format($recaudado + ($value->cost * $value->quantity),'2','.',',');
}
$ganancia=$total - $recaudado;
/*
echo "real_unit_price: ". number_format($total,'2','.',',') . "<br>";
echo "cost: ". number_format($recaudado,'2','.',',') . "<br>";
echo "ganancia: ". number_format($ganancia,'2','.',',') . "<br>";*/
/*** header propio del reporte RBG ***/
$pdf->SetFont('Arial','B',8);
$pdf->Cell(35,10,'CAPITAL RECAUDADO');
$pdf->Cell(5,10,':',0,0,'C');
$pdf->Cell(15,10,number_format($recaudado,'2','.',','),0,0,'C');
$pdf->Cell(23,10);
$pdf->Cell(18,10,'GANANCIA',0,0);
$pdf->Cell(5,10,':',0,0,'C');
$pdf->Cell(15,10,number_format($ganancia,'2','.',','),0,0,'C');
$pdf->Cell(26,10);
$pdf->Cell(28,10,'TOTAL',0,0,'R');
$pdf->Cell(5,10,':',0,0,'C');
$pdf->Cell(14,10,number_format($total,'2','.',','),0,1,'R');
$pdf->Cell(35,10,'CANTIDAD DE VENTAS');
$pdf->Cell(5,10,':',0,0,'C');
$pdf->Cell(15,10,$cant_ventas,0,0,'C');
/*** Cerrar reporte ***/
$pdf->Output();