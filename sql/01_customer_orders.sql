-- Calculated customers with total orders and displayed orders returned for each customer.

SELECT
	O.CUSTOMER_ID,
	COUNT(DISTINCT O.ORDER_ID) AS TOTAL_ORDERS,
	COUNT(
		CASE
			WHEN O.STATUS = 'Returned' THEN 1
		END
	) AS RETURNED_ORDERS
FROM
	ORDERS O
GROUP BY
	O.CUSTOMER_ID
HAVING
	COUNT(DISTINCT O.ORDER_ID) > 1
	OR COUNT(
		CASE
			WHEN O.STATUS = 'Returned' THEN 1
		END
	) >= 1
ORDER BY
	TOTAL_ORDERS
