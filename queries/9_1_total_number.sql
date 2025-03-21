SELECT 
    (SELECT COUNT(*) FROM films) AS total_movies,
    (SELECT COUNT(*) FROM planets) AS total_planets,
    (SELECT COUNT(*) FROM people) AS total_people;
