<?php
	
	class Cliente extends AbstractController() {

		public function index() {
			echo 'funciona';
			$teste = $this->view('cliente/index');
			print_r($teste);
		}

		public function novos() {
			$this->view('cliente/cadastro');
		}

	}
