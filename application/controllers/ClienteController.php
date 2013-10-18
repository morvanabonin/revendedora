<?php
	
	class Cliente extends AbstractController {

		private $db;

		function __construct() {
                    $this->db = new Application_Model_Cliente();  
		}

		public function index() {
                    echo 'esta funcionando';
                    //$this->view('cliente/index');
                    $data = array (
                        "nome" => "Marcelo",
                        "cpf" => "387548747"
                    );
                    print_r($data);
                    //print_r($this->db);
                    //echo $this->db->insert("Cliente", $data);
			
		}

		public function novos() {
                    $this->view('cliente/cadastro');
		}

	}
