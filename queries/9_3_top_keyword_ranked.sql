SELECT 
    k.keyword,
    COUNT(km.film_id) AS num_associations
FROM 
    keywords k
JOIN 
    movie_metadata km ON k.id = km.keyword_id
GROUP BY 
    k.id
ORDER BY 
    num_associations DESC;
