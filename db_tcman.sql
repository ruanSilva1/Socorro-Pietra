create database db_tcman;
use db_tcman;

CREATE TABLE EQUIPAMENTO (
    id_equipamento INT PRIMARY KEY AUTO_INCREMENT,
    nome_equipamento VARCHAR(255)
);

CREATE TABLE COMENTARIO (
    id_comentario INT PRIMARY KEY AUTO_INCREMENT,
    texto_comentario TEXT,
    equipamento_id INT,
    FOREIGN KEY (equipamento_id) REFERENCES EQUIPAMENTO(id_equipamento)
);

SELECT EQUIPAMENTO.*, COMENTARIO.texto_comentario
FROM EQUIPAMENTO
INNER JOIN COMENTARIO ON EQUIPAMENTO.id_equipamento = COMENTARIO.equipamento_id;

CREATE TABLE log (
id_log INT PRIMARY KEY AUTO_INCREMENT,
PIN INT(6) UNSIGNED ZEROFILL
);