<?php  require_once 'Connection.php';
		require_once 'fpdf/fpdf.php';
class Reporte extends Connection
{
	private $conn;
	function __construct()
	{
		$this->conn = parent::connection();
	}
	public function headerReport($title,$pdf)
	{
		$infoCompany = $this->infoCompany();
		$pdf->AddPage();
		//---------------title--------------------------------
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(0,20,$title,0,0,'C');
		//--------------site--name----------------------------
		$pdf->Ln(20);
		$pdf->SetFont('Arial','B',8);
		$pdf->Cell(15,10,'EMPRESA');
		$pdf->SetFont('Arial','',8);
		$pdf->Cell(5,10,':',0,0,'C');
		$pdf->Cell(120,10,$infoCompany->site_name);
		//--------------site--logo----------------------------
		$pdf->Cell(50,10,$pdf->Image("../Image/logo.jpg",$pdf->GetX(), $pdf->GetY(), 50,10),0,1);
	}
	private function infoCompany()
	{
		$sql = "SELECT `logo`,`site_name` FROM `tec_settings`";
		$prepare = $this->conn->prepare($sql);
		$prepare->execute(array(''));
		return $prepare->fetch(PDO::FETCH_OBJ);
	}
	public function infoProducts($sql,$valor)
	{
		$prepare = $this->conn->prepare($sql);
		$prepare->execute($valor);
		return $prepare->fetchAll(PDO::FETCH_NUM);
	}
	public function valorTotal($sql,$valor)
	{
		$result = $this->infoProducts($sql,$valor);
		$suma=0;
		foreach ($result as $key => $value) {
			$suma = $suma + $value[3];
		}
		return $suma;
	}
	public function th($pdf,$cell,$width,$height)
	{
		//--------------------tipografia--------------------
		$pdf->SetFont('Arial','B',8);
		//-----------------create--cell-th------------------------------------
		foreach ($cell as $key => $value) {
			if (count($cell) == $key+1) {
				$pdf->Cell($width[$key],$height,$value,1,1,'C');				
			}else {
				
				$pdf->Cell($width[$key],$height,$value,1,0,'C');				
			}
		}
	}
	/********************solo sirve si la tabla de la base de datos es igual al tamaño de $cell**********************/
	public function td($pdf,$sql,$estado,$valor,$cell,$width,$height,$align)
	{
		$infoProducts = $this->infoProducts($sql,$valor);
		//--------------------tipografia--------------------
		$pdf->SetFont('Arial','',8);
		//-----------------create--cell-td------------------------------------
		foreach ($infoProducts as $infoProductKey => $infoProduct) {
			foreach ($infoProduct as $key => $value) {
				if (count($cell) == $key+1) {
					if ($estado == 0) {
						$pdf->Cell($width[$key],6,number_format($value,'2','.',','),'B',1,$align[$key]);					
					} else {
						$pdf->Cell($width[$key],6,utf8_decode($value),'B',1,$align[$key]);					
					}					
				}else {
					if ($key > 2 && $estado == 0) {
						$pdf->Cell($width[$key],6,number_format($value,'2','.',','),'B',0,$align[$key]);					
					} else if ($key == 3 && $estado == 1) {
						$pdf->Cell($width[$key],6,number_format($value,'2','.',','),'B',0,$align[$key]);					
					}else {
						$pdf->Cell($width[$key],6,utf8_decode($value),'B',0,$align[$key]);					
					}
					
				}		
			}
		}
	}
}
