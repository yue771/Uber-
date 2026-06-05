SELECT
    city,
    COUNT(*) AS order_count
FROM uber_trips_dataset_50k
GROUP BY city
ORDER BY order_count DESC;