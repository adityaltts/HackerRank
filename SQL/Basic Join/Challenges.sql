SELECT H.hacker_id, H.name, count(C.challenge_id) AS total_count
FROM Hackers H JOIN Challenges C
ON H.hacker_id = C.hacker_id
GROUP BY H.hacker_id, H.name
HAVING total_count = 
(
SELECT count(temp1.challenge_id) AS max_count
    FROM challenges temp1
    GROUP BY temp1.hacker_id
    ORDER BY max_count DESC
    LIMIT 1
)
OR total_count IN
(
SELECT DISTINCT other_counts FROM (
SELECT H2.hacker_id, H2.name, count(C2.challenge_id) AS other_counts
FROM Hackers H2 JOIN Challenges C2
ON H2.hacker_id = C2.hacker_id
GROUP BY H2.hacker_id, H2.name
) temp2
    GROUP BY other_counts
HAVING count(other_counts) =1)
ORDER BY total_count DESC, H.hacker_id;