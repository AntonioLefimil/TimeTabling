<?php
class AsignacionController extends Controller{
	
	public function AsignacionController(){
		parent::Controller();
	}

	public function cargarFicheros(){ 
		if ($dir = opendir(MOVE_ASIG_NEW)){
			for ($i = 0; false != ($arch =readdir($dir)); $i++) {
				$result[$i]['nombreArch'] = $arch;
			}
		closedir();
		}
		return $result;
	}

	/**
	 * @ClassDependency: { 'model.Archivo' }
	 */
	public function cargarAsign (){
		
		$nombre  = $this->request->getParam("sala");

		$ruta 	 = MOVE_ASIG_NEW;
		$open  	 = $ruta.'/'.$nombre;
		
		if ($dir = opendir($open)){
			for ($i = 0; false != ($arch =readdir($dir)); $i++) {
				$result[$i]['nombreArch'] = $arch;
			}
			closedir();
		}
		return $result;
	}

	/**
	 * @ClassDependency: { 'model.Archivo' }
	 */
	public function mostrarArchivo(){
		
		$ruta 	 = MOVE_ASIG_NEW;
		$impas 	 = $this->request->getParam("impas");
		$archivo = $this->request->getParam("archivo");
		
		$open	 = $ruta.'/'.$impas.'/'.$archivo;

		if (file_exists($open)) {
			$downloadfilename = $downloadfilename !== null ? $downloadfilename : basename($open);
			header('Content-Description: File Transfer');
			header('Content-Type: application/octet-stream');
			header('Content-Disposition: attachment; filename=' . $downloadfilename);
			header('Content-Transfer-Encoding: binary');
			header('Expires: 0');
			header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
			header('Pragma: public');
			header('Content-Length: ' . filesize($open));
		
			ob_clean();
			flush();
			readfile($open);
			exit;
		}
		return $result;
	}
}