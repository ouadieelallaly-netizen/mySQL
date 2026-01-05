SELECT titre
FROM Article
ORDER BY date_pub DESC
LIMIT 5;

SELECT id_utilisateur, COUNT(*) AS nb_articles
FROM Article
GROUP BY id_utilisateur
HAVING COUNT(*) >= 3;

SELECT a.titre, u.nom, c.contenu
FROM Article a
INNER JOIN Utilisateur u ON a.id_utilisateur = u.id
INNER JOIN Commentaire c ON a.id = c.id_article;

INSERT INTO Utilisateur (nom, email, mot_de_passe)
VALUES 
  ('Bob', 'bob@test.com', 'passbob'),
  ('Charlie', 'charlie@test.com', 'passcharlie');

UPDATE Utilisateur
SET nom = 'Alice Dupont', email = 'alice.dupont@test.com'
WHERE id = 1;

START TRANSACTION;

-- Ajout d’un article
INSERT INTO Article (titre, contenu, date_pub, id_utilisateur)
VALUES ('Nouveau post', 'Texte exemple', '2025-07-18', 1);

-- Mise à jour d’un utilisateur
UPDATE Utilisateur
SET email = 'alice.update@test.com'
WHERE id = 1;

-- Suppression d’un commentaire
DELETE FROM Commentaire WHERE id = 3;

COMMIT; -- ou ROLLBACK en cas d’erreur

