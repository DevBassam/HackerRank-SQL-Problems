SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^[aioueAOIUE]' AND CITY REGEXP '[aioueAOIUE]$'
