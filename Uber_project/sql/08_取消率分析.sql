SELECT
    ROUND(
        COUNT(
            CASE
                WHEN status <> 'Completed'
                THEN 1
            END
        ) * 100.0
        / COUNT(*)
    ,2) AS cancel_rate
FROM uber_trips_dataset_50k;