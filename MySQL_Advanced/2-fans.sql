-- Make a table
-- Calculate/compute something is always power intensive… better to distribute the load!

SELECT 
    origin, 
    SUM(nb_fans) AS total_fans
FROM 
    metal_bands
GROUP BY 
    origin
ORDER BY 
    total_fans DESC;
