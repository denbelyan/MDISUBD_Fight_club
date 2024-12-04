select DISTINCT (Location.Name),
    COUNT(Fights.id) OVER (PARTITION BY Location.id) AS Fight_Count
FROM Fights
JOIN Location ON Fights.Location_id = Location.id
