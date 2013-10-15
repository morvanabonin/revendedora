<?php
	class Banco {

    	private static $instance;
    	private $host = "localhost";
		private $dbn  = "revendedora";
		private $user = "root";
		private $pass = "root";

		private function __construct() {}
 
	    public static function singleton()
	    {
	        if (!isset(self::$instance)) {
	            self::$instance = new PDO("mysql:dbname=$dbn; host=$host", $user, $pass);
	            $instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION)
	        }

	        return self::$instance;
	    }

?>