<?php
	/* app config */
	define("CTX_PATH", $_SERVER['DOCUMENT_ROOT'].'/proyecto');
	define("SITE_MAP", CTX_PATH."/src/controller/site.xml");
	define("UPLOAD_DIR", CTX_PATH.'/upload/salas');
	define("UPLOAD_CURSOS", CTX_PATH.'/upload/cursos');
	define("MOVE_DIR", 'C:\wamp\www\Software\timetable2\archivos');
	define("MOVE_ASIG", 'C:\wamp\www\Software\asignaciones');
	define("MOVE_ASIG_NEW", 'C:\wamp\www\Proyecto\asignaciones');
	define("REPORTE", 'C:\wamp\www\Proyecto\reporte');
	define("WELCOME_PAGE", "index.htm");
	define('LOG_DIR', '/logs');
	define('LOG_LEVEL', 'DEBUG');
	define('DEV_MOBILE', '1');
	
	/* propiedades de conexion */
	define('DB_HOST', 'localhost');
	define('DB_USER', 'root');
	define('DB_PASS', '');
	define('DB_NAME', 'time_tabling');
	define('DB_PORT', '3306');
	
	