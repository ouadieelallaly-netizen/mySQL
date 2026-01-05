START TRANSACTION;

INSERT INTO Article (titre, contenu, date_pub, id_utilisateur)
VALUES ('Nouveau post', 'Texte exemple', '2025-07-18', 1);

UPDATE Utilisateur
SET email = 'alice.update@test.com'
WHERE id = 1;

DELETE FROM Commentaire WHERE id = 3;

COMMIT;

SELECT * FROM Article;
