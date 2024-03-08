SELECT
*,
FROM {{ref("int_orders_margin")}} o
LEFT JOIN {{ref("stg_gz_raw_data__ship")}} s 
  USING (orders_id)
