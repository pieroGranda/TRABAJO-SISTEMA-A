<?php  require '../Config/Config.php';require '../Core/Connection.php';

  class Ventas extends Connection
  {
  	private $conn;
  	
	function __construct()
	{
		$this->conn = parent::connection();
	}


	public function read($sql)
	{
		$prepare =$this->conn->prepare($sql);
		$prepare->execute(array(''));
		return $prepare->fetchAll(PDO::FETCH_OBJ);
	}
  }

  if ($_POST['estado'] == 0) {
	$sql = "SELECT `id`,`username` FROM `tec_users`";
  	$Ventas = new Ventas();
  	echo json_encode($Ventas->read($sql));
  } 
  
?>