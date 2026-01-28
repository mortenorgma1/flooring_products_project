-- Calculated total net revenue for each day where order status is 'Delivered'.

SELECT
	O.ORDER_DATE,
	ROUND(
		SUM(OI.UNITS * OI.UNIT_PRICE * (1 - OI.DISCOUNT)),
		2
	) AS TOTAL_NET_REVENUE
FROM
	ORDERS O
	JOIN ORDER_ITEMS OI ON O.ORDER_ID = OI.ORDER_ID
WHERE
	O.STATUS = 'Delivered'
GROUP BY
	O.ORDER_DATE
ORDER BY
	O.ORDER_DATE