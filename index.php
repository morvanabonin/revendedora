<!DOCTYPE html>
	<head>
		<link rel="stylesheet" type="text/css" href="../public/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="../public/css/bootstrap-responsive.css">
		<link rel="stylesheet" type="text/css" href="../public/css/style.css">
	</head>
	<body>	
      <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="./index.php">Revendedora</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <!--<li class="active">
                <a href="./index.html">Home</a>
              </li>-->
              <li class="">
                <a href="cliente/index">Cliente</a>
              </li>
              <li class="">
                <a href="./scaffolding.html">Vendedor</a>
              </li>
              <li class="">
                <a href="./base-css.html">Veiculo</a>
              </li>
              <li class="">
                <a href="./components.html">Vendas</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <?php
      //Pega os parametros passado pela URL, caso não tenha seta como index/index
      $_GET['key'] = (isset($_GET['key']) ? $_GET['key'] : 'index/index');
      $key = $_GET['key'];
      //Faz um explode na var key e transforma ela em um array.
      $separator = explode('/', $key);
      //Pega a posição 0 do array, será nosso Controller.
      $controller = $separator[0];
      //Pega a posição 1 do nosso array, será nossa View.
      $action = ($separator[1] == null ? 'index' : $separator[1]);  

      function __autoload($file) {
          require_once('application/models/'. $file .'.php' );
      }
                         
			require_once('application/controllers/AbstractController.php');  
      require_once('application/models/AbstractModel.php');  
			require_once('application/controllers/'.ucfirst($controller). 'Controller.php');
			$application = new $controller();
			$application->$action();
		?>
		<script type="text/javascript" src="../public/js/bootstrap.js"></script>
	</body>
</html>

