SELECT COUNT(*)
FROM trips;


SELECT cab_type,
	COUNT(*) AS total_cabs
FROM trips
GROUP BY cab_type;


SELECT passenger_count,
	AVG(total_amount) AS avg_amt_passenger_count
FROM trips
GROUP BY passenger_count;


SELECT passenger_count,
       EXTRACT(year from pickup_datetime),
       COUNT(*)
FROM trips
GROUP BY passenger_count,
         extract(year FROM pickup_datetime);


SELECT passenger_count,
       extract(year from pickup_datetime) AS year_pickup,
       cast(trip_distance as int) AS trip_distance,
       count(*) AS passengers_per_year_by_distance
FROM trips
GROUP BY passenger_count,
         EXTRACT(year FROM pickup_datetime),
         CAST(trip_distance AS INT)
ORDER BY EXTRACT(year FROM pickup_datetime),
         COUNT(*) DESC;