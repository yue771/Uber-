-- Query_14B_每公里收入分析（防除零）

SELECT
    ROUND(
        AVG(
            fare_amount /
            NULLIF(distance_km,0)
        )
    ,2) AS revenue_per_km
FROM uber_trips_dataset_50k;