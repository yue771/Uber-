SELECT
    DATEPART(HOUR,pickup_time) AS order_hour,
    ROUND(SUM(fare_amount),2) AS hour_gmv
FROM uber_trips_dataset_50k
GROUP BY DATEPART(HOUR,pickup_time)
ORDER BY order_hour;