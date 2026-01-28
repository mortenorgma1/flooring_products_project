-- Displayed top 5 customers by total revenue, having order status 'Delivered'.

SELECT
	O.CUSTOMER_ID,
	ROUND(
		SUM(OI.UNITS * OI.UNIT_PRICE * (1 - OI.DISCOUNT)),
		2
	) AS TOTAL_REVENUE
FROM
	ORDERS O
	JOIN ORDER_ITEMS OI ON O.ORDER_ID = OI.ORDER_ID
WHERE
	O.STATUS = 'Delivered'
GROUP BY
	O.CUSTOMER_ID
ORDER BY
	TOTAL_REVENUE DESC
LIMIT
	5