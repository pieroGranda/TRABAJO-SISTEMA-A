<?php
abstract class Connection
{

	private $db=DATABASE;
	private $host=DATABASE_HOST;
	private $user=DATABASE_USER;
	private $pass=DATABASE_PASS;
	private $dbname=DATABASE_DBNAME;
	private $charset=DATABASE_CHARSET;

	protected function connection()
	{
		try {
			$conn = new PDO("{$this->db}:host={$this->host};dbname={$this->dbname};charset={$this->charset}",$this->user,$this->pass);
			$conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

			return $conn;
		} catch (PDOException $e) {
			die("Error: " . $e->getMessage());
		}
	}
}