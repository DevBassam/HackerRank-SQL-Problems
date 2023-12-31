SELECT H.HACKER_ID, H.NAME
FROM HACKERS AS H
INNER JOIN SUBMISSIONS AS S
USING(HACKER_ID)
INNER JOIN CHALLENGES AS CH
USING(CHALLENGE_ID)
INNER JOIN DIFFICULTY AS D
USING(DIFFICULTY_LEVEL)
WHERE S.SCORE = D.SCORE AND CH.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
GROUP BY H.HACKER_ID, H.NAME
HAVING COUNT(H.HACKER_ID) > 1
ORDER BY COUNT(H.HACKER_ID) DESC, HACKER_ID ASC
