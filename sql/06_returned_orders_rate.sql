-- Calculated total orders and returned orders for each country, displayed return rate as percentage of returned orders.

SELECT
	O.COUNTRY,
	COUNT(DISTINCT O.ORDER_ID) AS TOTAL_ORDERS,
	COUNT(
		CASE
			WHEN O.STATUS = 'Returned' THEN 1
		END
	) AS RETURNED_ORDERS,
	CONCAT(
		ROUND(
			COUNT(
				CASE
					WHEN O.STATUS = 'Returned' THEN 1
				END
			)::NUMERIC / COUNT(DISTINCT O.ORDER_ID) * 100,
			2
		),
		'%'
	) AS RETURN_RATE
FROM
	ORDERS O
GROUP BY
	O.COUNTRY
ORDER BY
	RETURN_RATE DESC