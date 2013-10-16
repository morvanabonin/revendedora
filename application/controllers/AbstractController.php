<?php 

	abstract class AbstractController 

		protected function view($view) {

			if (isset($view)) {
				$view = explode('/', $view);
				$controller = $view[0];
				$action = $view[1];
			}
			return require_once('views/'.$controller.'/'.$action.'.phtml');
		}
	}
