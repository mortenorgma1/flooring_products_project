--- Calculated number of orders and total units sold for each individual day where order status is 'Delivered' and displayed total net revenue.

SELECT
	O.ORDER_DATE,
	COUNT(DISTINCT O.ORDER_ID) AS NUMBER_OF_ORDERS,
	SUM(OI.UNITS) AS TOTAL_UNITS_SOLD,
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