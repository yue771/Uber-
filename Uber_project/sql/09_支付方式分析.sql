SELECT
    payment_method,
    COUNT(*) AS order_count
FROM uber_trips_dataset_50k
GROUP BY payment_method
ORDER BY order_count DESC;