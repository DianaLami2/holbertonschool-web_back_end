-- Sort data
-- SQL script that lists all bands with Glam rock as their main style, ranked by their longevity

USE metal_bands;


DROP TABLE IF EXISTS band_lifespans;

CREATE TABLE band_lifespans AS

SELECT name AS band_name, IFNULL(YEAR(split) - YEAR(formed), YEAR(CURDATE()) - YEAR(formed)) AS lifespan FROM metal_bands WHERE main_style = 'Glam rock';

SELECT band_name, lifespan FROM band_lifespans ORDER BY lifespan DESC;
