<?php 

class PDF extends FPDF 
{
	public function Footer ()
	{
		$this->SetY(5);
		$this->SetX(190);
		$this->SetFont('Arial','I', 8);
		$this->cell(0,10,$this->PageNo() .' de {nb}',0,0,'C');
	}


}

$pdf = new PDF();
$pdf->AliasNbPages();
