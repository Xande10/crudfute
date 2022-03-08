

CREATE SCHEMA `fute` DEFAULT CHARACTER SET utf8 ;
USE `fute` ;

  CREATE TABLE `fute`.`pais` (
    `id_pais` INT NOT NULL AUTO_INCREMENT,
    `confederacao` VARCHAR(45) NULL,
    `nome` VARCHAR(45) NULL,
    PRIMARY KEY (`id_pais`));

  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('1', 'UEFA', 'Espanha');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('2', 'UEFA', 'Inglaterra');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('3', 'UEFA', 'Alemanha');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('4', 'UEFA', 'Itália');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('5', 'UEFA ', 'França');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('6', 'UEFA', 'Holanda');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('11', 'CONMEBOL', 'Brasil ');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('12', 'CONMEBOL', 'Argentina');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('13 ', 'CONMEBOL', 'Colombia ');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('14', 'CONMEBOL', 'Equador');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('21', 'AFC', 'Japão');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('22', 'CONCACAF', 'México');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('23', 'UAE', 'Emirados Árabes Unidos');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('24', 'AFC', 'Arábia Saudita ');
  INSERT INTO `fute`.`pais` (`id_pais`, `confederacao`, `nome`) VALUES ('25', 'CAF', 'Egito');
    

  CREATE TABLE `fute`.`tecnico` (
    `id_tec` INT NOT NULL,
    `nome_tec` VARCHAR(45) NULL,
    `idade` BIGINT(20) NULL,
    PRIMARY KEY (`id_tec`));

    INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('1001', 'Zidane', '49');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('1002', 'Diego Simeone', '51');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('1003', 'Antonio Conte', '52');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('1004', 'Pep Guardiola', '51');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('2001', 'Allegri', '54');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('2002', 'Leonardo Jardim', '47');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('3001', 'Jupp Heynckes', '76');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('3002', 'Jürgen Klopp', '54');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('3003', 'Di Francesco', '52');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('4001', 'Luiz Enrique ', '51');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('4002', 'Ten Hag', '52');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('4003', 'Maurício Pochetino', '48');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('5001', 'Tomas Tuchel', '48');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('5002', 'Hans-Dieter Flick', '57');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('5003', 'Julian Nagelsmann', '34');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('5004', 'Rudi Garcia', '58');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('1011', 'Reinaldo Rueda ', '64');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('1012', 'Pablo Repetto', '47');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('1013', 'Ricardo Gomes ', '57');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('1014', 'Schelotto', '48');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('2011', 'Renato Gaúcho', '59');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('2012', 'Jorge Almirón', '50');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('2013', 'Guillermo Almada', '52');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('2014', 'Marcelo Gallardo', '46');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('3011', 'Felipão ', '73');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('4011', 'Jorge Jesus', '67');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('5011', 'Abel Ferreira ', '43');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('5012', 'Cuca', '58');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('1111', 'Masatada Ishii', '55');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('1112', 'La Volpe ', '70');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('2111', 'Abel Braga', '69');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('2112', 'Gabriel Caballero ', '51');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('3111', 'Alexandre Gallo', '54');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('3112', 'Javier Aguirre	', '63');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('4111', 'Ramón Díaz	', '62');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('5111', 'Miguel Herrera', '53');
INSERT INTO `fute`.`tecnico` (`id_tec`, `nome_tec`, `idade`) VALUES ('5112', 'Pitso Mosimane	', '53');

    CREATE TABLE  `fute`.`clubes` (
    `id_clube` INT NOT NULL,
    `id_pais` INT NOT NULL,
    `nome` VARCHAR(45) NOT NULL,
    `id_tec` INT NOT NULL,
    PRIMARY KEY (`id_clube`, `id_pais`),
    INDEX `fk_clubes_pais_idx` (`id_pais` ASC),
    INDEX `fk_clubes_tecnico1_idx` (`id_tec` ASC),
    CONSTRAINT `fk_clubes_pais`
      FOREIGN KEY (`id_pais`)
      REFERENCES `fute`.`pais` (`id_pais`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
    CONSTRAINT `fk_clubes_tecnico1`
      FOREIGN KEY (`id_tec`)
      REFERENCES `fute`.`tecnico` (`id_tec`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);

      INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10000','1','Real Madrid','1001');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10001','1','Atlético de Madrid','1002');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10002','1','Barcelona','4001');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10003','2','Manchester City','1004');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10004','2','Liverpool','3002');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10005','2','Chelsea','1003');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10006','2','Totteham','4003');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10007','3','Bayern de Munique','3001');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10008','3','Bayern de Munique','5002');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10009','3','Leipzig','5003');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10010','4','Juventus','2001');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10011','4','Roma','3003');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10012','5','PSG','5001');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10013','5','Lyon','5002 ');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10014','6','Ajax','4002 ');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10100','11','Flamengo','4011');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10101','11','São Paulo','1013 ');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10102','11','Palmeiras','5002 ');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10103','11','Grêmio','2011  ');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10104','11','Santos','2012 ');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10105','12','River Plate','2014 ');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10106','12','Boca Juniors','1014 ');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10107','12','Lanús','2013');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10108','13','Atlético Nacional','1011');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10109','14','Independente del Valle ','1012');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('10110','14','Barcelona de Guayaquil','2012');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('11100','21','Kashima Anderes','1111');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('11101','22','América','1112');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('11102','22','Monterrey','4111');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('11103','22','Tigres','5111');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('11104','23','Al Jazira','3111');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('11105','24','Al-Hilal','4111');
  INSERT INTO `fute`.`clubes` (`id_clube`, `id_pais`, `nome`, `id_tec`) VALUES ('11106','25','Al Ahly','5112');

      CREATE TABLE `fute`.`campeonato` (
    `id_camp` INT NOT NULL AUTO_INCREMENT,
    `edicao` INT NULL,
    `nome_camp` VARCHAR(45) NULL,
    PRIMARY KEY (`id_camp`));

  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('101', '2016', 'Liga dos Campeões ');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('102', '2017', 'Liga dos Campeões');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('103 ', '2018', 'Liga dos Campeões');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('104', '2019', 'Liga dos Campeões ');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('105 ', '2020', 'Liga dos Campeões');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('201', '2016', 'Libertadores ');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('202', '2017', 'Libertadores');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('203 ', '2018', 'Libertadores');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('204', '2019', 'Libertadores');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('205', '2020', 'Libertadores');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('301', '2016', 'Mundial de Clubes ');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('302 ', '2017', 'Mundial de Clubes ');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('303', '2018', 'Mundial de Clubes ');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('304', '2019', 'Mundial de Clubes ');
  INSERT INTO `fute`.`campeonato` (`id_camp`, `edicao`, `nome_camp`) VALUES ('305', '2020', 'Mundial de Clubes ');

      CREATE TABLE `fute`.`jogadores` (
    `id_jog` INT NOT NULL AUTO_INCREMENT,
    `pais_jog` INT NOT NULL,
    `clube_jog` INT NOT NULL,
    `pais_clube` INT NOT NULL,
    `nome` VARCHAR(45) NOT NULL,
    `posicao` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id_jog`, `pais_jog`, `clube_jog`, `pais_clube`),
    INDEX `fk_jogadores_pais1_idx` (`pais_jog` ASC),
    INDEX `fk_jogadores_clubes1_idx` (`clube_jog` ASC, `pais_clube` ASC),
    CONSTRAINT `fk_jogadores_pais1`
      FOREIGN KEY (`pais_jog`)
      REFERENCES `fute`.`pais` (`id_pais`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
    CONSTRAINT `fk_jogadores_clubes1`
      FOREIGN KEY (`clube_jog` , `pais_clube`)
      REFERENCES `fute`.`clubes` (`id_club` , `id_pais`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);

      CREATE TABLE `fute`.`participantes` (

    `id_camp` INT NOT NULL,
    `id_clube` INT NOT NULL,
    `pais_club` INT NOT NULL,
    `tec_club` INT NOT NULL,
    PRIMARY KEY (`id_camp`, `id_clube`, `pais_club`, `tec_club`),
    INDEX `fk_campeonato_has_clubes_clubes1_idx` (`id_clube` ASC, `pais_club` ASC, `tec_club` ASC),
    INDEX `fk_campeonato_has_clubes_campeonato1_idx` (`id_camp` ASC),
    CONSTRAINT `fk_campeonato_has_clubes_campeonato1`
      FOREIGN KEY (`id_camp`)
      REFERENCES `fute`.`campeonato` (`id_camp`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
    CONSTRAINT `fk_campeonato_has_clubes_clubes1`
      FOREIGN KEY (`id_clube` , `pais_club`)
      REFERENCES `fute`.`clubes` (`id_club` , `id_pais`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);

