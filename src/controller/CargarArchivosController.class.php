<?php 
class CargarArchivosController extends Controller {
     
    public function CargarArchivosController(){
        parent::Controller();
    }  
    /**
     * @ClassDependency: {'dao.ArchivosDAO', 'dao.DataSource', 'model.Archivo' }
     */
    public function cargarAulas(){
		
    	$dao = new ArchivosDAO();

    	$uploadfile = UPLOAD_DIR.'/'.basename($_FILES['aulas']['name']);
        $file = $filename = $_FILES['aulas']['tmp_name'];

        $txt = 'INSERT INTO aulas(codigo, capacidad, edificio, numero_sala, tipo) VALUES ';
       
		if (move_uploaded_file($file, $uploadfile)) {
			$row = 1;
			if (($handle = fopen($uploadfile, "r")) !== FALSE) {
				$it = 0;
				while (($data = fgetcsv($handle, 1000, ";")) !== FALSE) {
					if ($it != 0){
						$txt .= '("'.$data[0].'","'.$data[1].'","'.$data[2].'","'.$data[3].'","'.$data[4].'"), ';
					}
					$it++;
				}
				fclose($handle);
			}
			
			$txt = substr($txt, 0, strlen($txt)-2);
			$result = $dao->insertarAulas($txt);
			
			if ($result == true) { return 'ejecutarAlgoritmo';
			}elseif ($result == false){ return 'error';   }
		
		}else { return 'error'; }
    }
	
    /**
     * @ClassDependency: {'dao.ArchivosDAO', 'dao.DataSource', 'model.Archivo' }
     */
	public function cargarAsignaturas(){
		
		$dao = new ArchivosDAO();
		
		$uploadfile = UPLOAD_CURSOS.'/'.basename($_FILES['cursos']['name']);
		$file = $filename = $_FILES['cursos']['tmp_name'];

		$txt = 'INSERT INTO curso(codigo, nrc, nombre_curso, profesor, capacidad, tipo_sala, horario1, periodo1, horario2, periodo2) VALUES ';
	
		if (move_uploaded_file($file, $uploadfile)) {
			$row = 1;
			if (($handle = fopen($uploadfile, "r")) !== FALSE) {
				$it = 0;
				while (($data = fgetcsv($handle, 1000, ";")) !== FALSE) {
					if ($it != 0){
						$txt .= '("'.$data[0].'","'.$data[1].'","'.$data[2].'","'.$data[3].'","'.$data[4].'","'.$data[5].'","'.$data[6].'","'.$data[7].'","'.$data[8].'","'.$data[9].'"), ';
					}
					$it++;
				}
				fclose($handle);
			}

			$txt  = substr($txt, 0, strlen($txt)-2);
			$result = $dao->insertarCursos($txt);
			
			if ($result == true) { return 'ejecutarAlgoritmo';
			}elseif ($result == false){ return 'error'; }
				
		}else{ return 'error'; }	
	}
}