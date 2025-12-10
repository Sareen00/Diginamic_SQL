CREATE TABLE article (
    id INT NOT NULL PRIMARY KEY,
    ref VARCHAR(10) NOT NULL,
    designation VARCHAR(50) NOT NULL,
    prix FLOAT(7,2) NOT NULL,
    id_fou INT NOT NULL
);


CREATE TABLE fournisseur (
    id INT NOT NULL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL
);


CREATE TABLE bon (
    id INT NOT NULL PRIMARY KEY,
    numero INT NOT NULL,
    date_cmde DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    delai INT,
    id_fou INT NOT NULL
);

CREATE TABLE compo (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    qte INT NOT NULL,
    id_art INT NOT NULL,
    id_bon INT NOT NULL
);


ALTER TABLE article
    ADD CONSTRAINT fk_article_fournisseur FOREIGN KEY (id_fou) REFERENCES fournisseur(id);

ALTER TABLE bon
    ADD CONSTRAINT fk_bon_fournisseur FOREIGN KEY (id_fou) REFERENCES fournisseur(id);

ALTER TABLE compo
    ADD CONSTRAINT fk_compo_article FOREIGN KEY (id_art) REFERENCES article(id),
    ADD CONSTRAINT fk_compo_bon FOREIGN KEY (id_bon) REFERENCES bon(id);
