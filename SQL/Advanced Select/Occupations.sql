SET @d=0, @p=0, @s=0, @a=0;

SELECT min(Doctor), min(Professor), min(Singer), min(Actor)
FROM(
  SELECT case 
            when Occupation='Doctor' then (@d:=@d+1)
            when Occupation='Professor' then (@p:=@p+1)
            when Occupation='Singer' then (@s:=@s+1)
            when Occupation='Actor' then (@a:=@a+1) 
            end AS Row,
        case when Occupation='Doctor' then Name end AS Doctor,
        case when Occupation='Professor' then Name end AS Professor,
        case when Occupation='Singer' then Name end AS Singer,
        case when Occupation='Actor' then Name end AS Actor
  FROM OCCUPATIONS
  ORDER BY Name
) AS temp
GROUP BY Row;
