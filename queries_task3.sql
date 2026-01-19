use sample1;
select * from football_matches_2024_2025 limit 10 ;
select count(*) as total_matches from football_matches_2024_2025;
select * from football_matches_2024_2025 where competition_name='premier league';
select * from football_matches_2024_2025 order by total_goals desc;
DESCRIBE football_matches_2024_2025;
--Sort Matches by Total Goals (Highest First)--
SELECT 
    home_team,
    SUM(fulltime_home) AS total_home_goals
FROM football_matches_2024_2025
GROUP BY home_team
ORDER BY total_home_goals DESC;
--Total Goals Scored by Each Home Team--
SELECT 
    home_team,
    SUM(fulltime_home) AS total_home_goals
FROM football_matches_2024_2025
GROUP BY home_team
ORDER BY total_home_goals DESC;
--Average Goals per Match--
SELECT 
    AVG(total_goals) AS avg_goals_per_match
FROM football_matches_2024_2025;
--Teams with More Than 50 Total Goals (HAVING)--
SELECT 
    home_team,
    SUM(total_goals) AS total_goals
FROM football_matches_2024_2025
GROUP BY home_team
HAVING total_goals > 50;
--Matches Played Between Two Dates--
SELECT *
FROM football_matches_2024_2025
WHERE date_utc BETWEEN '2024-08-01' AND '2024-09-01';
--Search Teams Using LIKE--
SELECT *
FROM football_matches_2024_2025
WHERE home_team LIKE '%United%';
--Top 5 Highest Scoring Matches--
SELECT 
    home_team,
    away_team,
    total_goals
FROM football_matches_2024_2025
ORDER BY total_goals DESC
LIMIT 5;
