SELECT n, CASE WHEN p IS NULL THEN 'Root' 
           WHEN n IN (SELECT distinct p FROM bst) THEN 'Inner'
           ELSE 'Leaf' END
FROM bst
ORDER BY n
