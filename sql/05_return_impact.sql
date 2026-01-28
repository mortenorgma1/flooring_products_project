-- For each country, calculated lost revenue and lost revenue percentage where order status is 'Returned'.

SELECT
	O.COUNTRY,
	ROUND(
		SUM(
			CASE
				WHEN O.STATUS = 'Returned' THEN OI.UNITS * OI.UNIT_PRICE * (1 - OI.DISCOUNT)
				ELSE 0
			END
		),
		2
	) AS LOST_REVENUE,
	CONCAT(
		ROUND(
			(
				SUM(
					CASE
						WHEN O.STATUS = 'Returned' THEN OI.UNITS * OI.UNIT_PRICE * (1 - OI.DISCOUNT)
						ELSE 0
					END
				) / SUM(OI.UNITS * OI.UNIT_PRICE * (1 - OI.DISCOUNT))
			) * 100,
			2
		),
		'%'
	) AS LOST_REVENUE_PRC
FROM
	ORDERS O
	JOIN ORDER_ITEMS OI ON O.ORDER_ID = OI.ORDER_ID
GROUP BY
	O.COUNTRY
ORDER BY
	LOST_REVENUE DESC