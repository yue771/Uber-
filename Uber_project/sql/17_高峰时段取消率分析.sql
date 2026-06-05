SELECT
    DATEPART(HOUR,pickup_time) AS order_hour,

    ROUND(
        COUNT(
            CASE
                WHEN status <> 'Completed'
                THEN 1
            END
        ) * 100.0
        / COUNT(*)
    ,2) AS cancel_rate

FROM uber_trips_dataset_50k

GROUP BY DATEPART(HOUR,pickup_time)

ORDER BY cancel_rate DESC;