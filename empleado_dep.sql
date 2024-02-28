-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DEBIL
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DEBIL
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DEBIL` DEFAULT CHARACTER SET utf8 ;
USE `DEBIL` ;

-- -----------------------------------------------------
-- Table `DEBIL`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DEBIL`.`Empleado` (
  `Num_emp` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Fecha_ingreso` VARCHAR(40) NULL,
  `Num_dept` INT NOT NULL,
  `Departamento_Num. departamento` INT NOT NULL,
  PRIMARY KEY (`Num_emp`),
  INDEX `fk_Empleado_Departamento1_idx` (`Departamento_Num. departamento` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DEBIL`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DEBIL`.`Departamento` (
  `Num. departamento` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Presupuesto` VARCHAR(45) NOT NULL,
  `Empleado_Num_emp1` INT NOT NULL,
  PRIMARY KEY (`Num. departamento`),
  INDEX `fk_Departamento_Empleado1_idx` (`Empleado_Num_emp1` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
