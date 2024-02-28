-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema EMPLEADOS
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema EMPLEADOS
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `EMPLEADOS` DEFAULT CHARACTER SET utf8 ;
USE `EMPLEADOS` ;

-- -----------------------------------------------------
-- Table `EMPLEADOS`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EMPLEADOS`.`EMPLEADO` (
  `Codemp` VARCHAR(20) NOT NULL,
  `Nombre` INT NOT NULL,
  `Matricula` VARCHAR(20) NOT NULL,
  `Fecha_inicio` DATE NOT NULL,
  PRIMARY KEY (`Codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EMPLEADOS`.`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EMPLEADOS`.`VEHICULO` (
  `Matricula` VARCHAR(20) NOT NULL,
  `Modelo` VARCHAR(45) NOT NULL,
  `EMPLEADO_Codemp` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`Matricula`),
  INDEX `fk_VEHICULO_EMPLEADO_idx` (`EMPLEADO_Codemp` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
