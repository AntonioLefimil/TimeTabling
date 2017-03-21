<?php
class HomeController extends Controller {
     
    public function HomeController(){
        parent::Controller();
    }
     
    public function index(){
        return 'login';
    }
    
    public function logout(){
        $this->session->close();
        return 'login';
    }
     
    /**
     * @ClassDependency: { 'model.Usuario', 'dao.DataSource', 'dao.UsuarioDAO' }
     */
    public function login(){
        $template = 'login';
        $dao = new UsuarioDAO();
        $user = $this->request->getParam('user');
        $pass = $this->request->getParam('pass');
        $u = new Usuario($user, $pass);
        $result = $dao->isActive($u);
         
        if (count($result) == 0){
            throw new Exception("No se encontro el usuario: $user");
        }
         
        $id = $result[0]['id'];
        $cargo = $result[0]['cargo'];
         
        $u->id = $id;
        $u->cargo = $cargo;
         
        $this->session->setUser($u);
         
        $this->session->setAttr('id', $id);
        $this->session->setAttr('cargo', $cargo);
         
        return 'signin';
    }
     
    public function account(){
    	
    	$template = 'error';
        
        $id		= $this->session->getAttr('id');
        $cargo  = $this->session->getAttr('cargo');
        
        if ($cargo == 1){
            $template =  'index';
        }
        else if ($cargo == 2){
            $template =  'menuDirector';
        }
        return $template;
    }
    /**
     * @ClassDependency: { 'dao.UsuarioDAO', 'dao.DataSource', 'model.Usuario' }
     */
    
    public function usuarioIn(){
    	
    	$dao = new UsuarioDAO();
    	$user = $this->request->getParam('user');
    	$pass = $this->request->getParam('pass');
    	$u = new Usuario($user, $pass);

    	$u->id = $id;
    	$u->cargo = $cargo;
		    	 
    	$this->session->setUser($u);
    	 
    	$this->session->setAttr('id', $id);
    	$this->session->setAttr('cargo', $cargo);
    	 
    	$result = $dao->isActive($id, $cargo);
    	
    	return $result;
    }
}