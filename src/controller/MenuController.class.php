<?php
class MenuController extends Controller {
	
	public function MenuController(){
		parent::Controller();
	}
	
	/**
	 * @Privilege: AUTHENTICATED
	 */
	 public function home(){
		return 'index';
	 }
	
	/**
	 * @Privilege: AUTHENTICATED
	 */
	 public function subirArchivos(){
		 return 'subirArchivos';
	 }
	 
	 /**
	 * @Privilege: AUTHENTICATED
	 */
	 public function gestionUsuarios(){
		 return'gestionUsuarios';
	 }
	 
	 /**
	 *@Privilege: AUTHENTICATED
	 */
	 public function ejecutarAlgoritmo(){
		 return 'ejecutarAlgoritmo';
	 }
	 
	 /**
	 *@Privilege: AUTHENTICATED
	 */
	 public function usuario(){
		 return 'addUsuario';
	 }
	 
	 /**
	 *@Privilege: AUTHENTICATED
	 */
	 public function ActualizarUsuario(){
		 return 'ActualizarUsuario';
	 }

	 /**
	  *@Privilege AUTHENTICATED
	  */
	 public function Reportes(){
	 	return 'reportes';
	 }
	 
	 /**
	  *@Privilege AUTHENTICATED
	 */
	 public function asignaciones(){
	 	return 'verFicheros';
	 }

	 /**
	  *@Privilege AUTHENTICATED
	  */
	 public function ficherosAsignacion(){
	 	return 'verFicherosAsignacion';
	 }
	 
	 public function error(){
	 	return 'error';
	 }
	 
	 /**
	  *@Privilege AUTHENTICATED
	  */
	 public function reportesDir(){
	 	return 'reportesDir';
	 }
	 
	 /**
	  *@Privilege AUTHENTICATED
	  */
	 public function verFicherosDir(){
	 	return 'verFicherosDir';
	 }
	 
	 /**
	  *@Privilege AUTHENTICATED
	  */
	 public function subirArchivosDir(){
	 	return 'subirArchivosDir';
	 }
	 
}
