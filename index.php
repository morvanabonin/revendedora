<?php
	//Pega os parametros passado pela URL, caso não tenha seta como index/index
	$_GET['key'] = (isset($_GET['key']) ? $_GET['key'] : 'index/index');
	$key = $_GET['key'];
	//Faz um explode na var key e transforma ela em um array.
	$separator = explode('/', $key);
	//Pega a posição 0 do array, será nosso Controller.
	$controller = $separator[0];
	//Pega a posição 1 do nosso array, será nossa View.
	$action = $separator[1];

	require_once('application/controllers/'.$controller. 'Controller.php');
	$application = new $controller();
	$application->$action();

?>