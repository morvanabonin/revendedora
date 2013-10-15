SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `revendedora` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `revendedora` ;

-- -----------------------------------------------------
-- Table `revendedora`.`Cliente`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `revendedora`.`Cliente` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `cpf` VARCHAR(45) NULL ,
  `cnpj` VARCHAR(45) NULL ,
  `nome` VARCHAR(100) NOT NULL COMMENT '	' ,
  `idade` INT NULL ,
  `sexo` CHAR(2) NULL ,
  `endereco` VARCHAR(100) NULL ,
  `telefone` VARCHAR(25) NOT NULL ,
  `email` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora`.`Vendedor`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `revendedora`.`Vendedor` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `cod_vendedor` VARCHAR(45) NOT NULL COMMENT '	' ,
  `nome` VARCHAR(100) NOT NULL ,
  `sexo` CHAR(2) NULL ,
  `idade` INT NULL ,
  `endereco` VARCHAR(60) NULL COMMENT '	' ,
  `telefone` VARCHAR(25) NOT NULL ,
  `email` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora`.`Bicicleta`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `revendedora`.`Bicicleta` (
  `id` INT NOT NULL ,
  `marcha` INT NOT NULL COMMENT '	' ,
  `aro` INT NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora`.`Carro`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `revendedora`.`Carro` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT '			' ,
  `motor` VARCHAR(25) NOT NULL ,
  `cambio` VARCHAR(45) NOT NULL ,
  `portas` INT NULL ,
  `combustivel` VARCHAR(50) NULL ,
  `chassi` VARCHAR(25) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora`.`Veiculo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `revendedora`.`Veiculo` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `id_bicicleta` INT NULL ,
  `id_carro` INT NULL ,
  `modelo` VARCHAR(45) NOT NULL ,
  `marca` VARCHAR(45) NOT NULL ,
  `ano` VARCHAR(45) NOT NULL ,
  `valor` DOUBLE NOT NULL ,
  `cor` VARCHAR(45) NULL ,
  `quant_estoque` INT NULL ,
  `tipo_veiculo` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Veiculo_Bicicleta1` (`id_bicicleta` ASC) ,
  INDEX `fk_Veiculo_Carro1` (`id_carro` ASC) ,
  CONSTRAINT `fk_Veiculo_Bicicleta1`
    FOREIGN KEY (`id_bicicleta` )
    REFERENCES `revendedora`.`Bicicleta` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Veiculo_Carro1`
    FOREIGN KEY (`id_carro` )
    REFERENCES `revendedora`.`Carro` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora`.`Vendas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `revendedora`.`Vendas` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `id_cliente` INT NOT NULL ,
  `id_vendedor` INT NOT NULL ,
  `data_venda` TIMESTAMP NOT NULL ,
  `tipo_transacao` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `fk_Vendas_Vendedor1` (`id_vendedor` ASC) ,
  INDEX `fk_Vendas_Cliente1` (`id_cliente` ASC) ,
  CONSTRAINT `fk_Vendas_Vendedor1`
    FOREIGN KEY (`id_vendedor` )
    REFERENCES `revendedora`.`Vendedor` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vendas_Cliente1`
    FOREIGN KEY (`id_cliente` )
    REFERENCES `revendedora`.`Cliente` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `revendedora`.`Vendas_Veiculo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `revendedora`.`Vendas_Veiculo` (
  `id_vendas` INT NOT NULL ,
  `id_veiculo` INT NOT NULL ,
  `quant_vendas` INT NULL ,
  `valor_unitario` FLOAT NULL ,
  `valor_total` FLOAT NULL ,
  PRIMARY KEY (`id_vendas`, `id_veiculo`) ,
  INDEX `fk_Vendas_has_Veiculo_Veiculo1` (`id_veiculo` ASC) ,
  INDEX `fk_Vendas_has_Veiculo_Vendas1` (`id_vendas` ASC) ,
  CONSTRAINT `fk_Vendas_has_Veiculo_Vendas1`
    FOREIGN KEY (`id_vendas` )
    REFERENCES `revendedora`.`Vendas` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Vendas_has_Veiculo_Veiculo1`
    FOREIGN KEY (`id_veiculo` )
    REFERENCES `revendedora`.`Veiculo` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `revendedora`.`Cliente`
-- -----------------------------------------------------
START TRANSACTION;
USE `revendedora`;
INSERT INTO `revendedora`.`Cliente` (`id`, `cpf`, `cnpj`, `nome`, `idade`, `sexo`, `endereco`, `telefone`, `email`) VALUES (NULL, NULL, ' 99.999.999/9999-99', 'Azul Company', NULL, NULL, 'Rua Setembrino', '5183894754', 'azul@company.com.br');
INSERT INTO `revendedora`.`Cliente` (`id`, `cpf`, `cnpj`, `nome`, `idade`, `sexo`, `endereco`, `telefone`, `email`) VALUES (NULL, '89534569213', NULL, 'Marcelo Campos', 23, 'M', 'Rua Santos Dias', '5178202910', 'marcelocampos@hotmail.com');

COMMIT;

-- -----------------------------------------------------
-- Data for table `revendedora`.`Vendedor`
-- -----------------------------------------------------
START TRANSACTION;
USE `revendedora`;
INSERT INTO `revendedora`.`Vendedor` (`id`, `cod_vendedor`, `nome`, `sexo`, `idade`, `endereco`, `telefone`, `email`) VALUES (NULL, '7845A', 'Mariana Gonçalves', 'F', 25, 'Rua Dr. Flores, 762 apto. 234', '51 99671512', 'marianagoncalves@gmail.com');

COMMIT;

-- -----------------------------------------------------
-- Data for table `revendedora`.`Bicicleta`
-- -----------------------------------------------------
START TRANSACTION;
USE `revendedora`;
INSERT INTO `revendedora`.`Bicicleta` (`id`, `marcha`, `aro`) VALUES (NULL, 21, 26);

COMMIT;

-- -----------------------------------------------------
-- Data for table `revendedora`.`Carro`
-- -----------------------------------------------------
START TRANSACTION;
USE `revendedora`;
INSERT INTO `revendedora`.`Carro` (`id`, `motor`, `cambio`, `portas`, `combustivel`, `chassi`) VALUES (NULL, '1.0 8V flex', 'manual', 4, 'gasolina/alcool', NULL);

COMMIT;
