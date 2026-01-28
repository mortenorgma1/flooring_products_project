-- Calculated average order value by each channel, ordered by highest average order value where order status is 'Delivered'.

SELECT
	O.CHANNEL,
	ROUND(
		SUM(OI.UNITS * OI.UNIT_PRICE * (1 - OI.DISCOUNT)) / COUNT(DISTINCT O.ORDER_ID),
		2
	) AS AVG_ORDER_VALUE
FROM
	ORDERS O
	JOIN ORDER_ITEMS OI ON O.ORDER_ID = OI.ORDER_ID
WHERE
	O.STATUS = 'Delivered'
GROUP BY
	O.CHANNEL
ORDER BY
	AVG_ORDER_VALUE DESC