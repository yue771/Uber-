SELECT
    city,
    ROUND(SUM(fare_amount),2) AS city_gmv
FROM uber_trips_dataset_50k
GROUP BY city
ORDER BY city_gmv DESC;