<?php
class reporteController extends Controller{
	
	public function reporteController(){
		parent::Controller();
	}
	/**
	 * @ClassDependency: {'dao.ReporteDAO', 'dao.DataSource', 'model.Archivo'}
	 */
	public function movArchReporte(){

		$reporte = $this->request->getParam('sala');
		$csv 	 ="csv";
		$archivo = "cursossalas.csv";
		$newRuta = REPORTE;
		$oldReporte = MOVE_ASIG_NEW;
		$n 	     = rand(0, 100);
		$newName = $newRuta.'/'.$n.$archivo;
		
		$oldRuta = $oldReporte.'/'.$reporte.'/'.$archivo;
		
		rename($oldRuta , $newName);
		copy($newName, $oldRuta);
		sleep(5);		
		
		$txt = 'INSERT INTO reporte(codigo, nrc, nombreCurso, profesor, edificio, numeroSala) VALUES ';
		
		if (($handle = fopen($newName, "r")) !== FALSE) {
			$it = 0;
		    while (($data = fgetcsv($handle, 1000, ";")) !== FALSE) {
		    	if ($it != 0){
		    		$txt .= '("'.$data[0].'","'.$data[1].'","'.$data[2].'","'.$data[3].'","'.$data[4].'","'.$data[5].'"), ';
		    	}
		    	$it++;
		    }
		    fclose($handle);
		}
		$txt  = substr($txt, 0, strlen($txt)-2);

		$dao = new ReporteDAO();
		$result = $dao->insertCursos($txt);
		
		/*$graf = $dao->grafReporte($txt);

		$this->logger->debug($graf);
		die;	
		
		while ($row = mysqli_fetch_array($graf)) {
			$capacidad[]= $graf[''];
			$edificio[] = $graf[''];
			$tipo[]=$graf[''];
		}
		$grafico = new Graph(500, 400, "auto");
		$grafico->SetScale("textint");
		$gradico->title->set("Reporte Horario Generado");
		$grafico->xaxis->title->Set("Cantidad");
		$grafico->xaxis->SetTickLabels();
		*/
		return $result;
	}
}