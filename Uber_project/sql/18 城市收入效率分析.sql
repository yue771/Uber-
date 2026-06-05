SELECT
    city,
    ROUND(
        SUM(fare_amount) /
        SUM(distance_km)
    ,2) AS revenue_per_km
FROM uber_trips_dataset_50k
WHERE distance_km > 0
GROUP BY city
ORDER BY revenue_per_km DESC;