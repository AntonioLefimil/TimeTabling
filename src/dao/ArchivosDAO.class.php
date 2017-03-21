<?php
class ArchivosDAO{
	
	
	private $connection;	
		
	public function __construct(){
		$this->connection = new DataSource();
	}
	
	public function insertarAulas($txt){
		$query = $txt;
		$result = $this->connection->query($query);		
		return $result;
	}
	
	public function insertarCursos($txt){
		
		$query = $txt;
		$result = $this->connection->query($query);
		
		return $result;
	}
	
}