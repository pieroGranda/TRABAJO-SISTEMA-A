<?php
class RBG extends Reporte
{
	public $conn;
	public $capital;
	public $ganancia;
	public $total;
	function __construct()
	{
		$this->conn = parent::connection();
		$this->cgt();
	}

	public function cgt()
	{
		$sql = "SELECT SUM(`price` * `quantity`) AS `t_venta`,SUM(`cost` * `quantity`) AS `t_costo` FROM `tec_products`";
		$prepare =$this->conn->prepare($sql);
		$prepare->execute(array(''));
		$result=$prepare->fetch(PDO::FETCH_OBJ);
		/***  operaciones  ***/

		/*** poner en variables ***/
		$this->capital=$result->t_costo;
		$this->ganancia=$result->t_venta - $this->capital;
		$this->total=$this->ganancia + $this->capital;
	}

}
/*** Reporte de RBG ***/
$RBG = new RBG();
$Reporte = new Reporte();
/***  Variables de datos del reporte RBG***/
$title = "REPORTE DE PRODUCTOS EN EXISTENCIA";
$cell = array("ID","PRODUCTO","CANTIDAD","PREC_COSTO","PREC_VENTA","T_COSTO","T_VENTAS");
$width = array(29,60,20,20,20,20,20);
$align = array("C","L","C","R","R","R","R");
$height = 6;
$sql="
SELECT `code`,`name`,`quantity`,
			  `cost`,`price`, `cost` * `quantity` AS `t_costo`,
			  `price` * `quantity` AS `t_venta` FROM `tec_products";
$valor = array('');
/*** Header del reporte RBG ***/
$Reporte->headerReport($title, $pdf);
/*** header propio del reporte RBG ***/
$pdf->SetFont('Arial','B',8);
$pdf->Cell(37,10,'CAPITAL EN PRODUCTOS');
$pdf->Cell(5,10,':',0,0,'C');
$pdf->Cell(15,10,number_format($RBG->capital,'2','.',','),0,0,'C');
$pdf->Cell(29,10);
$pdf->Cell(18,10,'GANANCIA',0,0);
$pdf->Cell(5,10,':',0,0,'C');
$pdf->Cell(15,10,number_format($RBG->ganancia,'2','.',','),0,0,'C');
$pdf->Cell(18,10);
$pdf->Cell(28,10,'TOTAL',0,0,'R');
$pdf->Cell(5,10,':',0,0,'C');
$pdf->Cell(14,10,number_format($RBG->total,'2','.',','),0,0,'R');
$pdf->Ln(10);
/*** Table header del reporte RBG ***/
$Reporte->th($pdf,$cell,$width,$height);
/*** Table body del reporte RBG ***/
$Reporte->td($pdf,$sql,0,$valor,$cell,$width,$height,$align);
//print_r($RBG->cgt());
/*** Cerrar reporte ***/
$pdf->Output();