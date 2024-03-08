SELECT
  orders_id,
  date_date,
  ROUND(SUM(turnover),2) as turnover,
  ROUND(SUM(qty),2) as qty,
  ROUND(SUM(purchase_cost),2) as purchase_cost,
  ROUND(SUM(margin),2) as margin
FROM {{ ref("int_sales_margin") }}
GROUP BY orders_id,date_date
ORDER BY orders_id DESC


