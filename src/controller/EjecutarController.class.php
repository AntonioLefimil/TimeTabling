<?php
class EjecutarController extends Controller {
	
	public function EjecutarController(){
		parent::Controller();
	}

	public function listarCursos(){
		if($dir = opendir(UPLOAD_CURSOS)){
			for ($i = 0; false !== ($arch = readdir($dir)); $i++){			
				$result[$i]['nombreArch'] = $arch;
			}
			closedir();
		}
		$oldAsig 	= MOVE_ASIG;
		if (!file_exists($oldAsig)) {
			mkdir($oldAsig);
		}
		
		return $result;
	}

	public function listarSalas(){
		if($dir = opendir(UPLOAD_DIR)){
			for ($i = 0; false !== ($arch = readdir($dir)); $i++){
				$result[$i]['nombreArch'] = $arch;
			}
			closedir();
		}
		return $result;
	}
	
	public function ejecutarAlgoritmo(){
		
		$curso  	= $this->request->getParam('curso');
		$sala  	 	= $this->request->getParam('sala');
		
		$NameCursos = "cursos.csv";
		$NameSalas  = "salas.csv";
		
		$oldCursos  = UPLOAD_CURSOS.'/'.$curso;
		$newCursos  = MOVE_DIR.'/'.$NameCursos;
		
		$oldSalas 	= UPLOAD_DIR.'/'.$sala;
		$newSalas 	= MOVE_DIR.'/'.$NameSalas;
		
		$nombreCurso= explode('.', $curso);
		$nombreSalas= explode('.', $sala);
		$nombreArch = $nombreCurso[0].$nombreSalas[0];
		
		$oldAsig 	= MOVE_ASIG;
		
		$newAsig	= MOVE_ASIG_NEW.'/'.$nombreArch;
		
		rename($oldSalas, $newSalas);
		copy($newSalas, $oldSalas);
		
		rename($oldCursos, $newCursos);
		copy($newCursos, $oldCursos);
		
		$gestor = popen('C:\wamp\www\Software\timetable2\archivos\main.exe', 'r');		//
		$leer = fread($gestor, 2096);
		pclose($gestor);
			
		sleep(10);
		rename($oldAsig, $newAsig);
		
		return 'verAsignaciones';
	}
}