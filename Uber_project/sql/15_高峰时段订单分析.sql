SELECT
    DATEPART(HOUR,pickup_time) AS order_hour,
    COUNT(*) AS order_count
FROM uber_trips_dataset_50k
GROUP BY DATEPART(HOUR,pickup_time)
ORDER BY order_hour;