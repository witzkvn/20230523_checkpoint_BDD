# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à l'offre
# intitulée "Dev"

SELECT c.*
FROM candidate AS c
JOIN candidate_offer AS co ON c.Id_candidate = co.Id_candidate
JOIN offer AS o ON co.Id_offer = o.Id_offer
WHERE o.title = 'Dev';