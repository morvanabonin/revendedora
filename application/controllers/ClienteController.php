<?php
	
	class Cliente extends AbstractController {

		private $db;

		function __construct() {
            //$this->db = new Application_Model_Cliente();  
		}

		public function index() {
			echo 'esta funcionando';
			$this->db = new Application_Model_Cliente();  
            
            $this->view('cliente/index');
            $data = array (
                "nome" => "Marcelo",
                "cpf" => "387548747"
            );
            //print_r($data);
            //print_r($this->db);
            print_r($this->db->insert("cliente", array (
                "nome" => "Marcelo",
                "cpf" => "387548747"
            )));
	
		}

		public function novos() {
            $this->view('cliente/cadastro');
		}

	}
