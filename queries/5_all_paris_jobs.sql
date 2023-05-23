# Écris une requêtes SQL qui retourne toutes les offres d'emploi proposées à Paris (ville)

SELECT o.*
FROM offer AS o
WHERE city = 'Paris';