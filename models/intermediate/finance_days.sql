SELECT
    date_date
    ,COUNT(orders_id) AS nb_transactions
    ,ROUND(SUM(turnover),0) AS turnover
    ,ROUND(AVG(turnover),1) AS average_basket
    ,ROUND(SUM(turnover)/COUNT(orders_id),1) AS average_basket_bis
    ,ROUND(SUM(margin),0) AS margin
    ,ROUND(SUM(purchase_cost),0) AS purchase_cost 
    ,ROUND(SUM(shipping_fee),0) AS shipping_fee 
    ,ROUND(SUM(log_cost),0) AS logcost 
    ,ROUND(SUM(cast(ship_cost as float64)),0) AS ship_cost 
    ,SUM(qty) AS qty 
FROM {{ref("int_orders_operational")}}
GROUP BY  date_date
ORDER BY  date_date DESC
