SELECT
    rider_id,
    COUNT(*) AS order_count,
    ROUND(SUM(fare_amount),2) AS total_spend
FROM uber_trips_dataset_50k
GROUP BY rider_id
ORDER BY total_spend DESC;