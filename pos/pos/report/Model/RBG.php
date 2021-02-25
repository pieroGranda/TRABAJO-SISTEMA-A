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
	}

	public function cgt()
	{
		$sql = "SELECT SUM(`price` *`category_id`) AS `t_venta`,SUM(`cost` *`category_id`) AS `t_costo` FROM `tec_products`";
		$prepare =$this->conn->prepare($sql);
		$prepare->execute(array(''));
		$result=$prepare->fetch(PDO::FETCH_OBJ);
		$this->capital=$result->t_costo;
		$this->ganancia=$result->t_venta - $this->capital;
		$this->total=$this->ganancia + $this->capital;
	}

}

/*** Reporte de RBG ***/
$RBG = new RBG();
$Reporte = new Reporte();
/***  Variables de fecha***/
if (isset($_POST['fecha_inicial'])) {
	$inicial = $_POST['fecha_inicial']." ".$_POST['time_inicial'];
	$final = $_POST['fecha_final']." ".$_POST['time_final'];
} else {
	header('Location: ../GenerateGeneral/');
}

/***  Variables de datos del reporte RBG***/
$title = "REPORTE DE BOLETAS GESTIONADAS";
$cell = array("BOLETA","CLIENTE","DNI","MONTO","FECHA");
$valor = array(':inicial'=>$inicial,':final'=>$final);
$width = array(30,60,30,23,50);
$align = array("C","C","C","R","C");
$height = 6;
$sql = "SELECT `N DOC`, `CLIENTE`, `DNI`, `MONTO`, `FECHA` FROM `Boletas` WHERE `FECHA` BETWEEN :inicial AND :final";
/*** Header del reporte RBG ***/
$Reporte->headerReport($title, $pdf);
$pdf->SetFont('Arial','B',8);
$pdf->Cell(31,5,'MONTO BOLETEADO');
$pdf->SetFont('Arial','',8);
$pdf->Cell(5,5,':',0,0,'C');
$pdf->Cell(120,5,number_format($Reporte->valorTotal($sql,$valor),'2','.',','));	
$pdf->Ln(8);
/*** Table header del reporte RBG ***/
$Reporte->th($pdf,$cell,$width,$height);
/*** Table body del reporte RBG ***/
$Reporte->td($pdf,$sql,1,$valor,$cell,$width,$height,$align);

//echo $inicial;
//echo $final;
/*** Cerrar reporte ***/
$pdf->Output();