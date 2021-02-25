<?php 

	class insertFB extends Connection
	{
		private $conn;
		function __construct()
		{
			$this->conn = parent::connection();
		}

		public function insertFB($sql,$valor){
			$prepare = $this->conn->prepare($sql);
			$prepare->execute($valor);
			return $prepare->rowCount();
		}
	}

