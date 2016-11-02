CREATE TABLE bloco1 (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  template_id INTEGER UNSIGNED NOT NULL,
  titulo VARCHAR(50) NULL,
  subtitulo VARCHAR(100) NULL,
  imagem VARCHAR(100) NULL,
  texto TEXT NULL,
  PRIMARY KEY(id),
  INDEX bloco1_FKIndex1(template_id)
);

CREATE TABLE bloco2 (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  template_id INTEGER UNSIGNED NOT NULL,
  titulo VARCHAR(50) NULL,
  subtitulo VARCHAR(100) NULL,
  texto TEXT NULL,
  imagem VARCHAR(100) NULL,
  PRIMARY KEY(id),
  INDEX bloco2_FKIndex1(template_id)
);

CREATE TABLE bloco3 (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  template_id INTEGER UNSIGNED NOT NULL,
  titulo VARCHAR(50) NULL,
  subtitulo VARCHAR(100) NULL,
  PRIMARY KEY(id),
  INDEX bloco3_FKIndex1(template_id)
);

CREATE TABLE bloco3_imagem (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  bloco3_id INTEGER UNSIGNED NOT NULL,
  url VARCHAR(100) NOT NULL,
  PRIMARY KEY(id),
  INDEX bloco3_imagem_FKIndex1(bloco3_id)
);

CREATE TABLE bloco4 (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  template_id INTEGER UNSIGNED NOT NULL,
  titulo VARCHAR(50) NULL,
  subtitulo VARCHAR(100) NULL,
  endereco VARCHAR(50) NULL,
  email VARCHAR(50) NULL,
  texto TEXT NULL,
  PRIMARY KEY(id),
  INDEX bloco4_FKIndex1(template_id)
);

CREATE TABLE menu (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  template_id INTEGER UNSIGNED NOT NULL,
  cor_selecionado VARCHAR(7) NOT NULL,
  PRIMARY KEY(id),
  INDEX menu_FKIndex1(template_id)
);

CREATE TABLE menu_pagina (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  menu_id INTEGER UNSIGNED NOT NULL,
  titulo VARCHAR(20) NOT NULL,
  icon VARCHAR(20) NOT NULL,
  PRIMARY KEY(id),
  INDEX menu_pagina_FKIndex1(menu_id)
);

CREATE TABLE rodape (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  template_id INTEGER UNSIGNED NOT NULL,
  texto VARCHAR(255) NULL,
  PRIMARY KEY(id),
  INDEX rodape_FKIndex1(template_id)
);

CREATE TABLE template (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  logotipo VARCHAR(20) NOT NULL,
  cor_primaria VARCHAR(7) NOT NULL,
  cor_secundaria VARCHAR(7) NOT NULL,
  cor_terciaria VARCHAR(7) NOT NULL,
  ativo BOOL NOT NULL DEFAULT '0',
  PRIMARY KEY(id)
);


