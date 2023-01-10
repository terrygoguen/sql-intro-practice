-- How many lifetime hits does Barry Bonds have?

--SELECT SUM(hits)
--FROM stats INNER JOIN players ON players.id = stats.player_id
--WHERE first_name = "Barry" AND last_name = "Bonds";

SELECT players.last_name, SUM(stats.hits)
FROM players 
INNER JOIN stats ON stats.player_id = players.id 
WHERE first_name = "Barry" AND last_name = "Bonds";


-- Expected result:
-- 2935


