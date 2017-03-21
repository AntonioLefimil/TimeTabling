<?php
class Usuario {
	
	public $id;
	public $nombre;
	public $apellidoPat;
	public $apellidoMat;
	public $rut;
	public $cargo;
	public $pass;
	public $active;
	
	public function __construct($rut, $pass){
		$this->rut = $rut;
		$this->pass = $pass;
		
	}
	
}
