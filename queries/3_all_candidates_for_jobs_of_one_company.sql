# Écris une requêtes SQL qui retourne tous les candidats ayant répondu à 
# au moins une offre d'une entreprise identifiée par son nom

SELECT c.*
FROM candidate AS c
JOIN candidate_offer AS co ON c.Id_candidate = co.Id_candidate
JOIN offer AS o ON co.Id_offer = o.Id_offer
JOIN business AS b ON o.Id_business = b.Id_business
WHERE b.name = 'WCS'; 