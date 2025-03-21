SELECT 
    f.title,
    COUNT(km.keyword_id) AS num_keywords
FROM 
    films f
JOIN 
    movie_metadata km ON f.id = km.film_id
GROUP BY 
    f.id
ORDER BY 
    num_keywords DESC
LIMIT 3;
