SELECT 
    rp.name AS rating_provider,
    f.title,
    r.rating_value
FROM 
    ratings r
JOIN 
    films f ON r.film_id = f.id
JOIN 
    rating_providers rp ON r.rating_provider_id = rp.id
WHERE 
    (r.rating_provider_id, r.rating_value) IN (
        SELECT 
            r.rating_provider_id, MAX(r.rating_value)
        FROM 
            ratings r
        GROUP BY 
            r.rating_provider_id
    )
ORDER BY 
    rp.name;
