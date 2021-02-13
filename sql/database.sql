DROP DATABASE api;
CREATE DATABASE api;
use api;

CREATE TABLE states(
    id int not null auto_increment,
    uf_code int not null,
    name varchar(255) not null,
    uf varchar(2) not null,
    region int not null,
    PRIMARY KEY (id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE cities(
    id int not null auto_increment,
    state_id int not null,
    name varchar(255),
    PRIMARY KEY (id),
    FOREIGN KEY (state_id) REFERENCES states(id)
) ENGINE=InnoDB CHARACTER SET=utf8;

INSERT INTO states(uf_code, name, uf, region) values (12, 'Acre', 'AC', 1);
INSERT INTO states(uf_code, name, uf, region) values (27, 'Alagoas', 'AL', 2);
INSERT INTO states(uf_code, name, uf, region) values (16, 'Amapá', 'AP', 1);
INSERT INTO states(uf_code, name, uf, region) values (13, 'Amazonas', 'AM', 1);
INSERT INTO states(uf_code, name, uf, region) values (29, 'Bahia', 'BA', 2);
INSERT INTO states(uf_code, name, uf, region) values (23, 'Ceará', 'CE', 2);
INSERT INTO states(uf_code, name, uf, region) values (53, 'Distrito Federal', 'DF', 5);
INSERT INTO states(uf_code, name, uf, region) values (32, 'Espírito Santo', 'ES', 3);
INSERT INTO states(uf_code, name, uf, region) values (52, 'Goiás', 'GO', 5);
INSERT INTO states(uf_code, name, uf, region) values (21, 'Maranhão', 'MA', 2);
INSERT INTO states(uf_code, name, uf, region) values (51, 'Mato Grosso', 'MT', 5);
INSERT INTO states(uf_code, name, uf, region) values (50, 'Mato Grosso do Sul', 'MS', 5);
INSERT INTO states(uf_code, name, uf, region) values (31, 'Minas Gerais', 'MG', 3);
INSERT INTO states(uf_code, name, uf, region) values (15, 'Pará', 'PA', 1);
INSERT INTO states(uf_code, name, uf, region) values (25, 'Paraíba', 'PB', 2);
INSERT INTO states(uf_code, name, uf, region) values (41, 'Paraná', 'PR', 4);
INSERT INTO states(uf_code, name, uf, region) values (26, 'Pernambuco', 'PE', 2);
INSERT INTO states(uf_code, name, uf, region) values (22, 'Piauí', 'PI', 2);
INSERT INTO states(uf_code, name, uf, region) values (33, 'Rio de Janeiro', 'RJ', 3);
INSERT INTO states(uf_code, name, uf, region) values (24, 'Rio Grande do Norte', 'RN', 2);
INSERT INTO states(uf_code, name, uf, region) values (43, 'Rio Grande do Sul', 'RS', 4);
INSERT INTO states(uf_code, name, uf, region) values (11, 'Rondônia', 'RO', 1);
INSERT INTO states(uf_code, name, uf, region) values (14, 'Roraima', 'RR', 1);
INSERT INTO states(uf_code, name, uf, region) values (42, 'Santa Catarina', 'SC', 4);
INSERT INTO states(uf_code, name, uf, region) values (35, 'São Paulo', 'SP', 3);
INSERT INTO states(uf_code, name, uf, region) values (28, 'Sergipe', 'SE', 2);
INSERT INTO states(uf_code, name, uf, region) values (17, 'Tocantins', 'TO', 1);
