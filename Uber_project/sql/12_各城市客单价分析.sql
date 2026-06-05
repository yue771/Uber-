SELECT
    city,
    ROUND(AVG(fare_amount),2) AS avg_fare
FROM uber_trips_dataset_50k
GROUP BY city
ORDER BY avg_fare DESC;