
Search

--USE DATABASE OLIST_DB;

--CREATE SCHEMA IF NOT EXISTS MART;

USE SCHEMA MART;

CREATE OR REPLACE TABLE OLIST_DB.MART.FACT_SALES AS
WITH order_item_check AS (
    SELECT
        oi.order_id,
        oi.order_item_id,
        oi.product_id,
        o.customer_id,
        o.order_status,
        o.order_purchase_timestamp,
        oi.price,
        oi.freight_value
    FROM OLIST_DB.RAW.RAW_ORDER_ITEM oi
    JOIN OLIST_DB.RAW.RAW_ORDERS o
        ON oi.order_id = o.order_id
),

order_total_price AS (
    SELECT
        order_id,
        SUM(price) AS total_order_price
    FROM OLIST_DB.RAW.RAW_ORDER_ITEM
    GROUP BY order_id
),

order_payment AS (
    SELECT
        order_id,

PRICE_INVALID	MISSING_CUSTOMER
0	0
	
	
