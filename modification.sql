-- TP2 - Exercice 2.3

-- Requêtes pour afficher un numéro d'tages correct en fonction du indIP
-- Moddèle : UPDATE <table> SET <column> = <new_value> WHERE <column_condition> = <value_condition>;
UPDATE Segment SET etage = "0" WHERE indIP = "130.120.80";
UPDATE Segment SET etage = "1" WHERE indIP = "130.120.81";
UPDATE Segment SET etage = "2" WHERE indIP = "130.120.82";

-- Requête pour  diminuere de 10% le prix des logiciels de type "PCNT"
-- Modèle : UPDATE <table> SET <column> = <column> * <pourcentage voulu (1.1 ou 0,9 par exemple)> WHERE <column_condition> = <value_condition>;
UPDATE Logiciel SET prix = prix * 0.9 WHERE typeLog = "PCNT";