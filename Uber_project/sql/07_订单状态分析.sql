SELECT
    status,
    COUNT(*) AS order_count
FROM uber_trips_dataset_50k
GROUP BY status
ORDER BY order_count DESC;