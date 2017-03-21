<?php 

class UsuarioController extends Controller {
	
	public function UsuarioController(){
		parent::Controller();
	}	 
	 
	/**
	 * @ClassDependency: { 'model.InsertUser', 'dao.UsuarioDAO', 'dao.DataSource' }
	 */
	public function addUsuario(){		
		$dao = new UsuarioDAO;
		
		$nombre 	 = $this->request->getParam('nombre');
		$apellidoPat = $this->request->getParam('apellidoPat');
		$apellidoMat = $this->request->getParam('apellidoMat');
		$rut 		 = $this->request->getParam('rut');
		$cargo 		 = $this->request->getParam('cargo');
	    $pass  	     = $this->request->getParam('pass');
		//$active      = $this->request->getParam('active');
		
		$result      = $dao->agregarUsuario($nombre, $apellidoPat, $apellidoMat, $rut, $cargo, $pass);

		return $result;
	}
	
	/**
	 * @ClassDependency: { 'model.InsertUser', 'dao.UsuarioDAO', 'dao.DataSource' }
	 */
	
	public function buscarUsuarios(){
		
		$dao = new UsuarioDAO;		
		return $dao->buscarUsuarios();
	
	}
	
	/**
	 * @ClassDependency: { 'model.InsertUser', 'dao.UsuarioDAO', 'dao.DataSource' }
	 */
	public function modificarUsuarios(){
		$dao = new UsuarioDAO;

		$nombre 	 = $this->request->getParam('nombre');
		$apellidoPat = $this->request->getParam('apellidoPat');
		$apellidoMat = $this->request->getParam('apellidoMat');
		$rut 		 = $this->request->getParam('rut');
		$cargo 		 = $this->request->getParam('cargo');
		$pass		 = $this->request->getParam('pass');
		$activo 	 = $this->request->getParam('activo');
		
		$result = $dao->modificarUsuarios($nombre, $apellidoPat, $apellidoMat, $rut, $cargo, $pass, $activo);
		
		return $result;
	}
}
