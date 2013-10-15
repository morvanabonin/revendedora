<?php
	class Application_Model_Banco {

    	private static $_instance;
    	private $_host = "localhost";
		private $_dbn  = "revendedora";
		private $_user = "root";
		private $_pass = "root";

		private function __construct() {}
 
	    public static function getIstance()
	    {
	        if (!isset(self::$instance)) {
	            self::$_instance = new PDO("mysql:dbname=$_dbn; host=$_host", $_user, $_pass);
	            $_instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION)
	        }

	        return self::$_instance;
	    }

?>