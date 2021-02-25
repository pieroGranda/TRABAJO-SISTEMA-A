<?php require_once "../../Config/Config.php";
	  require_once '../../Core/Connection.php';

class infoTicket extends Connection
{
	private $conn;
	public $count;
	function __construct()
	{
		$this->conn = parent::connection();
	}

	public function infoTicket($ticketNum)
	{
		$sql = "SELECT `tec_sale_items`.`quantity` `cant`,`tec_products`.`name` `name`,
				       `tec_sale_items`.`real_unit_price`  `p_unit` FROM `tec_sale_items` INNER JOIN  `tec_products`
				       ON `tec_products`.`id` = `tec_sale_items`.`product_id` WHERE `sale_id`=:id";
		$prepare = $this->conn->prepare($sql);
		$prepare->execute(array(':id'=>$ticketNum));
		$this->count  = $prepare->rowCount();
		return $prepare->fetchAll(PDO::FETCH_OBJ);
	}

	public function infoDescuento($ticketNum)
	{
		$sql = "SELECT `total_discount` `descuento`,`date`, `grand_total` `total` FROM `tec_sales` WHERE `id`=:id";
		$prepare = $this->conn->prepare($sql);
		$prepare->execute(array(':id'=>$ticketNum));
		$this->count  = $prepare->rowCount();
		return $prepare->fetch(PDO::FETCH_OBJ);
		//return $prepare->rowCount();
	}
}
if (isset($_POST["estado"]) && isset($_POST["ticketNum"])) {
	if ($_POST["estado"] == 0) {
		$infoTicket = new infoTicket();
		$consulta = $infoTicket->infoTicket($_POST["ticketNum"]);
		if ($infoTicket->count > 0) {
			echo json_encode($consulta);
		} else {
			echo 0;
		}
	} else if ($_POST["estado"] == 1){
		$infoTicket = new infoTicket();
		$consulta = $infoTicket->infoDescuento($_POST["ticketNum"]);
		if ($infoTicket->count > 0) {
			echo json_encode($consulta);
		} else {
			echo 0;
		}
		
	}
}
