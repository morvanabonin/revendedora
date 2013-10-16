<?php
	
	class Cliente extends AbstractController {

		public function index() {
			$this->view('cliente/index');
			
		}

		public function novos() {
			$this->view('cliente/cadastro');
		}

	}
