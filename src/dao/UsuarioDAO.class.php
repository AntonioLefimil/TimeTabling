<?php
class UsuarioDAO {
	
	private $connection;
	protected $logger;
	
	public function __construct(){
		$this->connection = new DataSource();
		$this->logger = Logger::getLogger();
	}
	
	public function isActive(Usuario $usuario){
		$usuario->pass = hash('sha256', $usuario->pass);
		$query = 'SELECT id, cargo FROM usuario '."WHERE rut='$usuario->rut' AND pass='$usuario->pass' AND active=1";
		$result = $this->connection->query($query);
		return $result;
	}
	
	public function agregarUsuario($nombre, $apellidoPat, $apellidoMat, $rut, $cargo, $pass){
		$pass = hash('sha256', $pass);
		$query = "INSERT INTO usuario(nombre, apellidoPat, apellidoMat, rut, cargo, pass, active)VALUES('$nombre', '$apellidoPat', '$apellidoMat', '$rut', $cargo, '$pass', 1);";
		$result= $this->connection->query($query);

		return $result;		
	}
	
	public function buscarUsuarios(){
		
		$sql = 'SELECT  id, nombre, apellidoPat, apellidoMat, rut, cargo  FROM usuario WHERE active=1';
		return $this->connection->query($sql);
		
	}
	
	public function modificarUsuarios($nombre, $apellidoPat, $apellidoMat, $rut, $cargo, $pass, $activo){
		$pass = hash('sha256', $pass);
		$sql =
			'UPDATE usuario '.
			"SET nombre='$nombre', ".
			"apellidoPat='$apellidoPat', ".
			"apellidoMat='$apellidoMat', ".
			"cargo=$cargo, ".
			"pass='$pass', ".
			"active=$activo ".
			"WHERE rut='$rut'";

		return $this->connection->query($sql);
	}
}