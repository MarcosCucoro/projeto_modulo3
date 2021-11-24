CREATE DATABASE `NBA_STATICS`;
USE `NBA_STATICS`;

CREATE TABLE `TIMES` (
  `TIME_ID` INT PRIMARY KEY,
  `LIGA_ID` INT,
  `ABREVIACAO` CHAR(3),
  `NOME_TIME` VARCHAR(50),
  `ANO_FUNDACAO` INT(4),
  `CIDADE` VARCHAR(50),
  `ARENA` VARCHAR(100),
  `CAPACIDADE_ARENA` INT,
  `PROPRIETARIO_TIME` VARCHAR(100),
  `DIRETOR_GERAL` VARCHAR(100),
  `TREINADOR` VARCHAR(100),
  `CLUBE_AFILIADO` VARCHAR(100)
);

CREATE TABLE `CLASSIFICACAO` (
  `TIME_ID` INT,
  `LIGA_ID` INT,
  `TEMPORADA` INT,
  `DATA_POSICAO` DATE,
  `CONFERENCIA` VARCHAR(10),
  `JOGOS` INT,
  `VITORIAS` INT,
  `DERROTAS` INT,
  `PCT_VITORIAS` DECIMAL(5,3),
  `RECORDES_CASA` VARCHAR(6),
  `RECORDES_FORA` VARCHAR(6)
);

CREATE TABLE `JOGOS` (
  `DATA_JOGO` DATE,
  `JOGO_ID` INT PRIMARY KEY,
  `JOGO_STATUS` CHAR(5),
  `TIME_CASA_ID` INT,
  `TIME_VISITANTE_ID` INT,
  `TEMPORADA` INT,
  `PONTOS_CASA` INT,
  `PCT_FG_CASA` DECIMAL(4,1),
  `PCT_FT_CASA` DECIMAL(4,1),
  `PCT_FG3_CASA` DECIMAL(4,1),
  `AST_CASA` DECIMAL(4,1),
  `REB_CASA` DECIMAL(4,1),
  `PONTOS_VISITANTE` INT,
  `PCT_FG_VISITANTE` DECIMAL(4,1),
  `PCT_FT_VISITANTE` DECIMAL(4,1),
  `PCT_FG3_VISITANTE` DECIMAL(4,1),
  `AST_VISITANTE` DECIMAL(4,1),
  `REB_VISITANTE` DECIMAL(4,1),
  `TIME_CASA_VENCE` CHAR(1)
);

CREATE TABLE `JOGADOR` (
  `NOME_JOGADOR` VARCHAR(100),
  `TIME_ID` INT,
  `JOGADOR_ID` INT PRIMARY KEY,
  `TEMPORADA` INT
);

SET foreign_key_checks = 0;

ALTER TABLE `JOGADOR` ADD CONSTRAINT `FK_TIME_ID` FOREIGN KEY (`TIME_ID`) REFERENCES `TIMES` (`TIME_ID`);

ALTER TABLE `JOGOS` ADD CONSTRAINT `FK_TIME_CASA_ID` FOREIGN KEY(`TIME_CASA_ID`) REFERENCES `TIMES`(`TIME_ID`);
ALTER TABLE `JOGOS` ADD CONSTRAINT `FK_TIME_VISITANTE_ID` FOREIGN KEY(`TIME_VISITANTE_ID`) REFERENCES `TIMES`(`TIME_ID`);

ALTER TABLE `CLASSIFICACAO` ADD CONSTRAINT `FK_TIME_CLASS_ID` FOREIGN KEY(`TIME_ID`) REFERENCES `TIMES`(`TIME_ID`);










/* GLOSSÁRIO */
/*
PCT_FG - % Arremessos certos
PCT_FT - % Aproveitamento nos lances livres
PCT_FG3 - % de Arremessos de 3 pontos convertidos
AST - Assistência por jogo
MIN_QUADRA - Tempo do jogador em quadra em minutos
FGM - Média de arremessos convertidos
FGA - Média de Tentativas de arremessos
FG3M - Média de Arremessos de 3 pontos convertidos
FG3A - Média de Tentativas de arremessos de 3 pontos
FTM - Média de Lances Livres convertidos
FTA - Média de Tentativas de lances livres
REB - Rebotes por jogo
BLK - Tocos por jogo
PTS - Pontos por jogo
*/

 







