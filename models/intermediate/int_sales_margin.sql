SELECT 
    s.products_id, 
    s.date_date, 
    s.orders_id,
    s.revenue, 
    s.quantity, 
    CAST(p.purchase_price AS float64) AS purchase_price, 
    ROUND(s.quantity * CAST(p.purchase_price AS float64), 2) AS purchase_cost,
    ROUND(s.revenue - s.quantity * CAST(p.purchase_price AS float64), 0) AS margin
FROM {{ ref("stg_gz_raw_data__sales") }} s
LEFT JOIN {{ ref("stg_gz_raw_data__product") }} p 
    ON s.products_id = p.products_id;
