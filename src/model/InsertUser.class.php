<?php
class InsertUser {
	
	public $id;
	public $nombre;
	public $apellidoPat;
	public $apellidoMat;
	public $rut;
	public $cargo;
	public $pass;
	public $active;
	public $sala;
	
	public function __construct($id, $nombre, $apellidoPat, $apellidoMat, $rut, $cargo, $pass, $active, $sala){
		
		$this->id 			= $id;
		$this->nombre 		= $nombre;
		$this->apellidoPat 	= $apellidoPat;
		$this->apellidoMat 	= $apellidoMat;
		$this->rut 			= $rut;
		$this->cargo 		= $cargo;
		$this->pass         = $pass;
		$this->active       = $active;
		$this->sala         = $sala;
	}

}
