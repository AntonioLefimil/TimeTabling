<?php
class ReporteDAO extends Controller{
	
	private $connection;	
	protected $logger;
		
	public function __construct(){
		$this->connection = new DataSource();
		$this->logger 	  = Logger::getLogger();
	}
	
	public function selecionar_datos(){
		$query = 'SELECT codigo, capacidad, edificio, tipo FROM aulas';
		
		$result = $this->connection->query($query);
	
		return $result;
	}
	
	public function grafCursos(){
		 $query = 'SELECT tipo_sala, capacidad, nombre_curso';
		 
		 $result = $this->connection->query($query);
		 
		 return $result;
	}
	
	public function grafReporte(){
		$query = 'SELECT a.capacidad, a.edificio, a.tipo FROM aulas a, reporte r WHERE a.numero_sala = r.numeroSala AND a.numero_sala =  r.numeroSala';
		$result = $this->connection->query($query);
		return $query;
	}
	
	public function insertCursos($txt){
		$query = $txt;
		$result = $this->connection->query($query);
		return $result;
	}
}