<?php

class AbstractModel {

	private static $_instance;
	private $_host = "localhost";
	private $_dbn  = "revendedora";
	private $_user = "root";
	private $_pass = "root";

	private function __construct() {}

    public static function getIstance($_host, $_dbn, $_user, $_pass)
    {
        if (!isset(self::$instance)) {
            self::$_instance = new PDO("mysql:host=$_host;dbname=$_dbn", $_user, $_pass);
            self::$_instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }

        return self::$_instance;
    }
    
    public function insert($table, Array $data) {
        //$sql = "INSERT INTO tabela (ca";
        foreach ($data as $index => $values) {
            $campos[] = $index;
            $valores[] = $values;
        }
        
        $campos = implode(", ", $campos);
        $valores = implode(", ", "'".$valores."'");
        return $valores;
    }
    
    public function read() {
        
    }
    
    public function update() {
        
    }
    
    public function delete() {
        
    }


}